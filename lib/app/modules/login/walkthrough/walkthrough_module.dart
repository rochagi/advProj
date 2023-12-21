import 'package:advogadox/app/modules/login/walkthrough/pages/walkthrough_first_page.dart';
import 'package:advogadox/app/modules/login/walkthrough/pages/walkthrough_second_page.dart';
import 'package:advogadox/app/modules/login/walkthrough/pages/walkthrough_third_page.dart';

import 'package:flutter_modular/flutter_modular.dart';

class WalkthroughModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute("/walkthroughFirstPage",
        child: (context, args) => WalkThroughFirstPage()),
    ChildRoute("/walkthroughSecondPage",
        child: (context, args) => WalkthroughSecondPage()),
    ChildRoute("/walkthroughThirdPage",
        child: (context, args) => WalkthroughThirdPage())
  ];
}
