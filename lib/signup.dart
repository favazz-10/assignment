import 'package:flutter/material.dart';
import 'package:my_project/login.dart';


void main() {
  runApp(MaterialApp(
    home: signup(),
  ));
}

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool variable=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [SizedBox(
                width: double.infinity,
                child: IconButton(
                    alignment: Alignment.centerLeft,
                    onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.chevron_left, size: 50,)),
              ),
                const Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top:10),
                  child: Text('create an account,its free'),
                ),

                const Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                        label: Text('Email'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)))),
                  ),
                ),
                 const Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(obscuringCharacter: '*',
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon:  Icon(Icons.password),
                        label: Text('password'), border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(obscuringCharacter: '*',
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                        label: Text('confirm password'), border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ElevatedButton(onPressed: () {},style: ButtonStyle(backgroundColor: MaterialStateProperty.all((Colors.red))), child: const Text('SignUp')),
                ),
                TextButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));}, child: const Text('Already have an account?Login'))
              ],
            ),
          ),
        ));
  }
}
