part of "Widgets.dart";

class ItemCard extends StatefulWidget {
  final ItemData item;
  const ItemCard(this.item);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    ItemData a = widget.item;
    return Card(
        color: const Color(0xFFFFFFFF),
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 2,
        child: InkWell(
          onTap: () {},
          splashColor: const Color(0xFF43A7FF),
          child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
            leading: CircleAvatar(
              child: Text(
                "R",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text("Item List",
                style: const TextStyle(
                    color: Color.fromARGB(255, 40, 107, 53),
                    fontWeight: FontWeight.bold)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 8),
                Text(
                  " ${(a.itemName)}",
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 40, 107, 53)),
                ),
                const SizedBox(height: 8),
                Text(
                  "${(a.itemId)}",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Text(
                  "${(a.itemQuantity)}",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
          ),
        ));
  }
}
