import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkillPaddy',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://w0.peakpx.com/wallpaper/808/234/HD-wallpaper-red-and-black-boy-bag-dark-emoji-hands-headset-man-smiling.jpg',
                    scale: 0.6,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 150,
                  right: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 300,
                          ),
                          child: Text(
                            'its good to have you here!',
                            style: TextStyle(
                              fontFamily: 'FoundersGrotesk',
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Create your account in a minute',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextField(
                      text: 'First Name',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      text: 'Last Name',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      text: 'Email Address',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      text: 'Phone Number',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      text: 'Password',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  17,
                                ),
                                color: Colors.red[900]),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text(
                                  'Start Learning',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 146,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextField extends StatelessWidget {
  const TextField({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
          borderSide: BorderSide(
            width: 15,
            color: Colors.red,
          ),
        ),
        labelText: text,
        labelStyle: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
// AssetImage('images/red guy.png')
