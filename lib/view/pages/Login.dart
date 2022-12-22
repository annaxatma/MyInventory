part of 'Pages.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  static const String routeName = "/Login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlPass = TextEditingController();

  @override
  void dispose() {
    ctrlPass.dispose();
    ctrlEmail.dispose();
    super.dispose();
  }

  late User user;
  Future<User> PostLogin() async {
    await Daservices.Login(ctrlEmail.text.toString(), ctrlPass.text.toString())
        .then((value) {
      setState(() {
        user = value;
      });
      Navigator.pushReplacement(
          this.context, MaterialPageRoute(builder: (context) => Home(user)));
    });
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              height: 8,
            ),
            Form(
                key: _loginKey,
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: "Email", prefixIcon: Icon(Icons.email)),
                      controller: ctrlEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value.toString().isEmpty
                            ? 'Please fill in the blank!'
                            : null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password", prefixIcon: Icon(Icons.lock)),
                      controller: ctrlPass,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value.toString().isEmpty
                            ? 'Please fill in the blank!'
                            : null;
                      },
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (ctrlPass.text.toString() == "" ||
                            ctrlEmail.text.toString() == "") {
                          showDialog(
                              context: context,
                              builder: ((((context) {
                                return AlertDialog(
                                  title: Text("There is an Error!"),
                                  content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Please fill in the blanks!"),
                                      ]),
                                );
                              }))));
                        } else {
                          PostLogin();
                        }
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
                    )
                  ],
                )),
          ],
        ),
      ),
    ]));
  }
}
