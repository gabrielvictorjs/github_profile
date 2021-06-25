import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

final githubHttpClientProvider = Provider((ref) => GithubHttpClient());

class GithubHttpClient extends BaseClient {
  final Client _inner;

  GithubHttpClient({
    Client? inner,
  }) : _inner = inner ?? Client();

  @override
  Future<StreamedResponse> send(covariant Request request) async {
    final baseUri = Uri.parse('https://api.github.com');
    final baseUrlWithResources = request.url.replace(
      scheme: baseUri.scheme,
      host: baseUri.host,
      port: baseUri.port,
      path: '${baseUri.path}${request.url.path}',
    );

    final newBaseRequest = Request(request.method, baseUrlWithResources);
    newBaseRequest.body = request.body;
    newBaseRequest.headers.addAll({
      ...request.headers,
      'content-type': 'application/json',
      'Accept': 'application/json',
    });

    return _inner.send(newBaseRequest);
  }
}
