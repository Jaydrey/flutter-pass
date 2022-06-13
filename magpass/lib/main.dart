import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MagPass',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'MagPass Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 32, 35),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Welcome", style: TextStyle(fontSize: 24.0)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Logo(),
          AccountActions(),
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Image.asset("assets/images/maglogo/2x/Asset 1xhdpi.png"),
        const Text(
          "PyLock Manager",
          style: TextStyle(
              fontSize: 24.0, color: Color.fromARGB(255, 228, 142, 13)),
        ),
      ],
    ));
  }
}

class AccountActions extends StatefulWidget {
  const AccountActions({Key? key}) : super(key: key);

  @override
  State<AccountActions> createState() => _AccountActionsState();
}

class _AccountActionsState extends State<AccountActions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        CheckAccount(),
        CreateAccount(),
      ],
    );
  }
}

class CreateAccount extends StatefulWidget{
  const CreateAccount({Key? key}): super(key:key);
  @override
  State<CreateAccount> createState() => _CreateaAccountState();
}

class _CreateaAccountState extends State<CreateAccount>{
  // const _CreateaAccountState({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context){
    return GestureDetector(
          onTap: null,
          onDoubleTap: null,
          child: Container(
            alignment: Alignment.center,
            height: 60.0,
            width: MediaQuery.of(context).size.width - 100,
            margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 228, 142, 15),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: const Text(
              "Create a new account?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
        );
  }
}

class CheckAccount extends StatefulWidget{
  const CheckAccount({Key? key}): super(key:key);
  @override
  State<CheckAccount> createState() => _CheckAccountState();
}

class _CheckAccountState extends State<CheckAccount>{
  // const _CreateaAccountState({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context){
    return GestureDetector(
          onTap: null,
          onDoubleTap: null,
          child: Container(
            alignment: Alignment.center,
            height: 60.0,
            width: MediaQuery.of(context).size.width - 100,
            margin: const EdgeInsets.fromLTRB(10, 100, 10, 15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 228, 142, 15),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: const Text(
              "Already have an account?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
        );
  }
}