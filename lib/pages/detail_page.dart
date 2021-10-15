import 'package:flutter/material.dart';
import 'package:rent_house/shared/theme.dart';
import 'package:rent_house/widgets/house_facilities_widget.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * DETAIL IMAGE
    Widget detailImage() {
      return Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image-house1.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    // * DETAIL DESCRIPTION
    Widget detailDescription() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // * ICON BACK
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 20, left: 20, bottom: 206),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon-back.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // * DESCRIPTION
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: kWhiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * SECTION 1
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Modern House',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: semiBold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'KBP Bandung, Indonesia',
                            style: greyTextStyle,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: kRedColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: kRedColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: kRedColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: kRedColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: kGreyColor,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                // * SECTION 2
                Text(
                  'Listing Agent',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/user1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'De Kezia',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            'House Owner',
                            style: greyTextStyle.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon-message.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon-call.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                // * SECTION 4
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'House Facilities',
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            HouseFacilitiesWidget(
                              imageUrl: 'assets/image-facilities1.png',
                              name: 'Swimming Pool',
                            ),
                            HouseFacilitiesWidget(
                              imageUrl: 'assets/image-facilities2.png',
                              name: '4 Bedroom',
                            ),
                            HouseFacilitiesWidget(
                              imageUrl: 'assets/image-facilities3.png',
                              name: 'Garage',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                // * SECTION 5
                Text(
                  'Description',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Luxury homes at affordable prices with Bandung\'s hilly atmosphere. Located in a strategic location, flood free.',
                  style: greyTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                  maxLines: 3,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: greyTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: semiBold,
                            ),
                          ),
                          Text(
                            '\$7,500',
                            style: purpleTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 196,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPurpleColor,
                      ),
                      child: Center(
                        child: Text(
                          'Book Now',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              detailImage(),
              detailDescription(),
            ],
          ),
        ),
      ),
    );
  }
}
