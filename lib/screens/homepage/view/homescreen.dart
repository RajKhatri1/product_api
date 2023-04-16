import 'package:flutter/material.dart';
import 'package:product_api/screens/homepage/modal/homemodal.dart';
import 'package:product_api/screens/homepage/provider/Homeprovider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  homrprovider? tpro;
  homrprovider? fpro;

  // void initState() {
  //   super.initState();
  //   Provider.of<homrprovider>(context, listen: false).callapi();
  // }

  @override
  Widget build(BuildContext context) {
    tpro = Provider.of<homrprovider>(context, listen: true);
    fpro = Provider.of<homrprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("home")),
        body: FutureBuilder(
          future: fpro!.callapi(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else if (snapshot.hasData) {
              List<dynamic>? h1 = snapshot.data;

              return ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Image.asset("assets/images/phone.png")),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${h1[index].productName}"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Rs := ${h1[index].productPrice}")
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        Row(
                          children: [
                            Text("${h1[index].productRate}"),
                            SizedBox(width: 3,),
                            Icon(Icons.star,size: 15),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: h1!.length,
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
            Navigator.pushNamed(context, "add");
        },child: Icon(Icons.add)),
      ),
    );
  }
}
