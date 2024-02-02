import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:noti/utils/style.dart';
import 'package:noti/widgets/custom_button.dart';
import 'package:noti/widgets/custom_time_text_field.dart';
import 'package:pinput/pinput.dart';

import 'bootstrap.dart';

void main() async {
  bootstrap();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Log In'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FocusNode _code1Node = FocusNode();
  final FocusNode _code2Node = FocusNode();
  final FocusNode _code3Node = FocusNode();
  final FocusNode _code4Node = FocusNode();
  final TextEditingController _code1Controller = TextEditingController();
  final TextEditingController _code2Controller = TextEditingController();
  final TextEditingController _code3Controller = TextEditingController();
  final TextEditingController _code4Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Stack(alignment: Alignment.topCenter, children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const SizedBox(
                height: 150,
              ),
              Text('Log In', style: AppTextStyle.loginTitle),
              const SizedBox(
                height: 20,
              ),
              Text('Enter current time in hh : mm format',
                  style: AppTextStyle.body1Regular),
              const SizedBox(
                height: 100,
              ),
              Text('12:59', style: AppTextStyle.currentTime),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTimeTextField(
                    focusNode: _code1Node,
                    controller: _code1Controller,
                    onTyping: (x) {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomTimeTextField(
                    focusNode: _code2Node,
                    controller: _code2Controller,
                    onTyping: (x) {},
                  ),
                  SizedBox(
                    width: 20,
                    child: Column(
                      children: [
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    ),
                  ),
                  CustomTimeTextField(
                    focusNode: _code3Node,
                    controller: _code3Controller,
                    onTyping: (x) {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomTimeTextField(
                    focusNode: _code4Node,
                    controller: _code4Controller,
                    onTyping: (x) {},
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children:[
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                  const BoxDecoration(color: Color.fromRGBO(243, 243, 244, 1)),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('lib/assets/icons/error.svg',
                          color: Colors.red,
                          width: 15,
                          height: 15,
                          semanticsLabel: 'Acme Logo'),
                      SizedBox(width: 20,),
                      Text(
                        'The time is wrong. Try again',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ]

            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: CustomButton(
                text: 'Confirm',
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        )
      ]),
    );
  }
}
