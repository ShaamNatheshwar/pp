import 'package:devjams/views/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pallice',
            style: TextStyle(
              fontSize: 35,
              color: buttonColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            'SignUp',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1664428800874-ccfe751cbc0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                backgroundColor: Colors.black,
              ),
              Positioned(
                bottom: -10,
                left: 80,
                child: IconButton(
                  onPressed: () {
                    print('Hi');
                  },
                  icon: Icon(Icons.add_a_photo),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
                controller: _userNameController,
                labelText: 'UserName',
                icon: Icons.person),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
              controller: _emailController,
              labelText: 'Email',
              icon: Icons.email,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
              controller: _passwordController,
              labelText: 'Password',
              icon: Icons.lock,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 50,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: InkWell(
              onTap: () {
                print('Hi I am tapped');
              },
              child: Center(
                child: Text(
                  'SignUp',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
                style: TextStyle(fontSize: 20),
              ),
              InkWell(
                onTap: () {
                  print('Navigatin user');
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: buttonColor),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
