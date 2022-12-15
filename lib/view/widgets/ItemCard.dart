part of "Widgets.dart";

class ItemCard extends StatefulWidget {
  const ItemCard({ Key? key }) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    );
  }
}