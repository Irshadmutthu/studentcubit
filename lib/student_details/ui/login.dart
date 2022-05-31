import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_details/student_details/ui/home.dart';
import 'package:student_details/student_details/ui/signUp.dart';
import 'package:student_details/student_details/widget/cusotm_Elevated_Button.dart';
import 'package:student_details/student_details/widget/custom_text_form_field.dart';
import 'package:student_details/student_details/widget/custom_sizedbox.dart';

class Login extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  // List<DataModel> datas = [];
  // late DB db;
  // late SharedPreferences log;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   db = DB();
  //   sharedDatas();
  // }

  // Future<void> sharedDatas() async {
  //   log = await SharedPreferences.getInstance();
  //   setState(() {
  //     print(log.getString('username'));
  //     usernameController.text = log.getString('username')!;
  //     passwordController.text = log.getString('password')!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.green,
                    ),
                  ),
                )),
                Custom_Sizedbox(
                  height: 30,
                ),
                // SizedBox(
                //   height: 30,
                // ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Custom_textformfield(
                    autoValidate: AutovalidateMode.onUserInteraction,
                    controller: usernameController,
                    validate: (username) {
                      if (isUsernameValid(username!)) {
                        return null;
                      } else {
                        return "Invalid username";
                      }
                    },
                    keyboardtype: TextInputType.name,
                    label: 'Enter username',
                    hint: 'username',
                  ),
                  // child: TextFormField(
                  //   controller: usernameController,
                  //   autovalidateMode: AutovalidateMode.onUserInteraction,
                  //   style: TextStyle(color: Colors.black),
                  //   decoration: InputDecoration(
                  //       hintText: "Username",
                  //       hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(50.0),
                  //       ),
                  //       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  //   validator: (username) {
                  //     if (isUsernameValid(username!)) {
                  //       return null;
                  //     } else {
                  //       return "Invalid username";
                  //     }
                  //   },
                  // ),
                ),
                Custom_Sizedbox(
                  height: 20,
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Custom_textformfield(
                      autoValidate: AutovalidateMode.onUserInteraction,
                      controller: passwordController,
                      validate: (password) {
                        if (isPasswordValidate(password!)) {
                          return null;
                        } else {
                          return "Password invalid";
                        }
                      },
                      hint: 'password',
                      keyboardtype: TextInputType.text,
                      hidetext: true,
                      label: 'Enter password'),
                  // child: TextFormField(
                  //   controller: passwordController,
                  //   autovalidateMode: AutovalidateMode.onUserInteraction,
                  //   obscureText: true,
                  //   style: TextStyle(color: Colors.black),
                  //   decoration: InputDecoration(
                  //       hintText: "Password",
                  //       hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(50.0),
                  //       ),
                  //       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  //   validator: (password) {
                  //     if (isPasswordValidate(password!)) {
                  //       return null;
                  //     } else {
                  //       return "Password invalid";
                  //     }
                  //   },
                  // ),
                ),
                Custom_Sizedbox(
                  height: 20,
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Center(
                  child: Custom_Elevated_Button(
                      fontsize: 24,
                      button_name: 'SignIn',
                      onPressing: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      }),
                  //   child: ElevatedButton(
                  //     child: Text(
                  //       "Sign In",
                  //       style: TextStyle(fontSize: 24),
                  //     ),
                  //     onPressed: () async {
                  //       if (formKey.currentState!.validate()) {
                  //         String userName = usernameController.text.toString();
                  //         String Password = passwordController.text.toString();
                  //         datas = await db.login_check(userName, Password);
                  //         if (datas.isEmpty) {
                  //           print("error");
                  //         } else {
                  //           log.setString('username', userName);
                  //           log.setString('password', Password);
                  //           print(log.getString('username'));

                  //           Navigator.of(context).push(MaterialPageRoute(
                  //               builder: (context) => Display()));
                  //         }
                  //       }
                  //     },
                  //   ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New User?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )));
  }

  bool isUsernameValid(String username) {
    String e_pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';

    RegExp nameReg = RegExp(e_pattern);

    return (nameReg.hasMatch(username) && username != null);
    //return (username.length >= 5);
  }

  bool isPasswordValidate(String password) {
    return (password.length >= 6);
  }
}
