part of "Widgets.dart";

class ItemCard extends StatefulWidget {
  final ItemData item;
  final User user;
  const ItemCard(this.item, this.user);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    ItemData a = widget.item;
    User u = widget.user;
    print(widget.item);

    // This is the white card.
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: Card(
          color: const Color(0xFFFFFFFF),
          margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 0,
          child: InkWell(
              onTap: () {
                // To be done.
              },
              //splashColor: const Color(0xFF43A7FF),
              child: Container(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          // This is the name of the item.
                          child: Container(
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  a.itemName.toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 40, 107, 53)),
                                ),
                                SizedBox(
                                  height: 8,
                                ),

                                // This is the id of the item.
                                Text(
                                  "Item ID : ${(a.itemId)}",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color:
                                          Color.fromARGB(255, 145, 145, 145)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Quantity : ${(a.itemQuantity)}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          Color.fromARGB(255, 145, 145, 145)),
                                ),
                              ],
                            ))
                      ])))),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 3,
            ),
          ]),
    );
  }
}
