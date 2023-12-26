import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isCheck = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _setRememberCheckBox(bool? newValue) => setState(() {
        if (newValue == null) {
          _isCheck = false;
        } else {
          _isCheck = newValue;
        }
      });

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 100.0,
            ),
            SizedBox(
              height: 50.0,
              child: Text.rich(TextSpan(children: [
                const TextSpan(
                    text: 'Coffee',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: ' Been',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800])),
              ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Email",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    LoginTextField(
                      textFieldController: emailController,
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Password",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    LoginTextField(
                      textFieldController: passwordController,
                      isObscureText: true,
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: CheckboxListTile(
                      title: const Text("Remember me"),
                      value: _isCheck,
                      onChanged: _setRememberCheckBox,
                      controlAffinity: ListTileControlAffinity
                          .leading, //  <-- leading Checkbox
                      contentPadding: const EdgeInsets.all(0),
                    ),
                  ),
                  Flexible(
                    child: InkWell(
                      onTap: () {
                        const snackBar = SnackBar(
                          content: Text('Yay! A SnackBar!'),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                        child: Text("Forgot password"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  OutlinedButton(
                      onPressed: () => Navigator.pushNamed(context, '/about'),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size.fromHeight(20),
                        foregroundColor: Colors.black,
                        // elevation: 2,
                        // backgroundColor: Colors.white),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        side: const BorderSide(width: 1, color: Colors.black26),
                      ),
                      child: const Text('Create Account')),
                  const SizedBox(
                    height: 16,
                  ),
                  TextButton(
                      onPressed: () {
                        if (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty) {
                          Navigator.pushNamed(context, '/about');
                        } else {
                          const snackBar = SnackBar(
                            content: Text('something missing'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          return;
                        }
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        minimumSize: const Size.fromHeight(20),
                        elevation: 2,
                        backgroundColor: Colors.green[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                      ),
                      child: const Text('Sign In')),
                ],
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class LoginTextField extends StatefulWidget {
  const LoginTextField(
      {super.key,
      required this.textFieldController,
      this.isObscureText = false});

  final TextEditingController textFieldController;
  final bool isObscureText;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.textFieldController;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isObscureText,
      controller: _controller,
      cursorColor: Colors.black,
      style: const TextStyle(fontSize: 12.0, height: 2.0, color: Colors.black),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 1, color: Color.fromRGBO(214, 214, 214, 100)),
            borderRadius: BorderRadius.all(Radius.circular(18.0))),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
        ),
      ),
    );
  }
}
