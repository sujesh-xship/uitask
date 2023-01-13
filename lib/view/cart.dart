import 'package:flutter/material.dart';
import 'package:ui_design/constants/appconstants.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  int itemCount=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 236, 236),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 237, 236, 236),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27), color: Colors.white),
              child: IconButton(
                iconSize: 100,
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                  size: 18,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            // SizedBox(
            //   width: 61,
            // ),
            const Text(
              "Cart Food",
              style: TextStyle(color: Colors.black),
            ),
            // SizedBox(
            //   width: 100,
            // ),
            const Icon(
              Icons.more_horiz,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(19))),
                height: MediaQuery.of(context).size.height * 0.51,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(17),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(5),
                          horizontalTitleGap: 15,
                          minVerticalPadding: 0,
                          leading:
                              Image.asset(AppImages.itemImage, height: 79),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "Orange Sandwiches",
                                style: TextStyle(
                                    letterSpacing: 0.1,
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "520g",
                                // textAlign: ,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 183, 182, 182),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // SizedBox(
                                //   height: 10,
                                // ),
                                const Text(
                                  "\$18.00",
                                  style: TextStyle(
                                      letterSpacing: 0.8,
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  width: 70,
                                ),
                                Container(
                                  width: 77,
                                  height: 27,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 236, 190, 38),
                                  ),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Text(
                                      //   "-   1   +",
                                      //   style: TextStyle(
                                      //       color: Colors.black,
                                      //       fontWeight: FontWeight.w600), 
                                      // ),

                                      Flexible(child: TextButton(onPressed: (){
                                        setState(() {
                                          itemCount--;
                                        });
                                      }, child: Icon(Icons.remove,color: Colors.black,size: 15,),style: TextButton.styleFrom(padding: EdgeInsets.all(0)),)),
                                      Text(itemCount.toString()),
                                      Flexible(child: TextButton(onPressed: (){
                                        setState(() {
                                          itemCount++;
                                        });
                                      }, child: Icon(Icons.add,color: Colors.black,size: 15,),style: TextButton.styleFrom(padding: EdgeInsets.all(0)),)),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(
                          endIndent: 15,
                          indent: 15,
                          color: Colors.amber,
                        ),
                    itemCount: 3),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Item total:",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 183, 182, 182),
                      )),
                  const Text("\$47.00",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Delivery charge",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 183, 182, 182),
                      )),
                  const Text("\$1.00",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Tax:",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 183, 182, 182),
                      )),
                  const Text("\$0.50",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Total:",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                  const Text("\$36.38",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                ],
              ),
              SizedBox(
                height: 46,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color.fromARGB(255, 236, 190, 38),
                ),
                width: MediaQuery.of(context).size.width,
                // padding: const EdgeInsets.only(top: 16.0),
                child: new TextButton(
                  child: new Text("Checkout",
                      style: new TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
