import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_app/with%20cubit/apiSatae.dart';

class ApiCubit extends Cubit<ApidataFetchState> {
  ApiCubit(super.initialState);
  Dio _dio = Dio(BaseOptions());
  void datafetch() async {
    try {
      final response = await _dio.get(
          'https://pixabay.com/api/?key=28297489-ca994aec319f1f42c6ccb2cec&q=yellow+flowers&image_type=photo');
      if (response.statusCode == 200) {
        final body = response.data;
        final List hits = body['hits'];
        
      }
    } catch (e) {}
  }
}
