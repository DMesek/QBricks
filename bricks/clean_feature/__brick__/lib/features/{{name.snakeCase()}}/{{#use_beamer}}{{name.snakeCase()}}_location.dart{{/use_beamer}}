import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/{{name.camelCase()}}_page.dart';

class {{name.pascalCase()}}Location extends BeamLocation<BeamState> {

  static const {{name.camelCase()}} = '/{{name.camelCase()}}';

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        name: {{name.camelCase()}},
        key: const ValueKey({{name.camelCase()}}),
        child: {{name.pascalCase()}}Page(),
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => [{{name.camelCase()}}];
}