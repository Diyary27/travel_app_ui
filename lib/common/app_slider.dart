import 'package:flutter/material.dart';
import 'package:travel_app_ui/common/reusable_text.dart';
import 'package:travel_app_ui/constant/colors.dart';
import 'package:travel_app_ui/constant/constant.dart';
import 'package:travel_app_ui/destination_details.dart';

class AppSlider extends StatelessWidget {
  AppSlider({
    super.key,
    required this.height,
    required this.itmeWidth,
    required this.borderRadius,
    required this.slideList,
  });

  final double height;
  final double itmeWidth;
  final double borderRadius;
  final List slideList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        padding: EdgeInsets.fromLTRB(22, 10, 22, 10),
        itemCount: destination.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (slideList[index]['placeName'] != null) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DestinationDetails(
                      imagePath: slideList[index]['imagePath'],
                      placeName: slideList[index]['placeName'],
                    ),
                  ),
                );
              }
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                slideList[index]['placeName'] != null
                    ? Hero(
                        tag: slideList[index]['imagePath'],
                        child: Container(
                          margin: EdgeInsets.all(8),
                          height: height,
                          width: itmeWidth,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(borderRadius),
                            child: Image.asset(
                              slideList[index]['imagePath'],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.all(8),
                        height: height,
                        width: itmeWidth,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(borderRadius),
                          child: Image.asset(
                            slideList[index]['imagePath'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                Container(
                  height: height,
                  width: itmeWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          AppColor.secondaryColor,
                          Colors.transparent,
                        ]),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                if (slideList[index]['placeName'] != null)
                  Positioned(
                    bottom: 25,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          text: slideList[index]['placeName'],
                        ),
                        ReusableText(
                          text: slideList[index]['placeCount'],
                          color: Colors.white24,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
