import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/global_Widgets/devices/pc/header/header_Controller.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  HeaderController controller = HeaderController();
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HeaderController>(
      init: HeaderController(),
      builder: (_) => MouseRegion(
        onExit: (event) {
          FocusScope.of(context).unfocus();

          _.toggleShowCourse = false;
        },
        child: AnimatedContainer(
          height: _.toggleShowCourse ? 250 : 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
          ),
          duration: Duration(milliseconds: 300),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MouseRegion(
                  onHover: (event) {
                    _.toggleShowCourse = true;
                  },
                  child: Container(
                    // alignment: Alignment.center,
                    width: 170,
                    child: TextField(
                      onChanged: (value) {
                        _.filterSearchResults(value);
                      },
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
                top: 55,
                left: 1,
                right: 10,
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  margin: EdgeInsets.all(8),
                  duration: Duration(milliseconds: 300),
                  height: _.toggleShowCourse ? 250 : 0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _.items.length,
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
                          onTap: () => print(_.items[index]),
                          onHover: (value) {
                            _.hoverCourseSearch = value;
                            _.initValue = index;
                          },
                          child: ListTile(
                            // onTap: () => print(items[index]),
                            title: Text(
                              '${_.items[index]}',
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
      ),
    );
  }
}
