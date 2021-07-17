import 'package:dicoding_movie_app/core/di/usecase_di.dart';
import 'package:dicoding_movie_app/ui/page/list/list_vm.dart';

class VmDi {
  VmDi._();

  static ListVm get listVm => ListVm(
    getTrendingList: UseCaseDi.getTrendingList,
    getMoviePopularList: UseCaseDi.getMoviePopularList,
    getTvPopularList: UseCaseDi.getTvPopularList,
  );
}