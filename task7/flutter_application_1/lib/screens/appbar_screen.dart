import 'package:flutter/material.dart';

import '../global/data.dart';

class AppbarScreen extends StatefulWidget {
  const AppbarScreen({super.key});

  @override
  State<AppbarScreen> createState() => _AppbarScreen();
}

// Color? color = Colors.white;
int? curr_ind = -1;
String? res;
bool f = false;

class _AppbarScreen extends State<AppbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  for (int i = 0; i < list.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            curr_ind = i;
                            f = true;
                            switch (i) {
                              case 0:
                                res = " الطلبات ${list[i]} ";
                                break;
                              case 1:
                                res = "الطلبات ${list[i]} ";
                                break;
                              case 2:
                                res = "الطلبات ${list[i]} ";
                                break;
                              case 3:
                                res = "الطلبات ${list[i]} ";
                                break;
                              default:
                                res = "الطلبات ${list[i]} ";
                                break;
                            }
                          });
                        },
                        child: Text(
                          "${list[i]}",
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          foregroundColor:
                              curr_ind == i ? Colors.white : Colors.black,
                          backgroundColor:
                              curr_ind == i ? Colors.red : Colors.grey,
                          minimumSize: const Size(2, 1),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          if (f)
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 226, 150, 150),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "$res",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                )),
        ],
      ),
    );
  }
}
