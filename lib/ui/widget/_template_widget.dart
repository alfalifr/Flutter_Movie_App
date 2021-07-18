import 'dart:math';
import 'dart:ui';

import 'package:dicoding_movie_app/ui/widget/default_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:viewmodel/ui/base/live_data.dart';
import 'package:viewmodel/ui/base/live_data_observer.dart';
import 'package:viewmodel/util/_consoles.dart';



class CollapsingBlur extends StatelessWidget {
  final MutableLiveData<double> controller = MutableLiveData();
  final ScrollController scrollController;
  final Alignment childAlignment;
  final double? maxHeight;
  final Widget child;

  CollapsingBlur({
    required this.scrollController,
    required this.child,
    this.childAlignment = Alignment.center,
    this.maxHeight,
  });

  @override
  Widget build(BuildContext context) {
    var providedHeight = MediaQuery.of(context).size.height;
    if(maxHeight != null && providedHeight > maxHeight!) {
      providedHeight = maxHeight!;
    }
    controller.value = providedHeight;
    //prind("providedHeight = $providedHeight");

    scrollController.addListener(() {
      if (controller.isActive) {
        final newOff = providedHeight - scrollController.offset;
        //prind("newOff = $newOff");
        if (newOff >= 0) {
          controller.value = newOff;
        } else if (controller.value != 0) {
          controller.value = 0;
        }
      }
    });
    //var blur = providedHeight;// - (height ?? 0);
    return LiveDataObserver<double>(
      liveData: controller,
      isLiveDataOwner: true,
      builder: (ctx, height) {
        final blur = providedHeight - (height ?? 0);
        //prind("height= $height blur= $blur");

        return height != null ? height > 0 ? Listener(
          onPointerSignal: (signal) async {
            //prind("signal = $signal");
            if(signal is PointerScrollEvent) {
              final scrollY = signal.scrollDelta.dy;
              final newHeight = scrollController.offset +scrollY;

              if(newHeight >= 0) {
                scrollController.jumpTo(newHeight);
              }// else {scrollController.jumpTo(newHeight);}
            }
          },
          child: GestureDetector(
            onPanUpdate: (dragDetail) {
              prind("dragDetail= $dragDetail");
              final scrollY = dragDetail.delta.dy;
              final newHeight = scrollController.offset -scrollY;
              //final pageScroll = scrollController.offset;
              prind("scrollY= $scrollY newHeight= $newHeight ");
              if(newHeight >= 0) {
                scrollController.jumpTo(newHeight);
              }// else {scrollController.jumpTo(newHeight);}
            },
            child: ClipRRect(
              child: Container(
                height: height,
                child: Stack(
                  children: [
                    Align(
                      alignment: childAlignment,
                      child: child,
                    ),
                    blur > 0 ? BackdropFilter(
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
