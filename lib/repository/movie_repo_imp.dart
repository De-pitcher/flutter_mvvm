import 'package:flutter/material.dart';
import 'package:mvvm_flutter/data/network/api_end_points.dart';
import 'package:mvvm_flutter/data/network/base_api_service.dart';
import 'package:mvvm_flutter/data/network/network_service_api.dart';
import 'package:mvvm_flutter/models/movies_main.dart';
import 'package:mvvm_flutter/repository/movie_repo.dart';

class MovieRepoImp implements MovieRepo {
  final BaseApiService _apiService = NetworkApiService();

  @override
  Future<MoviesMain?> getMoviesList() async {
    try {
      dynamic response =
          await _apiService.getResponse(ApiEndPoints().getMovies);
      debugPrint("MARAJ $response");
      final jsonData = MoviesMain.fromJson(response);
      return jsonData;
    } catch (e) {
      debugPrint("MARAJ-E $e}");
      rethrow;
    }
  }
}
