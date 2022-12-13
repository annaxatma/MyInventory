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
            body: Column(
              // Note: 1st layer to contain almost everything u see :)
              children: [
                SizedBox(
                  height: 180,
                ),
                Flexible(flex: 1, child: Row(
                  // Note: I know it's a lot but trust me, it's just for the "sign in" text :v
                  children: [
                    Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.transparent, letterSpacing: 4),
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
                                    text: ' In',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      shadows: [Shadow(color: Color.fromARGB(
                                          255, 38, 107, 53), offset: Offset(0, -10))],
                                    )
                                )
                              ],
                            ),
                          )
                        )
                    ),
                    // Note: This is for the "sign up" button
                    Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, Register.routeName);
                              },
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.transparent, letterSpacing: 4),
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
                                        text: ' Up',
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
                  ],
                )),
                // Note: This is for username-password + button form
                Flexible(
                    child: Form(
                      child: ListView(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        scrollDirection: Axis.vertical,
                        children: [
                          // Note: Email input
                          TextFormField(
                            style: TextStyle(
                                color: Color.fromARGB(255, 20, 37, 21),
                                fontSize: 14
                            ),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "Email",
                                prefixIcon: Icon(Icons.email),
                            ),

                          ),
                          // Note: just for space between emain dn pass
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            // Note: Pass input
                            style: TextStyle(
                                color: Color.fromARGB(255, 20, 37, 21),
                                fontSize: 14
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              labelText: "Password",
                              prefixIcon: Icon(Icons.key),
                            ),
                          ),
                          // Note: just for space between emain dn pass
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            // Note: login button
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, Home.routeName);
                              },
                              child: Text('Login'),
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                            )
                          )
                        ],
                      ),
                    )
                )
              ],
            )
        )
    );
  }
}
