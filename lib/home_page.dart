import 'package:flutter/material.dart';
import 'package:travel_app_ui/common/app_slider.dart';
import 'package:travel_app_ui/common/reusable_text.dart';
import 'package:travel_app_ui/constant/colors.dart';
import 'package:travel_app_ui/constant/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 80,
        padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                AppColor.darkSecondaryColor,
                AppColor.secondaryColor,
              ],
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home_rounded,
              size: 40,
              color: AppColor.primaryColor,
            ),
            Icon(
              Icons.location_on_rounded,
              size: 40,
              color: Colors.white24,
            ),
            Icon(
              Icons.person_rounded,
              size: 40,
              color: Colors.white24,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.secondaryColor,
              AppColor.tertiaryColor,
            ],
          ),
        ),
        child: ListView(
          children: [
            // appbar
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableText(
                    text: 'Destination',
                    size: 24,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
            // destination slider
            AppSlider(
              height: 250,
              itmeWidth: 300,
              borderRadius: 20,
              slideList: destination,
            ),
            // hot destinations
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ReusableText(
                    text: 'Hot Destinations',
                    size: 22,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ReusableText(
                      text: 'More',
                      size: 15,
                      color: Colors.white24,
                    ),
                  ),
                ],
              ),
            ),
            // slider
            AppSlider(
              height: 250,
              itmeWidth: 160,
              borderRadius: 20,
              slideList: hotDestination,
            ),
            // reviews
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ReusableText(
                    text: 'Visiters Reviews',
                    size: 22,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ReusableText(
                      text: '22 Reviews',
                      size: 15,
                      color: Colors.white24,
                    ),
                  ),
                ],
              ),
            ),
            // comments
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 80),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://www.jowhareh.com/images/Jowhareh/galleries/poster_753e31af-8804-4dc8-a18a-9265e44173d2.jpeg"),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(text: "Diyar Naozary"),
                      SizedBox(height: 10),
                      Container(
                        width: MediaQuery.of(context).size.width - 140,
                        child: ReusableText(
                          color: Colors.white24,
                          size: 13,
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
