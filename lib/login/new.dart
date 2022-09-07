import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class Newpage extends StatefulWidget {
  const Newpage({Key? key}) : super(key: key);

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Container(
                      height: 10.h,
                      width: MediaQuery.of(context).size.width - 20.w,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }));
  }
}
