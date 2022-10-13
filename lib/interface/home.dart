import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool switchButton=false;

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: Color.fromRGBO(3, 180, 232, 0.8),
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Demo'),
        ),
        body:
          Center(
            child:switchButton?
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                                "Hello Dart",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 25
                                ),
                           ),
                          Padding(padding: EdgeInsets.all(10)),
                          // SizedBox.fromSize(
                          //     size: Size.square(10.0)
                          // ),
                          Image.asset(
                            'assets/images/dart.png',
                            width: 50,
                            height: 50,
                          )
                        ]
                  ) :
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                              "Hello Flutter",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 25
                              ),

                            ),
                          Padding(padding: EdgeInsets.all(10)),
                          // SizedBox.fromSize(
                          //     size: Size.square(10.0)
                          // ),
                          Image.asset(
                              'assets/images/flutter.png',
                              width: 50,
                              height: 50,
                          )
                        ]
                    ),
          ),
      bottomNavigationBar: ElevatedButton(
        style: raisedButtonStyle,
        child: Text(
          "Switch"
        ),
        onPressed: (){
          setState(() {
            switchButton=!switchButton;
          });
        },
      ),
    );
  }

}
