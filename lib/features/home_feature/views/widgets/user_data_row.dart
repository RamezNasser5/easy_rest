import 'package:easy_rest/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserDataRow extends StatelessWidget {
  const UserDataRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: SizeConfig.defaultSize! * 2.5,
        top: SizeConfig.defaultSize! * 4,
      ),
      child: Row(
        children: [
          Container(
            height: SizeConfig.defaultSize! * 5,
            width: SizeConfig.defaultSize! * 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffECF0F4),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                'assets/images/Menu.svg',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14,
              right: MediaQuery.of(context).size.width * 0.33,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deliver to',
                  style: TextStyle(
                    color: Color(0xffFC6E2A),
                    fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Halal Lab office',
                  style: TextStyle(
                    color: Color(0xff676767),
                    fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'assets/images/Cart.svg',
          ),
        ],
      ),
    );
  }
}
