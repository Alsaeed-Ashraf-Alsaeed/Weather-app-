import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    print('initstate called ');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChange Dependecies called ');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: Center(
              child: Text(Provider.of<MyProvider>(context).num1.toString())),
        ),
      ),
    );
  }
}

class MyProvider extends ChangeNotifier {
  int num1 = 5;
  void changeNum1() {
    num1++;
    notifyListeners();
  }
}
