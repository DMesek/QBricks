import 'package:freezed_annotation/freezed_annotation.dart';

part '{{entity.snakeCase()}}_response.g.dart';

@JsonSerializable()
class {{entity.pascalCase()}}Response {
  const {{entity.pascalCase()}}Response({
    required this.accessToken,
    required this.expiresIn,
    required this.tokenType,
    required this.scope,
  });

  factory {{entity.pascalCase()}}Response.fromJson(Map<String, dynamic> json) =>
      _${{entity.pascalCase()}}ResponseFromJson(json);
}
