part of 'routes.dart';

class PageRoute<ArgType> {
  final String path;

  const PageRoute(this.path);

  Future<T?> push<T extends Object?>(
    BuildContext context, {
    required ArgType arguments,
  }) {
    return Navigator.of(context).pushNamed(path, arguments: arguments);
  }
}

class NoArgs {
  const NoArgs();
}

const noArgs = NoArgs();
