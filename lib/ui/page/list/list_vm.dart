import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/core/domain/usecase/list_usecase.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:viewmodel/domain/model/result.dart';
import 'package:viewmodel/ui/base/async_vm.dart';
import 'package:viewmodel/ui/base/live_data.dart';

class ListVm extends AsyncVm {
  static const getPopularListKey = "getPopularList";
  static const getTrendingListKey = "getTrendingList";

  ListVm({
    required GetTrendingList getTrendingList,
    required GetMoviePopularList getMoviePopularList,
    required GetTvPopularList getTvPopularList,
  }):
    _getTrendingList = getTrendingList,
    _getMoviePopularList = getMoviePopularList,
    _getTvPopularList = getTvPopularList
  ;
  final GetTrendingList _getTrendingList;
  final GetMoviePopularList _getMoviePopularList;
  final GetTvPopularList _getTvPopularList;

  final MutableLiveData<List<Movie>> _popularList = MutableLiveData();
  LiveData<List<Movie>> get popularList => _popularList;

  final MutableLiveData<List<Movie>> _trendingList = MutableLiveData();
  LiveData<List<Movie>> get trendingList => _trendingList;

  String? _currentType;

  @override
  List<LiveData> get liveDatas => [_popularList, _trendingList];

  void getPopularList({
    required String type,
    bool forceLoad = false,
  }) {
    if(!forceLoad && type == _currentType) return;
    startJob(getPopularListKey, (isActive) async {
      Result<List<Movie>> res;
      switch(type) {
        case Const.KEY_MOVIE: res = await _getMoviePopularList();
          break;
        case Const.KEY_TV: res = await _getTvPopularList();
          break;
        default: throw "No such `type` of '$type'";
      }

      if(res is Success<List<Movie>>) {
        final data = res.data;
        _popularList.value = data;
      } else {
        return res as Fail;
      }
      _currentType = type;
    });
  }

  void getTrendingList({ bool forceLoad = false, }) {
    if(!forceLoad && _trendingList.value != null) return;
    startJob(getTrendingListKey, (isActive) async {
      final res = await _getTrendingList();
      if(res is Success<List<Movie>>) {
        final data = res.data;
        _trendingList.value = data;
      } else {
        return res as Fail;
      }
    });
  }
}