import 'package:class_task/constant.dart';
import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Color Picker',
          style: TextStyle(
              color: ktextcolor1, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Choose Colors',
                style: TextStyle(
                    color: ktextcolor1,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 24,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                          color: colorlist[index].color,
                        );
                      }),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Choose Colors',
                style: TextStyle(
                    color: ktextcolor1,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
