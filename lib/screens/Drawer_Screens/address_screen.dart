import 'package:burger_king_/constants/Colors.dart';
import 'package:burger_king_/widgets/Drawer_Screen/address_screen_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  int buttonindex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Brown,
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        title: AppB(context),
      ),
      body: Container(
        color: BackGround,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Body(),
            SizedBox(
              height: 25,
            ),
            AddressCard(context)
          ],
        ),
      ),
    );
  }
}

Widget addressField(String text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 18),
    height: 40,
    child: TextField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          label: Text(
            "  ${text}",
            style: TextStyle(color: Brown, fontFamily: "Semi", fontSize: 22),
          )),
    ),
  );
}
