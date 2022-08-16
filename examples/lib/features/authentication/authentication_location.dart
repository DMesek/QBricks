import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/authentication_page.dart';

class AuthenticationLocation extends BeamLocation<BeamState> {

  static const authentication = '/authentication';

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        name: authentication,
        key: const ValueKey(authentication),
        child: AuthenticationPage(),
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => [authentication];
}