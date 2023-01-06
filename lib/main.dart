import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Widget con(
      Icon icon, Text text, Icon icon1, Text text1, Icon icon2, Text text2) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [icon, icon1, icon2],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [text, text1, text2],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Container(
          height: 450,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(15)),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                con(
                  const Icon(Icons.today, size: 40),
                  const Text('Today'),
                  const Icon(Icons.delete_forever, size: 40),
                  const Text('Delete Forever'),
                  const Icon(Icons.admin_panel_settings, size: 40),
                  const Text('Admin Panel\nSetting'),
                ),
                con(
                  const Icon(Icons.update, size: 40),
                  const Text('Update'),
                  const Icon(Icons.add_shopping_cart, size: 40),
                  const Text('Add shopping\ncart'),
                  const Icon(Icons.contact_support, size: 40),
                  const Text('Contact\nsupport'),
                ),
                con(
                  const Icon(Icons.note_add, size: 40),
                  const Text('Note Add'),
                  const Icon(Icons.reorder, size: 40),
                  const Text('Reorder'),
                  const Icon(Icons.account_box, size: 40),
                  const Text('Account Box'),
                ),
                con(
                  const Icon(Icons.zoom_in, size: 40),
                  const Text('Zoom in'),
                  const Icon(Icons.touch_app, size: 40),
                  const Text('Touch App'),
                  const Icon(Icons.assessment, size: 40),
                  const Text('Assessment'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
