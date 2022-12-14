part of "Pages.dart";

class EditItem extends StatefulWidget {
  final ItemData item;
  final User user;
  const EditItem(this.item, this.user);

  static const String routeName = "/EditItem";

  @override
  _EditItemState createState() => _EditItemState();
}

class _EditItemState extends State<EditItem> {
  final _loginKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlQty = TextEditingController();
  final ctrlDesc = TextEditingController();

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlQty.dispose();
    ctrlDesc.dispose();
    super.dispose();
  }

  Future<dynamic> UpdateData() async {
    ItemData i = widget.item;
    User u = widget.user;

    dynamic response = true;
    Daservices.updateData(ctrlName.text.toString(), ctrlQty.text.toString(),
        i.itemId, ctrlDesc.text.toString());
    Navigator.pushReplacement(
        this.context, MaterialPageRoute(builder: (context) => Home(u)));
    return response;
  }

  @override
  Widget build(BuildContext context) {
    ItemData i = widget.item;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,

                  // This is the custom back button.
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.pop(context);
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
                // This is the item name input.
                Form(
                  key: _loginKey,
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      TextFormField(
                        // style: const TextStyle(
                        //     color: Color.fromARGB(255, 145, 145, 145), fontSize: 14),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: "Item Name",
                            hintText: i.itemName.toString(),
                            // floatingLabelBehavior: FloatingLabelBehavior.always,
                            prefixIcon: Icon(Icons.input)),
                        controller: ctrlName..text = i.itemName.toString(),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          return value.toString().isEmpty
                              ? 'Please fill in the blank!'
                              : null;
                        },
                      ),
                      SizedBox(height: 16),
                      // This is the quantity input.
                      TextFormField(
                        style: const TextStyle(fontSize: 14),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Quantity",
                          hintText: i.itemQuantity.toString(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          prefixIcon: Icon(Icons.production_quantity_limits),
                        ),
                        controller: ctrlQty..text = i.itemQuantity.toString(),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          return value.toString().isEmpty
                              ? 'Please fill in the blank!'
                              : null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      // This is the item description input.
                      TextFormField(
                        style: const TextStyle(fontSize: 14),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Item Description",
                          hintText: i.itemDescription.toString(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          prefixIcon: Icon(Icons.question_mark),
                        ),
                        controller: ctrlDesc
                          ..text = i.itemDescription.toString(),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          return value.toString().isEmpty
                              ? 'Please fill in the blank!'
                              : null;
                        },
                      ),

                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),

                // This is the save button.
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      if (ctrlName.text.toString() == "" ||
                          ctrlQty.text.toString() == "" ||
                          ctrlDesc.text.toString() == "") {
                        showDialog(
                            context: context,
                            builder: ((((context) {
                              return AlertDialog(
                                title: Text("There is an Error!"),
                                content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Please fill in the blanks!"),
                                    ]),
                              );
                            }))));
                      } else {
                        UpdateData();
                      }
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
