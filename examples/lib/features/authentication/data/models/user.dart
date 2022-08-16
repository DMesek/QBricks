import 'package:equatable/equatable.dart';

part 'user.g.dart';

/// {@template user}
/// User description
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({ 
    required this.id,
    required this.name,
    required this.friends,
  });

  /// Creates a User from Json map
  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  /// A description for id
  final String id;
  /// A description for name
  final String name;
  /// A description for friends
  final List<String> friends;

  /// Creates a copy of the current User with property changes
  User copyWith({ 
    String? id,
    String? name,
    List<String>? friends,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      friends: friends ?? this.friends,
    );
  }
  
  @override
  List<Object?> get props => [
        id,
        name,
        friends,
      ];

  /// Creates a Json map from a User
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
