import 'package:flutter/material.dart';
import 'package:wea_prj/comp/read_more_text.dart';
import 'package:wea_prj/comp/text_item.dart';
import 'package:wea_prj/screens/chat_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      extendBody: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Stack(
            fit: StackFit.expand,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 120,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BackButton(),
                            TextButton.icon(
                              onPressed: () {
                                Navigator.push
                                  (context,
                                    MaterialPageRoute(
                                  builder: (context) => ChatScreen(),
                                ));
                              },
                              icon: Icon(
                                Icons.chat_bubble,
                              ),
                              label: Text("Ask Seller"),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.grey.shade300,
                                ),
                                foregroundColor: MaterialStateProperty.all(
                                  Colors.blue.shade900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Pro Gaming",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Type: ",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Omen Gaming",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                      //SizedBox(height: 10),
                      AspectRatio(
                        aspectRatio: 1,
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(child: Image.asset("images/pc.png")),
                              SizedBox(
                                height: 70,
                                child: ListView.builder(
                                  itemCount: 5,
                                  itemExtent: 90,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.all(5),
                                      child: Image.asset(
                                        "images/pc.png",
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade900,
                                  borderRadius: BorderRadius.circular(12)),
                              alignment: Alignment.center,
                              child: Text(
                                "HP",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HP Offcial Store",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "View Store",
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        height: 50,
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextItem(
                                      itemTitle: "Overview", isChecked: true),
                                  TextItem(
                                      itemTitle: "Specefications",
                                      isChecked: false),
                                  TextItem(
                                      itemTitle: "Review", isChecked: false),
                                  TextItem(itemTitle: "More", isChecked: false),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      ReadMoreTextItem(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price: ",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "\$1580",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Text("Add To Cart",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
