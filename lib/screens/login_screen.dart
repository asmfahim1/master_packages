import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _fromKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _fromKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(20.0),
                          child: Container(
                            child: TextField(

                            ),
                          ),
                        )
                      ],
                    )
                ),
              ),
            ),
          ),
        ),
    );
  }
}
