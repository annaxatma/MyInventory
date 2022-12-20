part of "Pages.dart";

class AddItem extends StatefulWidget {
  final User user;
  const AddItem(this.user);

  static const String routeName = "/AddItem";

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
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

  Future<dynamic> InputData() async {
    User u = widget.user;
    dynamic response = true;
    Daservices.setData(ctrlName.text.toString(), u.userId,
        ctrlQty.text.toString(), ctrlDesc.text.toString());
    Navigator.pushReplacement(
        this.context, MaterialPageRoute(builder: (context) => Home(u)));
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: const Text(
                "Add Item",
                style: TextStyle(
                    color: Color.fromARGB(255, 40, 107, 53),
                    fontWeight: FontWeight.w900,
                    fontSize: 42),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              width: double.infinity,
              child: const Text(
                "Adding Item",
                style: TextStyle(
                  color: Color.fromARGB(255, 145, 145, 145),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Form(
                key: _loginKey,
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: "Item Name",
                          prefixIcon: Icon(Icons.add_box)),
                      controller: ctrlName,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value.toString().isEmpty
                            ? 'Please fill in the blank!'
                            : null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: "Quantity",
                          prefixIcon: Icon(Icons.stacked_bar_chart)),
                      controller: ctrlQty,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value.toString().isEmpty
                            ? 'Please fill in the blank!'
                            : null;
                      },
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: "Description",
                          prefixIcon: Icon(Icons.question_answer)),
                      controller: ctrlDesc,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return value.toString().isEmpty
                            ? 'Please fill in the blank!'
                            : null;
                      },
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
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
                          InputData();
                        }
                      },
                      child: const Text(
                        'ADD ITEM',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 40, 107, 53),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50),
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    ]));
  }
}
