part of "Pages.dart";

class AddItem extends StatefulWidget {
  const AddItem({ Key? key }) : super(key: key);

  static const String routeName = "/AddItem";

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is add item section"),
      ),
    );
  }
}