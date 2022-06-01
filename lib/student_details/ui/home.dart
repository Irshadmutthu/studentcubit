import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_details/student_details/cubit/student_cubit.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Details"),
      ),
      body: BlocBuilder<StudentCubit, StudentState>(
        builder: (context, state) {
          // print(state.datas.length);
          return Center(
              child: ListView.builder(
                  itemCount: state.datas.length,
                  itemBuilder: (context, index) {
                    return Card(
                      //here card repeat as list , first card have 0th index.
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            width: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.datas[index]
                                      .name, //here index equal to card number
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  state.datas[index]
                                      .email, //here index equal to card number
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Text(
                                  state.datas[index]
                                      .adm_num, //here index equal to card number
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Text(
                                  state.datas[index]
                                      .course, //here index equal to card number
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Text(
                                  state.datas[index]
                                      .phonenum, //here index equal to card number
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Text(
                                  state.datas[index]
                                      .password, //here index equal to card number
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text(
                                          "Edit".toUpperCase(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.blue,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5))),
                                        onPressed: () {
                                          // Navigator.of(context).push(
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             EditingPage(
                                          //               index: index,
                                          //             )));
                                        },
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            // delete(index);
                                            // delete(index);
                                          },
                                          child: Text(
                                            "Delete".toUpperCase(),
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.red,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5))))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: 30,
                        // ),
                      ),
                    );
                  }));
        },
      ),
    );
  }
}
