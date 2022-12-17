part of "Pages.dart";

class EditItem extends StatefulWidget {
  const EditItem({Key? key}) : super(key: key);

  static const String routeName = "/EditItem";

  @override
  _EditItemState createState() => _EditItemState();
}

class _EditItemState extends State<EditItem> {
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

                // This is the edit item text.
                Container(
                  width: double.infinity,
                  child: const Text(
                    "Edit Item",
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
                    hintText: "Nails",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
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
                    hintText: "342567",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
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
                    hintText:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.question_mark),
                  ),
                ),

                const SizedBox(
                  height: 32,
                ),

                // This is the save button.
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'SAVE',
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
