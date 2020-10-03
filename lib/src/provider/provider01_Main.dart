import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeaderProvider with ChangeNotifier {
  List<bool> _hover = [false, false, false, false, false];

  List<bool> get hover => _hover;

  set hover(List<bool> hover) {
    this._hover = hover;
    notifyListeners();
  }
}

class MainProvider extends StatelessWidget {
  const MainProvider({@required this.child});
  final MaterialApp child;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HeaderProvider()),
      ],
      child: child,
    );
  }
}
