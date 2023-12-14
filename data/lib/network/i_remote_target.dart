abstract class ITargetType {
  String? path;
  dynamic requestParameters;
  Map<String, dynamic> headers = {};
  HttpMethod method = HttpMethod.get;
}

enum HttpMethod {
  get("GET"),
  put("PUT"),
  delete("DELETE"),
  post("POST");

  final String value;

  const HttpMethod(this.value);
}