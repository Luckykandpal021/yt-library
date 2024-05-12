import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ytlibrary/components/video_transcribe.dart';
import 'package:ytlibrary/resources/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearchRequested = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: !isSearchRequested
            ? AppBar(
                title: Image.asset(
                  'assets/app_bar_title.png',
                  height: 30,
                ),
                centerTitle: true,
                backgroundColor: appThemeColor,
                iconTheme: const IconThemeData(color: drawerIconColor),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSearchRequested = true;
                        });
                      },
                      child: const Icon(
                        Icons.search,
                        color: drawerIconColor,
                      ),
                    ),
                  )
                ],
              )
            : AppBar(
                leading: !isSearchRequested
                    ? IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          // Scaffold.of(context).openDrawer(); // Open the drawer
                        },
                      )
                    : null,

                // backgroundColor: appThemeColor,
                iconTheme: const IconThemeData(color: drawerIconColor),
                title: Row(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        isSearchRequested = false;
                      }),
                      child: Icon(
                        Icons.cancel_presentation,
                        color: redColor.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: drawerIconColor,
                                  width: 1,
                                  style: BorderStyle.solid)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: appThemeColor,
                                  width: 1,
                                  style: BorderStyle.solid)),
                          hintText: 'What You Want to Study..',
                          hintStyle:
                              TextStyle(color: appThemeColor.withOpacity(0.5)),
                          // border:
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: appThemeColor.withOpacity(0.5))),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.search_outlined,
                          size: 17,
                          color: appThemeColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        drawer: !isSearchRequested
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Drawer(
                  child: ListView(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Downloads',
                              style: TextStyle(
                                  color: appThemeColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                            Icon(
                              Icons.download_for_offline_outlined,
                              color: appThemeColor,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: double.infinity,
                        height: 0.7,
                        color: dividerColor,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Dark Mode',
                              style: TextStyle(
                                  color: appThemeColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                            Switch(
                              value: true,
                              onChanged: (value) {},
                              activeColor: appThemeColor,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: double.infinity,
                        height: 0.7,
                        color: dividerColor,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Contact',
                              style: TextStyle(
                                  color: appThemeColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                            Icon(
                              Icons.person,
                              color: appThemeColor,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: double.infinity,
                        height: 0.7,
                        color: dividerColor,
                      ),
                    ],
                  ),
                ),
              )
            : null,
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Column(
              children: [VideoTranscribe()],
            ),
          ),
        ));
  }
}
