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
    return Card(
        color: const Color(0xFFFFFFFF),
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 2,
        child: InkWell(
            onTap: () {
              Navigator.push(this.context,
                  MaterialPageRoute(builder: (context) => ItemDetails(a, u)));
            },
            splashColor: const Color(0xFF43A7FF),
            child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Flexible(
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
                          Text(
                            "Item ID : ${(a.itemId)}",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 145, 145, 145)),
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
                                color: Color.fromARGB(255, 145, 145, 145)),
                          ),
                        ],
                      ))
                ]))
            // child: ListTile(
            //   contentPadding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
            //   title: Text(" ${(a.itemName)}",
            //       style: const TextStyle(
            //           color: Color.fromARGB(255, 40, 107, 53),
            //           fontWeight: FontWeight.bold)),
            //   subtitle: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       const SizedBox(height: 8),
            //       Text(
            //         " ${(a.itemName)}",
            //         style: TextStyle(
            //             fontSize: 14, color: Color.fromARGB(255, 40, 107, 53)),
            //       ),
            //       const SizedBox(height: 8),
            //       Text(
            //         "${(a.itemId)}",
            //         style: TextStyle(fontSize: 12, color: Colors.grey),
            //       ),
            //       const SizedBox(height: 8),
            //       Text(
            //         "${(a.itemQuantity)}",
            //         style: TextStyle(fontSize: 12, color: Colors.grey),
            //       )
            //     ],
            //   ),
            // ),
            ));
  }
}
