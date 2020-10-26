import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/global_Widgets/devices/pc/header/header_Controller.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController editingController = TextEditingController();

  bool show = false;
  double w = 20;
  double h = 100;

  final duplicateItems = List<String>.generate(10000, (i) => "Curso $i");

  var items = List<String>();

  @override
  void initState() {
    items.addAll(duplicateItems);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();

    dummySearchList.addAll(duplicateItems);

    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();

      dummySearchList.forEach(
        (item) {
          if (item.contains(query)) {
            dummyListData.add(item);
          }
        },
      );
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(
        () {
          items.clear();
          items.addAll(duplicateItems);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HeaderController>(
      init: HeaderController(),
      builder: (_) => MouseRegion(
        onExit: (event) {
          FocusScope.of(context).unfocus();
          setState(() {
            show = false;
          });
        },
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              right: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MouseRegion(
                  onHover: (event) {
                    setState(() {
                      show = true;
                    });
                  },
                  child: TextField(
                    onChanged: (value) {
                      filterSearchResults(value);
                    },
                    controller: editingController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.all(0),
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 65,
              right: 10,
              left: 10,
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                margin: EdgeInsets.all(8),
                duration: Duration(milliseconds: 300),
                height: show ? 250 : 0,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return AnimatedContainer(
                      // margin: EdgeInsets.all(2),
                      duration: Duration(milliseconds: 300),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: _.hoverCourseSearch && _.initValue == index
                            ? Colors.blue
                            : Colors.white,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () => print(items[index]),
                        onHover: (value) {
                          _.hoverCourseSearch = value;
                          _.initValue = index;
                          // print(items[index]);

                          // print(_.hoverCourseSearch && _.initValue == index);
                        },
                        child: ListTile(
                          // onTap: () => print(items[index]),
                          title: Text(
                            '${items[index]}',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
