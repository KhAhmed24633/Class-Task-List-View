import 'package:class_task/constant.dart';
import 'package:class_task/models/color_model.dart';
import 'package:class_task/views/color.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  MyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Color Picker',
          style: TextStyle(
              color: ktextcolor1, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Choose Colors',
                style: TextStyle(
                    color: ktextcolor1,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomcontainerColor(
                                    clickcolor: colorlist[index].color)));
                      },
                      child: Container(
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                            color: colorlist[index].color,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            colorlist[index].name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'Choose Colors',
                style: TextStyle(
                    color: ktextcolor1,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomcontainerColor(
                                    clickcolor: colorlist[index].color)));
                      },
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: colorlist[index].color,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
