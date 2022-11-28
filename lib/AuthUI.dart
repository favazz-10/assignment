import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class authui extends StatefulWidget {
  @override
  State<authui> createState() => _authuiState();
}

class _authuiState extends State<authui> {
  late bool formVisible;
  int? _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/7.jpg'), fit: BoxFit.cover)),
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.black54,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                SizedBox(height: 15),
                Text(
                  ('Welcome to this awsome login app.\nYou are awsome'),
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 470,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 169,
                        height: 45,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                            onPressed: () {
                              setState(() {
                                formVisible = true;
                                _formsIndex = 1;
                              });
                            },
                            child: Text('Login'))),
                    SizedBox(
                        width: 169,
                        height: 45,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                            onPressed: () {
                              setState(() {
                                formVisible = true;
                                _formsIndex = 2;
                              });
                            },
                            child: Text('Signup')))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        side: BorderSide(color: Colors.red)),
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.google),
                    label: Text(
                      'Continue with Google',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ),
        AnimatedSwitcher(
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          switchInCurve: Curves.fastLinearToSlowEaseIn,
          switchOutCurve: Curves.easeOutCirc,
          duration: Duration(milliseconds: 1200),
          child: (!formVisible)
              ? null
              : Container(
                  color: Colors.black54,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  _formsIndex == 1 ? Colors.red : Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: _formsIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _formsIndex = 1;
                              });
                            },
                          ),
                          const SizedBox(width: 10.0),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  _formsIndex == 2 ? Colors.red : Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            child: Text("Signup",
                                style: TextStyle(
                                  color: _formsIndex == 2
                                      ? Colors.white
                                      : Colors.black,
                                )),
                            onPressed: () {
                              setState(() {
                                _formsIndex = 2;
                              });
                            },
                          ),
                          const SizedBox(width: 10.0),
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              setState(() {
                                formVisible = false;
                              });
                            },
                          )
                        ],
                      ),
                      Container(
                        child: AnimatedSwitcher(
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return ScaleTransition(
                                scale: animation, child: child);
                          },
                          switchInCurve: Curves.bounceInOut,
                          switchOutCurve: Curves.easeOutCirc,
                          duration: Duration(milliseconds: 600),
                          child: _formsIndex == 1 ? login() : signup(),
                        ),
                      )
                    ],
                  ),
                ),
        )
      ]),
    );
  }
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirm password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text(
              "Signup",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: authui(),
  ));
}
