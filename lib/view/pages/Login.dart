part of 'Pages.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  static const String routeName = "/Login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // This is the login text.
                Container(
                  width: double.infinity,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromARGB(255, 40, 107, 53),
                        fontWeight: FontWeight.w900,
                        fontSize: 42),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),

                // This is the text under the login text.
                Container(
                  width: double.infinity,
                  child: const Text(
                    "Please sign in to continue",
                    style: TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                // This is the email input.
                TextFormField(
                  style: const TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145), fontSize: 14),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                // This is the password input.
                TextFormField(
                  style: const TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145), fontSize: 14),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.key),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                // This is the login button.
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, Home.routeName);
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 40, 107, 53),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // This is the bottom text.
          Align(
            alignment: const Alignment(0, 0.9),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Register.routeName);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color.fromARGB(255, 40, 107, 53),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
