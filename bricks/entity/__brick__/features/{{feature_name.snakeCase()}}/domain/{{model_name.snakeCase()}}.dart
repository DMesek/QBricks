import 'package:equatable/equatable.dart';

/// {@template {{{model_name.snakeCase()}}}}
/// {{model_name.pascalCase()}} description
/// {@endtemplate}
class {{model_name.pascalCase()}} extends Equatable {
  /// {@macro {{{model_name.snakeCase()}}}}
  const {{model_name.pascalCase()}}({{#hasProperties}}{ {{#properties}}
    required this.{{name}},{{/properties}}
  }{{/hasProperties}});
{{#properties}}
  /// A description for {{name}}
  final {{#hasSpecial}}{{{type}}}{{/hasSpecial}}{{^hasSpecial}}{{type}}{{/hasSpecial}} {{name}};{{/properties}}
  /// Creates a copy of the current {{model_name.pascalCase()}} with property changes
  {{model_name.pascalCase()}} copyWith({{#hasProperties}}{ {{#properties}}
    {{#hasSpecial}}{{{type}}}{{/hasSpecial}}{{^hasSpecial}}{{type}}{{/hasSpecial}}? {{name}},{{/properties}}
  }{{/hasProperties}}) {
    return {{model_name.pascalCase()}}({{#properties}}
      {{name}}: {{name}} ?? this.{{name}},{{/properties}}
    );
  }
  @override
  List<Object?> get props => [{{#properties}}
        {{name}},{{/properties}}
      ];
}
