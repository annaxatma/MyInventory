part of "Pages.dart";

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  static const String routeName = "/AddItem";

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  height: 32,
                ),

                // This is the add item text.
                Container(
                  width: double.infinity,
                  child: const Text(
                    "Add Item",
                    style: TextStyle(
                        color: Color.fromARGB(255, 40, 107, 53),
                        fontWeight: FontWeight.w900,
                        fontSize: 38),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                // This is the item name input.
                TextFormField(
                  style: const TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145), fontSize: 14),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Item Name",
                    prefixIcon: Icon(Icons.input),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                // This is the quantity input.
                TextFormField(
                  style: const TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145), fontSize: 14),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Quantity",
                    prefixIcon: Icon(Icons.production_quantity_limits),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                // This is the item description input.
                TextFormField(
                  style: const TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145), fontSize: 14),
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    labelText: "Item Description",
                    prefixIcon: Icon(Icons.question_mark),
                  ),
                ),

                const SizedBox(
                  height: 32,
                ),

                // This is the add item button.
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'ADD ITEM',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 40, 107, 53),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
