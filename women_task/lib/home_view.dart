import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:women_task/hand_bag_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              size: 25,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search, size: 39),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.shopping_cart, size: 39),
            ),
          ],
          elevation: 0,
        ),
        body: const HomeViewBody());
  }
}

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int currentIndex = 0;
  List<String> category = ["Hand Pag", "Jewellery", "Footwear", "Dresses"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Women",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Text(
                            category[index],
                            style: TextStyle(
                              fontSize: 22,
                              color: currentIndex != index
                                  ? Colors.black
                                  : Colors.orange.shade900,
                            ),
                          ),
                          Container(
                            width: category[index].length.toDouble() * 8,
                            height: 5,
                            color: currentIndex != index
                                ? Colors.transparent
                                : Colors.orange.shade900,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            child: currentIndex == 0 ? const HandBagView() : Container(),
          ),
        ],
      ),
    );
  }
}
