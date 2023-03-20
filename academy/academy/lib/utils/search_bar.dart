import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class Search_Bar extends StatelessWidget {
  final double screenwidth;
  const Search_Bar({super.key, required this.screenwidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.amber)
        border: Border(
            bottom: BorderSide(
              color: AppColors.TERNARY_COLOR,
            ),
            top: BorderSide(
              color: Colors.white38,
            )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: screenwidth * 0.6,
            child: TextFormField(
              style: TextStyle(
                color: AppColors.PRIMARY_TEXT,
              ),
              cursorColor: AppColors.PRIMARY_TEXT,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.PRIMARY_TEXT,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.PRIMARY_TEXT, width: 2),
                  borderRadius: BorderRadius.circular(35),
                ),
                labelStyle: TextStyle(color: AppColors.PRIMARY_TEXT),
                hintStyle: TextStyle(
                  color: AppColors.PRIMARY_TEXT,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.TERNARY_COLOR,
                ),
                hintText: "Search",
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: AppColors.PRIMARY_COLOR,
                  side: BorderSide(
                    width: 2.0,
                    color: AppColors.TERNARY_COLOR,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
              child: Icon(
                Icons.filter_alt_outlined,
              )),
        ],
      ),
    );
  }
}
