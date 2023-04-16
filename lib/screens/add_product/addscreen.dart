import 'package:flutter/material.dart';

class add_pro extends StatefulWidget {
  const add_pro({Key? key}) : super(key: key);

  @override
  State<add_pro> createState() => _add_proState();
}

class _add_proState extends State<add_pro> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtRate= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: txtname,
                  decoration: InputDecoration(
                    hintText: "product_Name",
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtprice,
                  decoration: InputDecoration(
                      hintText: "product_Price",
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtRate,
                  decoration: InputDecoration(
                      hintText: "product_Rate",
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {

                }, child: Text("Add"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
