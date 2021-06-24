import 'package:equatable/equatable.dart';

class ContributorEntity extends Equatable {
  final String nick;
  final String avatarUrl;
  final int contributions;

  ContributorEntity({
    required this.nick,
    required this.avatarUrl,
    required this.contributions,
  });

  @override
  List<Object> get props => [nick, avatarUrl, contributions];

  @override
  bool get stringify => true;
}
