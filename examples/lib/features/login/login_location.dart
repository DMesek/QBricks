import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/login_page.dart';

class LoginLocation extends BeamLocation<BeamState> {

  static const login = '/login';

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        name: login,
        key: const ValueKey(login),
        child: LoginPage(),
      ),
    ];
  }

  @override
  List<Pattern> get pathPatterns => [login];
}