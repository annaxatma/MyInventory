part of "Pages.dart";

class ItemDetails extends StatefulWidget {
  const ItemDetails({Key? key}) : super(key: key);

  static const String routeName = "/ItemDetails";

  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(32, 130, 32, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,

                  // This is the custom back button.
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        // This is the name of the item.
                        Container(
                          child: const Text(
                            "Nails",
                            style: TextStyle(
                                color: Color.fromARGB(255, 40, 107, 53),
                                fontWeight: FontWeight.w900,
                                fontSize: 38),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        // This is the item ID.
                        Container(
                          child: const Text(
                            "Item ID: 0001",
                            style: TextStyle(
                                color: Color.fromARGB(255, 145, 145, 145)),
                          ),
                        )
                      ],
                    ),

                    // Delete item button
                    ElevatedButton(
                      onPressed: () {
                        // To be done
                      },
                      child: const Text(
                        'DELETE ITEM',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 184, 53, 53),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Quantity: 324567",
                  style: TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Description:",
                  style: TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  style: TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
                )
              ],
            ),
          ),
        ],
      ),

      // This is the edit item button.
      floatingActionButton: FloatingActionButton.extended(
        label: const Text(
          "EDIT ITEM",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 40, 107, 53),
        onPressed: () {
          Navigator.pushNamed(context, EditItem.routeName);
        },
      ),
    );
  }
}
