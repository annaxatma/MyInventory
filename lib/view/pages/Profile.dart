part of 'Pages.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  static const String routeName = "/Profile";

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.blue,
        padding: EdgeInsets.fromLTRB(32, 100, 32, 0),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topLeft,

              // This is the custom back button.
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 145, 145, 145),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 145, 145, 145)),
                  ),
                  Text(
                    "Anna",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color:Color.fromARGB(255, 40, 107, 53) ),
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, Login.routeName, (route) => false);
                    },
                    child: Text(
                      'SIGN OUT',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 40, 107, 53),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
