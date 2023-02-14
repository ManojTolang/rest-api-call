abstract class ApidataFetchState {}

class DataFetchInitialSatae extends ApidataFetchState {}

class DataFetchLoadingState extends ApidataFetchState {
  final String message;

  DataFetchLoadingState(this.message);
}

class DataFetchErrorState extends ApidataFetchState {
  final String errormesage;

  DataFetchErrorState(this.errormesage);
}

class DatafetchSuccessState extends ApidataFetchState {
  final List data;

  DatafetchSuccessState({required this.data});
}
