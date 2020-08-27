part of algolia;

class Response {
  final String body;

  Response(this.body);
}

Future<Response> get(String url, {Map<String, String> headers}) async {
  HttpRequest request = await HttpRequest.request(url, requestHeaders: headers);
  return Response(request.response);
}

Future<Response> post(String url, {Map<String, String> headers, List<int> body, Encoding encoding,}) async {
  HttpRequest request = await HttpRequest.request(url, method: 'POST', requestHeaders: headers, sendData: body);
  return Response(request.response);
}

Future<Response> put(String url, {Map<String, String> headers, List<int> body, Encoding encoding,}) async {
  HttpRequest request = await HttpRequest.request(url, method: 'PUT', requestHeaders: headers, sendData: body);
  return Response(request.response);
}

Future<Response> delete(String url, {Map<String, String> headers}) async {
  HttpRequest request = await HttpRequest.request(url, method: 'DELETE', requestHeaders: headers);
  return Response(request.response);
}