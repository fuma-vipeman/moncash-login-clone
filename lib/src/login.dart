import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.title,
  });
  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = 'Jhon Doe';

  String getAvatarName(String name) {
    return name
        .toUpperCase()
        .split(' ')
        .reduce((value, element) => '${value[0]} ${element[0]}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Image(image: AssetImage('assets/images/moncash.png')),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 56,
                      height: 56,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black12,
                      ),
                      child: Text(
                        '${getAvatarName(name)}',
                        style: Theme.of(context).textTheme.bodyMedium?.merge(
                              TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Welcome back, ${name.toUpperCase()}',
                      style: Theme.of(context).textTheme.titleLarge?.merge(
                            TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Please enter your PIN',
                      style: Theme.of(context).textTheme.bodyMedium?.merge(
                            TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                    ),
                    SizedBox(height: 12),
                    OtpTextField(
                      numberOfFields: 4,
                      filled: true,
                      autoFocus: true,
                      showFieldAsBox: true,
                    ),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2, vertical: 8),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Forgot PIN?',
                      style: Theme.of(context).textTheme.bodyMedium?.merge(
                            TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    ),
                  ])
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
