import 'package:flutter/material.dart';
import 'package:travel_app_ui/common/app_slider.dart';
import 'package:travel_app_ui/common/reusable_text.dart';
import 'package:travel_app_ui/constant/colors.dart';
import 'package:travel_app_ui/constant/constant.dart';

class DestinationDetails extends StatefulWidget {
  DestinationDetails(
      {super.key, required this.imagePath, required this.placeName});

  final String imagePath;
  final String placeName;

  @override
  State<DestinationDetails> createState() => _DestinationDetailsState();
}

class _DestinationDetailsState extends State<DestinationDetails> {
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColor.secondaryColor,
        foregroundColor: Colors.white60,
        onPressed: () {},
        label: SizedBox(
          width: MediaQuery.of(context).size.width - 100,
          child: Text(
            'Select Location',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Hero(
        tag: widget.imagePath,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  widget.imagePath,
                ),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                          ),
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.black45,
                            size: 40,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                Container(
                  width: MediaQuery.of(context).size.width,
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.60),
                  decoration: BoxDecoration(
                    color: AppColor.darkSecondaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 30, 30, 0),
                        child: ReusableText(
                          text: widget.placeName,
                          size: 22,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: isShowMore ? null : 150,
                        padding: EdgeInsets.fromLTRB(40, 0, 30, 0),
                        child: ReusableText(
                          color: Colors.white38,
                          size: 15,
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        ),
                      ),
                      Center(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isShowMore = !isShowMore;
                            });
                          },
                          icon: Column(
                            children: [
                              isShowMore
                                  ? Icon(Icons.arrow_upward)
                                  : Icon(Icons.arrow_downward),
                              ReusableText(
                                text: 'Show more',
                                size: 10,
                                fontWeight: FontWeight.normal,
                                color: Colors.white24,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 35),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ReusableText(
                              text: 'Tourist Places',
                              size: 22,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: ReusableText(
                                text: 'See more',
                                size: 15,
                                color: Colors.white24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppSlider(
                        height: 180,
                        itmeWidth: 140,
                        borderRadius: 20,
                        slideList: destination,
                      ),
                      SizedBox(height: 80),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
