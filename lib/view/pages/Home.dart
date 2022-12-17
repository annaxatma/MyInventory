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
            color: const Color.fromARGB(255, 40, 107, 53),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(32, 42, 32, 0),
                  height: 150,
                  color: const Color.fromARGB(255, 40, 107, 53),

                  // This is the profile section.
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        // This is the content of the profile section.
                        children: [
                          const Text(
                            "Hello,",
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text("Anna Bella Atmadjaja",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24))
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            Profile.routeName
                          );
                        },
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 45,
                        ),
                      )
                    ],
                  ),
                ),

                // This is the rounded container.
                Container(
                  height: MediaQuery.of(context).size.height * .76,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(32, 44, 32, 0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,

                          // This is the item list text.
                          child: const Text(
                            "Item List",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 40, 107, 53)),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),

                        // This is the line under the item list.
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 5,
                            width: 160,
                            color: const Color.fromARGB(255, 40, 107, 53),
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),

                        // This is the container for the item cards.
                        Container(
                          height: 500,
                          child: SingleChildScrollView(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
<<<<<<< Updated upstream
                                  Container(
                                    padding: const EdgeInsets.all(16),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 3,
                                            blurRadius: 3,
=======
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, ItemDetails.routeName);
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                              spreadRadius: 3,
                                              blurRadius: 3,
                                            ),
                                          ]),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Nails",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 40, 107, 53)),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              const Text(
                                                "Item ID: 0001",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 145, 145, 145)),
                                              )
                                            ],
>>>>>>> Stashed changes
                                          ),
                                        ]),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Nails",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 40, 107, 53)),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              "Item ID: 0001",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 145, 145, 145)),
                                            )
                                          ],
                                        ),
                                        const Text(
                                          "Quantity: 324567",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 145, 145, 145)),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // This is the added container for the bottom section of the screen.
          Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              color: Colors.white,
            ),
          )
        ],
      ),

      // This is the add item button.
      floatingActionButton: FloatingActionButton.extended(
        label: const Text(
          "ADD ITEM",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 40, 107, 53),
        onPressed: () {
          Navigator.pushNamed(
            context,
            AddItem.routeName
          );
        },
      ),
    );
  }
}
