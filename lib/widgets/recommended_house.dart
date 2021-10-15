import 'package:flutter/material.dart';
import 'package:rent_house/pages/detail_page.dart';
import 'package:rent_house/shared/theme.dart';

class RecommendedHouse extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String city;
  final int rating;

  RecommendedHouse({
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
        height: 100,
        margin: EdgeInsets.only(bottom: 16),
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: kRedColor.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    city,
                    style: greyTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: regular,
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
            Icon(
              Icons.chevron_right,
              size: 18,
              color: kBlackColor,
            ),
          ],
        ),
      ),
    );
  }
}
