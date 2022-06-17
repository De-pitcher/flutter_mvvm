import 'package:flutter/material.dart';
import 'package:mvvm_flutter/data/response/api_response.dart';
import 'package:mvvm_flutter/models/movies_main.dart';
import 'package:mvvm_flutter/repository/movie_repo_imp.dart';

class MoviesListVM extends ChangeNotifier {
  final _myRepo = MovieRepoImp();

  ApiResponse<MoviesMain> movieMain = ApiResponse.loading();

  void _setMovieMain(ApiResponse<MoviesMain> response) {
    debugPrint("MARAJ :: $response");
    movieMain = response;
    notifyListeners();
  }

  Future<void> fetchMovies() async {
    _setMovieMain(ApiResponse.loading());
    _myRepo
        .getMoviesList()
        .then((value) => _setMovieMain(ApiResponse.completed(value)))
        .onError((error, stackTrace) =>
            _setMovieMain(ApiResponse.error(error.toString())));
  }
}
