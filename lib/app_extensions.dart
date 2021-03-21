import 'package:flutter_web_designs/main.dart';

extension RoutesPath on Routes {
  String get path {
    if (this == Routes.home) return "/";
    return "/${this.toString().toLowerCase().split(".")[1]}";
  }
}
