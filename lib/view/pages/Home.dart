part of 'Pages.dart';

class Home extends StatefulWidget {
  final User user;
  const Home(this.user);

  static const String routeName = "/Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<User> u = [];
  List<dynamic> list = [];
  Future<dynamic> getItemData() async {
    await Daservices.getData().then((value) {
      setState(() {
        list = value;
      });
    });
    print(list.toString());
  }

  @override
  void initState() {
    getItemData();
    User u = widget.user;
    Const.User_id = int.parse(u.userId.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    User u = widget.user;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 107, 53),
      body: Stack(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
              color: const Color.fromARGB(255, 40, 107, 53),
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 4,
                      child: Container(
                        width: 260,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello,",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(u.userName.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14))
                          ],
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    this.context,
                                    MaterialPageRoute(
                                        builder: (context) => Profile(u)));
                              },
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 45,
                              ),
                            ),
                          ]))
                ],
              )),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
            width: double.infinity,
            height: double.infinity,
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
                    child: Text(
                      "Item List",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 40, 107, 53)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 5,
                      width: 160,
                      color: const Color.fromARGB(255, 40, 107, 53),
                    ),
                  ),
                  Flexible(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return LazyLoadingList(
                              initialSizeOfItems: 10,
                              loadMore: () {},
                              child: ItemCard(list[index]),
                              index: index,
                              hasMore: true);
                        }),
                  ),

                  // Container(
                  //   child: Expanded(
                  //     child: GestureDetector(
                  //       onTap: () {},
                  //       child: Icon(Icons.free_breakfast_rounded),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 15,
              color: Colors.white,
            ),
          ),
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
          User u = widget.user;
          // Navigator.pushNamed(context, AddItem.routeName);
          Navigator.push(this.context,
              MaterialPageRoute(builder: (context) => AddItem(u)));
        },
      ),
    );
  }
}
