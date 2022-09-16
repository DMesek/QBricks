import 'package:equatable/equatable.dart';

part '{{model_name.snakeCase()}}.g.dart';

class {{model_name.pascalCase()}} extends Equatable {
  {{#properties}}

  final {{#hasSpecial}}{{{type}}}{{/hasSpecial}}{{^hasSpecial}}{{type}}{{/hasSpecial}} {{name}};{{/properties}}
  const {{model_name.pascalCase()}}({{#hasProperties}}{ {{#properties}}
    required this.{{name}},{{/properties}}
  }{{/hasProperties}});

  factory {{model_name.pascalCase()}}.fromJson(Map<String, dynamic> data) => _${{model_name.pascalCase()}}FromJson(data);


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

  Map<String, dynamic> toJson() => _${{model_name.pascalCase()}}ToJson(this);
}
