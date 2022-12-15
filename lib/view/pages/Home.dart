part of 'Pages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const String routeName = "/Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 40, 107, 53),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 42, 0, 0),
                  height: 150,
                  color: Color.fromARGB(255, 40, 107, 53),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello,",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text("Anna Bella Atmadjaja",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24))
                        ],
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 45,
                      )
                    ],
                  ),
                ),
                // Container(
                //   height: 100,
                //   width: double.infinity,
                //   child: Card(
                //     color: Color.fromARGB(255, 40, 107, 53),
                //     elevation: 4.0,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               "Hello,",
                //               style: TextStyle(color: Colors.white),
                //             ),
                //             Text("Anna Bella Atmadjaja",
                //                 style: TextStyle(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: 24))
                //           ],
                //         ),
                //         Icon(
                //           Icons.person,
                //           color: Colors.white,
                //           size: 45,
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                Container(
                  height: MediaQuery.of(context).size.height * .76,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(32, 44, 32, 0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Item List",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 40, 107, 53)),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 5,
                            width: 160,
                            color: Color.fromARGB(255, 40, 107, 53),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
