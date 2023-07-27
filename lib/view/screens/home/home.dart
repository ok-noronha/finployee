import 'package:finployee/core/constants/constants.dart';
import 'package:finployee/models/models.dart';
import 'package:finployee/widget/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontroller = TextEditingController();
  String resnum = "10/100";
  Map<String, dynamic> empData = {
    '_id': '300',
    'firstName': 'John',
    'avatar': "https://picsum.photos/250?image=9",
    'status': 'sick',
    'location': 'Bengaluru',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: Sizes.s24,
            width: Sizes.s16,
          ),
          Card(
            margin: EdgeInsets.all(4),
            color: AppColors.appPrimaryColor,
            shadowColor: AppColors.backgroundColor,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
              side: BorderSide(color: AppColors.border, width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: searchcontroller,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: Sizes.s14,
                      color: AppColors.textPrimaryColor,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      hintText: "Search String",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: Sizes.s14,
                        color: AppColors.textHintAndDisableColor,
                      ),
                      filled: true,
                      fillColor: AppColors.white,
                      isDense: false,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: IconButton(
                          icon: Icon(Icons.filter_3_outlined),
                          onPressed: () {},
                          color: AppColors.black,
                          iconSize: 24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: MaterialButton(
                          onPressed: () {},
                          color: AppColors.borderSecondary,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: AppColors.border, width: 1),
                          ),
                          padding: EdgeInsets.all(Sizes.s16),
                          child: Text(
                            "Search",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          textColor: AppColors.textSecondaryColor,
                          height: Sizes.s40,
                          minWidth: Sizes.s140,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.dividerColor,
            height: Sizes.s16,
            thickness: 0,
            indent: 0,
            endIndent: 0,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  resnum,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: Sizes.s14,
                    color: AppColors.textPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(0),
              shrinkWrap: false,
              physics: ScrollPhysics(),
              children: [
                EmpWidget(emp: EmpModel.fromJson(empData)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
