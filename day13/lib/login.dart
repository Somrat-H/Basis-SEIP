import 'package:flutter/material.dart';

import 'homepage.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => LogInState();
}

class LogInState extends State<LogIn> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool isObsecure = true;
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset(
              "assets/login.png",
              fit: BoxFit.cover,
              height: 200,
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: usernameController,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 88, 28, 207)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      suffixIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 88, 28, 207),
                      ),
                      hintText: 'Enter Your Username',
                    ),
                    onEditingComplete: () {
                      if (_formKey.currentState!.validate()) {
                        print(" Successfull");
                      } else {}
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username can't be empty";
                      }
                      if (value.length < 5) {
                        return 'Length match';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: isObsecure,
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 88, 28, 207)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                          icon: const Icon(
                            Icons.visibility,
                            color: Color.fromARGB(255, 88, 28, 207),
                          )),
                      hintText: 'Enter Your Password',
                    ),
                    onEditingComplete: () {
                      if (_formKey.currentState!.validate()) {
                        print(" Successfull");
                      } else {}
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can't be empty";
                      } else if (value.length < 8) {
                        return "Password shuld be 8";
                      }
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Forgot Password'),
                ],
              ),
            ),
            // Spacer(),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomePage(
                              username: usernameController.text.toString(),
                              password: passwordController.text.toString(),
                            )));
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 88, 28, 207),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.black,
                          blurRadius: 0.5,
                        )
                      ]),
                  child: const Center(
                      child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )),
                ),
              ),
            ),
            RichText(
                text: const TextSpan(text: "Didn't have account?", children: [
              TextSpan(
                  text: "Sing Up",
                  style: TextStyle(color: Color.fromARGB(255, 88, 28, 207))),
            ]))
          ],
        ),
      ),
    );
  }
}
