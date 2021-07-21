import 'dart:math';
import 'dart:ui';

import 'package:dicoding_movie_app/ui/widget/default_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:viewmodel/ui/base/expirable.dart';
import 'package:viewmodel/ui/base/live_data.dart';
import 'package:viewmodel/ui/base/live_data_observer.dart';
import 'package:viewmodel/util/_consoles.dart';


class CollapsingBlur extends StatefulWidget {
  final ScrollController scrollController;
  final MutableLiveData<double> maxHeightController;
  final Alignment childAlignment;
  final Widget child;
  final void Function()? onTap;

  CollapsingBlur({
    required this.scrollController,
    required this.maxHeightController,
    required this.child,
    this.onTap,
    this.childAlignment = Alignment.center,
  });

  @override
  _CollapsingBlurState createState() => _CollapsingBlurState(
    scrollController: scrollController,
    maxHeightController: maxHeightController,
    child: child,
    childAlignment: childAlignment,
    onTap: onTap,
  );
}

class _CollapsingBlurState
    extends State<CollapsingBlur>
    implements Expirable
{
  final MutableLiveData<double> controller = MutableLiveData();
  final MutableLiveData<double> maxHeightController;
  final ScrollController scrollController;
  final Alignment childAlignment;
  final Widget child;
  final void Function()? onTap;

  _CollapsingBlurState({
    required this.scrollController,
    required this.maxHeightController,
    required this.child,
    required this.childAlignment,
    required this.onTap,
  });

  bool _isActive = true;
  @override
  bool get isActive => _isActive;

  @override
  void initState() {
    maxHeightController.observe(this, (maxHeight) {
      controller.value = maxHeight;
    });
    if(maxHeightController.value != null) {
      controller.value = maxHeightController.value;
    }
    scrollController.addListener(() {
      if (controller.isActive) {
        final providedHeight = maxHeightController.value;
        if(providedHeight != null) {
          final newOff = providedHeight - scrollController.offset;
          if (newOff >= 0) {
            controller.value = newOff;
          } else if (controller.value != 0) {
            controller.value = 0;
          }
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _isActive = false;
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiLiveDataObserver<double>(
      liveDataList: [maxHeightController, controller,],
      isLiveDataOwner: true,
      builder: (ctx, heights) {
        final height = heights[1];
        final providedHeight = heights[0];
        if(providedHeight == null) {
          return defaultLoading();
        }
        final blur = providedHeight - (height ?? 0);
        final screenSize = MediaQuery.of(ctx).size;
        prind("CollapsingBlur height= $height providedHeight= $providedHeight blur= $blur screenSize= $screenSize");

        return height != null ? height > 0 ? Listener(
          onPointerSignal: (signal) async {
            if(signal is PointerScrollEvent) {
              final scrollY = signal.scrollDelta.dy;
              final newHeight = scrollController.offset +scrollY;

              if(newHeight >= 0) {
                scrollController.jumpTo(newHeight);
              }
            }
          },
          child: GestureDetector(
            onTap: onTap,
            onPanUpdate: (dragDetail) {
              prind("dragDetail= $dragDetail");
              final scrollY = dragDetail.delta.dy;
              final newHeight = scrollController.offset -scrollY;
              prind("scrollY= $scrollY newHeight= $newHeight ");
              if(newHeight >= 0) {
                scrollController.jumpTo(newHeight);
              }
            },
            child: ClipRRect(
              child: Container(
                height: height,
                child: Stack(
                  children: [
                    Container(color: Colors.transparent,), // This will make empty space draggable
                    Align(
                      alignment: childAlignment,
                      child: Container(
                        height: providedHeight,
                        child: child,
                      ),
                    ),
                    blur > 0.1 ? BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: blur,
                        sigmaY: blur,
                      ),
                      child: Container(
                        color: Colors.transparent,
                      ),
                    ) : defaultEmptyWidget(),
                  ],
                ),
              ),
            ),
          ),
        ) : defaultEmptyWidget() : defaultLoading();
      },
    );
  }
}
