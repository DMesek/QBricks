import 'package:freezed_annotation/freezed_annotation.dart';

part '{{entity.snakeCase()}}_response.g.dart';

@JsonSerializable()
class {{entity.pascalCase()}}Response {
  final String property;
  const {{entity.pascalCase()}}Response({
    required this.property,
  });

  factory {{entity.pascalCase()}}Response.fromJson(Map<String, dynamic> json) =>
      _${{entity.pascalCase()}}ResponseFromJson(json);
}
