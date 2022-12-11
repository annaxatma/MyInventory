part of 'Pages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("ERRORS BEGONE!!!"),
              centerTitle: true,
            ),
            body: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: <Widget>[
                    // CONTAINER TO CONTAIN GRADIENT BACKGROUND
                    Container(
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

                  ],
                )
            )
        )
    );
  }
}
