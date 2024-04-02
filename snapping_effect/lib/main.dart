import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:snapping_effect/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.brown[600],
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black)),
      home: const SnappingEffect(),
    );
  }
}

class SnappingEffect extends StatefulWidget {
  const SnappingEffect({super.key});

  @override
  State<SnappingEffect> createState() => _SnappingEffectState();
}

class _SnappingEffectState extends State<SnappingEffect> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Museums",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.7,
              child: ScrollSnapList(
                itemBuilder: _buildListItem,
                itemCount: museumList.length,
                itemSize: 350,
                onItemFocus: (index) {},
                dynamicItemSize: true,
                scrollDirection: Axis.vertical,
                duration: 100,
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                initialIndex: museumList.length / 2,
                focusOnItemTap: false,
                shrinkWrap: false,
                updateOnScroll: true,
                // reverse: true,
                
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return SizedBox(
      height: 350,
      width: 150,
      child: Card(
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Column(
            children: [
              Image.asset(
                museumList[index].imgPath,
                fit: BoxFit.cover,
                height: 250,
                width: MediaQuery.of(context).size.width * 0.95,
              ),
              const SizedBox(height: 20),
              Text(
                museumList[index].title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
