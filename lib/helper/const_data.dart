sealed class ConstData {
  static const double _lat = 40.6828;
  static const double _lon = 46.3606;
  static const String _apiKey = "6dcfbc156d114a709af63bbf66b423e9";
  static const String _include = "minutely";
  static const String url =
      "https://api.weatherbit.io/v2.0/current?lat=$_lat&lon=$_lon&key=$_apiKey&include=$_include";
}
