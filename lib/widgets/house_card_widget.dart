import 'package:flutter/material.dart';
import 'package:rent_house/pages/detail_page.dart';
import 'package:rent_house/shared/theme.dart';

class HouseCardWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String city;
  final int rating;

  HouseCardWidget({
    required this.imageUrl,
    required this.name,
    required this.city,
    this.rating = 0,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailPage();
            },
          ),
        );
      },
      child: Container(
        width: 231,
        height: 209,
        margin: EdgeInsets.only(
          right: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              padding: EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          city,
                          style: greyTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: regular,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 12,
                        color: rating >= 1 ? kRedColor : kGreyColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: rating >= 2 ? kRedColor : kGreyColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: rating >= 3 ? kRedColor : kGreyColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: rating >= 4 ? kRedColor : kGreyColor,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: rating >= 5 ? kRedColor : kGreyColor,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
