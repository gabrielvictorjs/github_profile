import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String nick;
  final String name;
  final String avatarUrl;
  final String bio;

  UserEntity({
    required this.nick,
    required this.name,
    required this.avatarUrl,
    required this.bio,
  });

  @override
  List<Object> get props => [nick, name, avatarUrl, bio];

  @override
  bool get stringify => true;
}
