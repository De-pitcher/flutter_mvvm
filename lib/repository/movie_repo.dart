import 'package:mvvm_flutter/models/movies_main.dart';

abstract class MovieRepo {
  Future<MoviesMain?> getMoviesList();
}
