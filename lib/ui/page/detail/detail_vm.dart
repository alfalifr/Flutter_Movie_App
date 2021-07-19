import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/core/domain/model/movie_detail.dart';
import 'package:dicoding_movie_app/core/domain/usecase/detail_usecase.dart';
import 'package:viewmodel/domain/model/result.dart';
import 'package:viewmodel/ui/base/async_vm.dart';
import 'package:viewmodel/ui/base/live_data.dart';

class DetailVm extends AsyncVm {
  static const getDetailKey = "getDetail";

  DetailVm({
    required GetDetail getDetail,
  }):
    _getDetail = getDetail
  ;
  final GetDetail _getDetail;

  final MutableLiveData<MovieDetail> _detail = MutableLiveData();
  LiveData<MovieDetail> get detail => _detail;

  final MutableLiveData<Movie> _currentMovie = MutableLiveData();
  LiveData<Movie> get currentMovie => _currentMovie;

  @override
  List<LiveData> get liveDatas => [_detail, _currentMovie];


  void getDetail({
    required Movie movie,
    bool forceLoad = false,
  }) {
    if(!forceLoad && movie == _currentMovie.value) return;
    startJob(getDetailKey, (isActive) async {
      final res = await _getDetail(movie);
      if(res is Success<MovieDetail>) {
        final data = res.data;
        _currentMovie.value = movie;
        _detail.value = data;
      } else {
        return res as Fail;
      }
    });
  }
}