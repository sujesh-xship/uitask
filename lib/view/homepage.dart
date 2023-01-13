import 'package:flutter/material.dart';
import 'package:ui_design/constants/appconstants.dart';
import 'package:ui_design/constants/appwidgets.dart';
import 'package:ui_design/model/itemlist_data.dart';
import 'package:ui_design/view/cart.dart';

class HomPage extends StatelessWidget {
  HomPage({Key? key}) : super(key: key);
  List<DishTile> dishTileData = DishTile.tile;
bool onWishListPressed=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 236, 236),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 237, 236, 236),
        leading: const Icon(
          Icons.location_pin,
          color: Colors.yellow,
        ),
        titleSpacing: -14,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "BeiJing",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              width: 228,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0, top: 15, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Find good \nFood around you",
              style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 26, 26, 26),
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                        // color: const Color.fromARGB(255, 236, 232, 232),
                        ),
                    child: TextFormField(
                      onFieldSubmitted: (value) {},
                      decoration: const InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                        hintText: "Search your fav food",
                        // contentPadding: EdgeInsets.only(left: 14),
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 45,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text(
                  "Find",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 26, 26, 26),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5),
                Text(
                  "5km",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 236, 90, 32),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                TextBox(
                  text: 'Set Meal',
                  color: Colors.amber,
                ),
                TextBox(
                  text: "Popularity",
                  color: Colors.white,
                ),
                TextBox(
                  text: "Hot sale",
                  color: Colors.white,
                ),
              ],
            ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.only(
                      left: 10, top: 25, right: 10, bottom: 10),
                  mainAxisSpacing: 17,
                  crossAxisSpacing: 15,
                  childAspectRatio: .68,
                  children: List.generate(
                      dishTileData.length,
                      (index) => Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(19))),
                            height: 230,
                            // width: ,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, top: 3),
                                    child: IconButton(
                                        alignment: Alignment.topRight,
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 22,
                                        )),
                                  ),
                                ),
                                Image.asset(
                                  AppImages.itemImage,
                                  scale: 2.7,
                                ),
                                const SizedBox(
                                  height: 0,
                                ),
                                Text(
                                  dishTileData[index].dish,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      dishTileData[index].time,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                              255, 192, 191, 191)),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Icon(
                                      Icons.circle,
                                      color: Color.fromARGB(255, 192, 191, 191),
                                      size: 4,
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    const Icon(
                                      Icons.star_border_outlined,
                                      color: Colors.amber,
                                      size: 15,
                                    ),
                                    Text(
                                      dishTileData[index].rating,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                              255, 192, 191, 191)),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  dishTileData[index].price,
                                  style: const TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ))),
            )
          ],
        ),
      ),
    );
  }
}
