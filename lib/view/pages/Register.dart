part of 'Pages.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  static const String routeName = "/Register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Column(
              // 2nd layer to contain everything else :v
              children: [
                SizedBox(
                  height: 180,
                ),
                Flexible(flex: 1, child: Row(
                  // I know it's a lot but trust me, it's just for the "sign in" text :v
                  children: [
                    Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                },
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.transparent, letterSpacing: 4),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Sign',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          shadows: [Shadow(color: Color.fromARGB(
                                              255, 124, 150, 109), offset: Offset(0, -10))],
                                        )
                                    ),
                                    TextSpan(
                                        text: ' In',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          shadows: [Shadow(color: Color.fromARGB(
                                              255, 124, 150, 109), offset: Offset(0, -10))],
                                        )
                                    )
                                    // can add more TextSpans here...
                                  ],
                                ),
                              )
                          ),
                        )
                    ),
                    // This is for the "sign up" button
                    Flexible(
                        child: Container(
                          child: TextButton(
                              onPressed: () {  },
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.transparent, letterSpacing: 4),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Si',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color.fromARGB(
                                              255, 58, 177, 73),
                                          decorationThickness: 3,
                                          shadows: [Shadow(color: Color.fromARGB(
                                              255, 38, 107, 53), offset: Offset(0, -10))],
                                        )
                                    ),
                                    TextSpan(
                                        text: 'gn',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          shadows: [Shadow(color: Color.fromARGB(
                                              255, 38, 107, 53), offset: Offset(0, -10))],
                                        )
                                    ),
                                    TextSpan(
                                        text: ' Up',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          shadows: [Shadow(color: Color.fromARGB(
                                              255, 38, 107, 53), offset: Offset(0, -10))],
                                        )
                                    )
                                    // can add more TextSpans here...
                                  ],
                                ),
                              )
                          ),
                        )
                    ),
                  ],
                )),
              ],
            )
        )
    );
  }
}
