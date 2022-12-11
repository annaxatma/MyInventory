part of 'Pages.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  // static const String routeName = "/Login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: <Widget>[
                    Container(
                      // 1st layer to contain gradient background
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 54, 49, 153),
                                Color.fromARGB(255, 30, 30, 80),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.3, 1.0],
                              tileMode: TileMode.clamp),
                        )),
                    Column(
                      // 2nd layer to contain everything else :v
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Flexible(flex: 1, child: Row(
                          // I know it's a lot but trust me, it's just for the "sign in" text T^T
                          children: [
                            Flexible(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 30),
                                  child: TextButton(
                                    onPressed: () {  },
                                    child: Text.rich(
                                      TextSpan(
                                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.transparent, letterSpacing: 5),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'Si',
                                              style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                decorationColor: Color.fromARGB(
                                                    255, 228, 130, 121),
                                                decorationThickness: 3,
                                                shadows: [Shadow(color: Colors.white, offset: Offset(0, -10))],
                                              )
                                          ),
                                          TextSpan(
                                              text: 'gn',
                                              style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                shadows: [Shadow(color: Colors.white, offset: Offset(0, -10))],
                                              )
                                          ),
                                          TextSpan(
                                              text: ' In',
                                              style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                shadows: [Shadow(color: Colors.white, offset: Offset(0, -10))],
                                              )
                                          )
                                          // can add more TextSpans here...
                                        ],
                                      ),
                                    )
                                    // style: ButtonStyle(
                                    //   backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 54, 49, 153)),
                                    // ),
                                  ),
                                )
                            ),
                          ],
                        )),
                      ],
                    )
                  ],
                )
            )
        )
    );
  }
}
