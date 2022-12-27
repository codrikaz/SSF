import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:staple_food_fortification/Commons/Widget/textwidget.dart';
import 'package:staple_food_fortification/Constants/SffColor.dart';
import 'package:staple_food_fortification/Constants/Strings.dart';

final _hiveBox = Hive.box(kDefaultHiveBox);

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({Key? key}) : super(key: key);

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  String lang = 'English';
  bool isSwitchOn = false;
  bool isSwitchTextOn = false;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SffColor.sffMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        title: TextView("A", 22.0, Colors.white, FontWeight.w400),
      ),
      body: Column(
        children: [
          MaterialButton(
            height: 45,
            color: Colors.white,
            elevation: 0,
            highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
            onPressed: () => showBottomSheetLanguage(),
            child: Row(
              children: [
                TextView("Language", 20.0, Colors.black, FontWeight.w700),
                Spacer(),
                Row(
                  children: [
                    TextView(lang, 16.0, Colors.black, FontWeight.w600),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 45,
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Text Size",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                Spacer(),
                Card(
                  child: Container(
                    height: 30,
                    width: 30,
                    color: Colors.blue,
                    child: Row(
                      children: [],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          MaterialButton(
            height: 45,
            color: Colors.white,
            elevation: 0,
            highlightColor: SffColor.sffBlueColor.withOpacity(0.2),
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => Settinggs()));
            },
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Color Scheme",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "Light",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),

            child: Row(
              children: [
                Container(
                  //color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Enable Text Editor",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      Container(
                        width: Get.width * 0.8,
                        margin: EdgeInsets.only(bottom: 12),
                        //  padding: EdgeInsets.only(right: 20),
                        child: Text(
                          Strings.EnableTextEditor,
                          style: TextStyle(
                              fontSize: 16,
                              color: SffColor.sffblackLigtColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Get.height * 0.07,
                  height: Get.height * 0.07,
                  child: FlutterSwitch(
                    inactiveColor: SffColor.sffgeyCoor,
                    value: isSwitchTextOn,
                    onToggle: (value) {
                      setState(() {
                        isSwitchTextOn = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Cross-Website Tracking",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    Strings.crossWebsiteTracking,
                    style: TextStyle(
                        color: SffColor.sffblackLightColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15, bottom: 10),
                  child: MaterialButton(
                    height: 45,
                    color: SffColor.sffBlueColor,
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => HomeScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Open Settings",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(left: 15),
            color: Colors.grey.withOpacity(0.4),
            height: 1,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),

            child: Row(
              children: [
                Container(
                  //color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Enable Text Editor",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      Container(
                        width: Get.width * 0.8,
                        margin: EdgeInsets.only(bottom: 12),
                        //  padding: EdgeInsets.only(right: 20),
                        child: Text(
                          Strings.EnableTextEditor,
                          style: TextStyle(
                              fontSize: 16,
                              color:  SffColor.sffblackLigtColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Get.height * 0.07,
                  height: Get.height * 0.07,
                  child: FlutterSwitch(
                    inactiveColor: SffColor.sffgeyCoor,
                    value: isSwitchOn,
                    onToggle: (value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showBottomSheetLanguage() {
    showModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          // color: Colors.yellow,
          height: 360,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
            height: 100,
            width: 100,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        // color: Colors.blueAccent,
                        width: double.maxFinite,
                        alignment: Alignment.center,
                        child: Text(
                          "Language",
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                      ),

                      Container(
                        height: 2,
                        color: SffColor.sffBlueColor,
                        width: double.maxFinite,
                      ),

                      MaterialButton(
                          height: 45,
                          // color: SffColor.sffBlueColor,
                          elevation: 0,
                          onPressed: () async {
                            // Get.updateLocale(Locale('en', 'US'));
                            // _hiveBox.put("lang", "en");
                            // lang="English";
                            //context.setLocale(const Locale('en', 'US'));
                            Get.back();
                            setState(() {});
                          },
                          child: TextView(
                              "English", 18.0, Colors.black, FontWeight.w700)),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                        height: 45,
                        // color: SffColor.sffBlueColor,
                        elevation: 0,
                        onPressed: () async {
                          // Get.updateLocale(Locale('hi', 'IN'));
                          // _hiveBox.put("lang", "hi");
                          // lang="हिंदी";
                          // context.setLocale(const Locale('hi', 'IN'));
                          Get.back();
                          setState(() {});
                        },
                        child: TextView(
                            "हिंदी", 18.0, Colors.black, FontWeight.w700),
                      ),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                        height: 45,
                        // color: SffColor.sffBlueColor,
                        elevation: 0,
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => HomeScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("தமிழ்",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_forward,
                                color: Colors.white, size: 20),
                          ],
                        ),
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(10.0),
                        // ),
                      ),
                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                        height: 45,
                        // color: SffColor.sffBlueColor,
                        elevation: 0,
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => HomeScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("ಕನ್ನಡ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_forward,
                                color: Colors.white, size: 20),
                          ],
                        ),
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(10.0),
                        // ),
                      ),

                      Divider(
                          color: Colors.black.withOpacity(0.2), height: 0.1),
                      MaterialButton(
                          height: 45,
                          // color: SffColor.sffBlueColor,
                          elevation: 0,
                          onPressed: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => HomeScreen()));
                          },
                          child: TextView(
                              "తెలుగు", 18.0, Colors.black, FontWeight.w700)),

                      // Container(
                      //   height: 10,
                      //   color: Colors.transparent,
                      // ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 45,
                  color: Colors.white,
                  elevation: 0,
                  onPressed: () => Get.back(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextView("Cancel", 20.0, Colors.red, FontWeight.w800),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }

  void setLang() {
    String def_lang = _hiveBox.get("lang");
    if (def_lang == 'en') {
      lang = "English";
    } else if (def_lang == 'hi') {
      lang = "हिंदी";
    } else {
      lang = "English";
    }
  }
}
