class ApiException {
  final int? statusCode;
  final String message;

  ApiException({this.statusCode, required this.message});
}

class NoInternetConnectionException extends ApiException {
  NoInternetConnectionException() : super(message: "No Internet Connection");
}
