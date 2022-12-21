part of "Pages.dart";

class ItemDetails extends StatefulWidget {
  final ItemData item;
  final User user;
  const ItemDetails(this.item, this.user);
  // const ItemDetails({Key? key}) : super(key: key);

  static const String routeName = "/Details";

  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    ItemData a = widget.item;
    User u = widget.user;
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
                          child: Text(
                            a.itemName.toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 40, 107, 53),
                                fontWeight: FontWeight.w900,
                                fontSize: 38),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        // This is the item ID.
                        Container(
                          child: Text(
                            "Item ID:" + a.itemId.toString(),
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
                Text(
                  "Quantity: " + a.itemQuantity.toString(),
                  style: TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Description:",
                  style: TextStyle(color: Color.fromARGB(255, 145, 145, 145)),
                ),
                Text(
                  a.itemDescription.toString(),
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
          Navigator.push(this.context,
              MaterialPageRoute(builder: (context) => EditItem(a, u)));
        },
      ),
    );
  }
}
