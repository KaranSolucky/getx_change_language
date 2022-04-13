import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'ಕನ್ನಡ', 'locale': Locale('kn', 'IN')},
    {'name': 'हिंदी', 'locale': Locale('hi', 'IN')},
    {'name': 'ગુજરાતી', 'locale': Locale('gj', 'IN')},
    {'name': 'ROMANIAN', 'locale': Locale('ro', 'IN')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  int? tappedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Choose Your Language")),
        body: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: tappedIndex == index
                            ? Colors.blue
                            : Colors.transparent,
                        child: ListTile(
                          title: Text(
                            locale[index]['name'],
                            style: TextStyle(
                              color: tappedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              tappedIndex = index;
                            });

                            print(locale[index]['name']);
                            Future.delayed(Duration(milliseconds: 1), () {
                              updateLanguage(locale[index]['locale']);
                            });
                          },
                        ),
                      ));
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.blue,
                  );
                },
                itemCount: locale.length),
          ],
        )

        // ListView.builder(
        //     shrinkWrap: true,
        //     itemCount: 4,
        //     itemBuilder: (context, index) {
        //       return Container(
        //           //I have used container for this example. [not mandatory]
        //           color: tappedIndex == index ? Colors.red : Colors.grey,
        //           child: ListTile(
        //               title: Center(
        //                 child: Text('${index + 1}'),
        //               ),
        //               onTap: () {
        //                 setState(() {
        //                   tappedIndex = index;
        //                 });
        //               }));
        //     })
        );
  }
}
