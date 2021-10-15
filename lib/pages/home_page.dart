import 'package:flutter/material.dart';
import 'package:rent_house/shared/theme.dart';
import 'package:rent_house/widgets/house_card_widget.dart';
import 'package:rent_house/widgets/recommended_house.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * NAV
    Widget nav() {
      return Padding(
        padding: EdgeInsets.all(30),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'assets/icon-nav.png',
            width: 18,
            height: 18,
          ),
        ),
      );
    }

    // * TITLE
    Widget title() {
      return Padding(
        padding: EdgeInsets.only(left: 30),
        child: Text(
          'Find Your\nPerfect Place!',
          style: blackTextStyle.copyWith(
            fontSize: 30,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    // * SEARCH
    Widget search() {
      return Container(
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.only(
          left: 20,
          right: 8,
        ),
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: kRedColor.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(1, 1),
            )
          ],
        ),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Find your dream home',
              hintStyle: greyTextStyle,
              border: InputBorder.none,
              suffixIcon: Container(
                width: 39,
                height: 39,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon-search.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    // * HOUSE CARD
    Widget houseCard() {
      return Container(
        height: 209,
        width: double.infinity,
        padding: EdgeInsets.only(left: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HouseCardWidget(
                imageUrl: 'assets/image-house1.png',
                name: 'Modern House',
                city: 'Bandung',
                rating: 4,
              ),
              HouseCardWidget(
                imageUrl: 'assets/image-house2.png',
                name: 'White House',
                city: 'Jakarta',
              ),
            ],
          ),
        ),
      );
    }

    // * RECOMMENDED HOUSE
    Widget recommendedHouse() {
      return Container(
        margin: EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommended For You',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            RecommendedHouse(
              imageUrl: 'assets/image-house3.png',
              name: 'Wooden House',
              city: 'Bandung',
              rating: 4,
            ),
            RecommendedHouse(
              imageUrl: 'assets/image-house4.png',
              name: 'Triangle House',
              city: 'Bogor',
              rating: 4,
            ),
            RecommendedHouse(
              imageUrl: 'assets/image-house5.png',
              name: 'Hill House',
              city: 'Makasar',
              rating: 5,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            nav(),
            title(),
            search(),
            houseCard(),
            recommendedHouse(),
          ],
        ),
      ),
    );
  }
}
