import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:student_details/student_details/database_helper/databse_helper.dart';
import 'package:student_details/student_details/model_class/model_class.dart';
import 'package:student_details/student_details/ui/home.dart';
import 'package:student_details/student_details/ui/login.dart';
import 'package:student_details/student_details/widget/cusotm_Elevated_Button.dart';
import 'package:student_details/student_details/widget/custom_sizedbox.dart';
import 'package:student_details/student_details/widget/custom_text_form_field.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController admnumController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController pswController = TextEditingController();

  Database_helper helper = Database_helper();

  // late DB dbob;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   dbob = DB();
  // }

  final form1Key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SignUp Page"),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: form1Key,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Custom_Sizedbox(
                    height: 30,
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  Custom_textformfield(
                      controller: nameController,
                      autoValidate: AutovalidateMode.onUserInteraction,
                      textcolor: Colors.black,
                      label: 'Enter your Name',
                      hint: 'Name',
                      keyboardtype: TextInputType.name),
                  // TextFormField(
                  //   controller: nameController,
                  //   autovalidateMode: AutovalidateMode.onUserInteraction,
                  //   decoration: InputDecoration(
                  //       hintText: "Name",
                  //       hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(50.0),
                  //       ),
                  //       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  //   validator: (name) {
                  //     if (isNameVallidate(name!)) {
                  //       return null;
                  //     } else {
                  //       return "enter correct name";
                  //     }
                  //   },
                  // ),
                  Custom_Sizedbox(
                    height: 15,
                  ),
                  Custom_textformfield(
                      autoValidate: AutovalidateMode.onUserInteraction,
                      textcolor: Colors.black,
                      validate: (email) {
                        if (isEmailValidate(email!)) {
                          return null;
                        } else {
                          return "Email is invalid";
                        }
                      },
                      controller: emailController,
                      label: 'Enter Email',
                      hint: 'Email',
                      keyboardtype: TextInputType.emailAddress),
                  // TextFormField(
                  //   controller: emailController,
                  //   autovalidateMode: AutovalidateMode.onUserInteraction,
                  //   decoration: InputDecoration(
                  //       hintText: "Email",
                  //       hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(50.0),
                  //       ),
                  //       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  //   validator: (email) {
                  //     if (isEmailValidate(email!)) {
                  //       return null;
                  //     } else {
                  //       return "Email is invalid";
                  //     }
                  //   },
                  // ),
                  Custom_Sizedbox(
                    height: 15,
                  ),
                  Custom_textformfield(
                      controller: admnumController,
                      autoValidate: AutovalidateMode.onUserInteraction,
                      textcolor: Colors.black,
                      validate: (adsn_number) {
                        if (isAdmissionValidate(adsn_number!)) {
                          return null;
                        } else {
                          return "Invalid Admission number";
                        }
                      },
                      label: 'Enter Admission Number',
                      hint: 'Admission Number',
                      keyboardtype: TextInputType.number),
                  // TextFormField(
                  //   controller: admnumController,
                  //   autovalidateMode: AutovalidateMode.onUserInteraction,
                  //   decoration: InputDecoration(
                  //       hintText: "Admission Number",
                  //       hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(50.0),
                  //       ),
                  //       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  //   validator: (admission_number) {
                  //     if (isAdmissionValidate(admission_number!)) {
                  //       return null;
                  //     } else {
                  //       return "Admission number is invalid";
                  //     }
                  //   },
                  // ),
                  Custom_Sizedbox(
                    height: 15,
                  ),
                  Custom_textformfield(
                      controller: courseController,
                      textcolor: Colors.black,
                      label: 'Enter Course',
                      hint: 'Course',
                      keyboardtype: TextInputType.text),
                  // TextFormField(
                  //   controller: courseController,
                  //   decoration: InputDecoration(
                  //       hintText: "Course",
                  //       hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(50.0),
                  //       ),
                  //       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  // ),
                  Custom_Sizedbox(
                    height: 15,
                  ),
                  Custom_textformfield(
                      controller: phoneController,
                      autoValidate: AutovalidateMode.onUserInteraction,
                      textcolor: Colors.black,
                      validate: (phoneNumber) {
                        if (isPhoneValidate(phoneNumber!)) {
                          return null;
                        } else {
                          return "Invalid phone number";
                        }
                      },
                      label: 'Enter Admission Number',
                      hint: 'Phone Number',
                      keyboardtype: TextInputType.number),
                  // TextFormField(
                  //   controller: phoneController,
                  //   autovalidateMode: AutovalidateMode.onUserInteraction,
                  //   decoration: InputDecoration(
                  //       hintText: "Phone number",
                  //       hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(50.0),
                  //       ),
                  //       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  //   validator: (phonenumber) {
                  //     if (isPhoneValidate(phonenumber!)) {
                  //       return null;
                  //     } else {
                  //       return "Phone  number is invalid";
                  //     }
                  //   },
                  // ),
                  Custom_Sizedbox(
                    height: 15,
                  ),
                  Custom_textformfield(
                      controller: pswController,
                      autoValidate: AutovalidateMode.onUserInteraction,
                      textcolor: Colors.black,
                      validate: (password) {
                        if (isPassswordValidate(password!)) {
                          return null;
                        } else {
                          return "Invalid password";
                        }
                      },
                      label: 'Enter your password',
                      hint: 'password',
                      hidetext: false,
                      keyboardtype: TextInputType.text),
                  // TextFormField(
                  //   controller: pswController,
                  //   autovalidateMode: AutovalidateMode.onUserInteraction,
                  //   decoration: InputDecoration(
                  //       hintText: "Password",
                  //       hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(50.0),
                  //       ),
                  //       contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  //   validator: (password) {
                  //     if (isPassswordValidate(password!)) {
                  //       return null;
                  //     } else {
                  //       return "Password invalid";
                  //     }
                  //   },
                  // ),
                  Custom_Sizedbox(
                    height: 20,
                  ),
                  Custom_Elevated_Button(
                      button_name: 'SignUp',
                      fontsize: 24,
                      onPressing: () {
                        if (form1Key.currentState!.validate()) {
                          DataModel model = DataModel(
                              name: nameController.text,
                              email: emailController.text,
                              course: courseController.text,
                              adm_num: admnumController.text,
                              phonenum: phoneController.text,
                              password: pswController.text);

                          helper.insertData(model);
                          //print(model.name);

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));

                          // use the email provided here
                        }
                      })

                  // ElevatedButton(
                  //     onPressed: () {
                  // if (form1Key.currentState!.validate()) {
                  //   dbob.insertData(DataModel(
                  //       name: nameController.text,
                  //       email: emailController.text,
                  //       course: courseController.text,
                  //       adm_num: admnumController.text,
                  //       phonenum: phoneController.text,
                  //       password: pswController.text));

                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => Login()));

                  //   // use the email provided here
                  // }
                  //     },
                  //     child: Text(
                  //       "SignUp",
                  //       style: TextStyle(fontSize: 24),
                  //     ))
                ]),
          ),
        )));
    // TODO: implement build
  }

  bool isEmailValidate(String email) {
    String e_pattern = r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

    RegExp nameReg = RegExp(e_pattern);

    return (nameReg.hasMatch(email) && email != null);
  }

  bool isAdmissionValidate(String adsn_number) {
    String a_pattern = r'[0-9]';
    RegExp admReg = RegExp(a_pattern);
    return (admReg.hasMatch(adsn_number) && admReg != null);
  }

  bool isPhoneValidate(String phone) {
    String a_pattern = r'[0-9]';

    RegExp phonenum = RegExp(phone);
    return (phonenum.hasMatch(phone) && phone != null && phone.length == 10);
  }

  bool isPassswordValidate(String password) {
    return (password.length >= 6 && password.length != null);
  }

  bool isNameVallidate(String namee) {
    return (namee != null);
  }
}
