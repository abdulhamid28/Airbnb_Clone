import 'package:airbnb_clone/LandingPage.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(BaseClass());
}

class BaseClass extends StatefulWidget {
  const BaseClass({super.key});

  @override
  State<BaseClass> createState() => _BaseClassState();
}

class _BaseClassState extends State<BaseClass> {
  @override
  Widget build(BuildContext context) {
    return LandingPageScreen();
  }
}
