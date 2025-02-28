import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/core/utils/styles.dart';
import 'package:easy_rest/core/widgets/custom_search_button.dart';
import 'package:easy_rest/features/home_feature/views/widgets/cateury_list.dart';
import 'package:easy_rest/features/home_feature/views/widgets/user_data_row.dart';
import 'package:easy_rest/features/home_feature/views/widgets/welcome_user_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize! * 2.5,
        ),
        child: Column(
          children: [
            UserDataRow(),
            WelcomeUserRow(),
            CustomSearchButton(),
            CateguryList(),
            ResturantsList(),
          ],
        ),
      ),
    );
  }
}

class ResturantsList extends StatelessWidget {
  const ResturantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Open Restaurants',
          style: TextAppStyles.mainText.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Color(
              0xff32343E,
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.defaultSize! * 35.5,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                bottom: SizeConfig.defaultSize! * 2.5,
              ),
              child: ResturantItem(),
            ),
          ),
        ),
      ],
    );
  }
}

class ResturantItem extends StatelessWidget {
  const ResturantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: SizeConfig.defaultSize! * 20,
          width: SizeConfig.defaultSize! * 37,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
            color: Color(0xff98A8B8),
          ),
        ),
        Text(
          'rose garden restaurant',
          style: TextAppStyles.mainText.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff181C2E),
          ),
        ),
        Text(
          'Burger - Chiken - Riche - Wings',
          style: TextAppStyles.mainText.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff181C2E),
          ),
        ),
        Row(
          children: [
            ResturantItemRow(
              icon: 'assets/images/Star 1.svg',
              text: '4.7',
            ),
            ResturantItemRow(
              icon: 'assets/images/Vector.svg',
              text: 'free',
            ),
            ResturantItemRow(
              icon: 'assets/images/Clock.svg',
              text: '20 min',
            ),
          ],
        )
      ],
    );
  }
}

class ResturantItemRow extends StatelessWidget {
  const ResturantItemRow({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: SizeConfig.defaultSize! * 2.5),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          SizedBox(
            width: SizeConfig.defaultSize! * 0.5,
          ),
          Text(
            text,
            style: TextAppStyles.mainText.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xff181C2E),
            ),
          ),
        ],
      ),
    );
  }
}
