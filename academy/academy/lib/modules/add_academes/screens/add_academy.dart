import 'package:academy/modules/add_academes/models/add_academy_app_bar.dart';
import 'package:academy/modules/add_academes/models/special_row_text_field.dart';
import 'package:academy/modules/add_academes/models/upload_image.dart';
import 'package:academy/utils/custom_text_field.dart';
import 'package:academy/utils/small_button.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class AddAcademy extends StatelessWidget {
  static const routeName = '/addAcademyc_route';

  const AddAcademy({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    int div = 9;

    return Scaffold(
      appBar: AddAcademyAppBar(),
      body: Center(
        child: SizedBox(
          width: 0.9 * width,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 60),
                UploadImage(width: width, height: height),
                const SizedBox(height: 50),
                CustomTextField(
                  label: "Name",
                  hint: "Enter Academy name",
                  bottomMargin: 30,
                ),
                CustomTextField(
                  label: "E-MAIL ADDRESS",
                  hint: "Text2021@gmail.com",
                  bottomMargin: 30,
                ),
                CustomTextField(
                  label: "Mobile Number",
                  hint: "Enter-Mobile/phone Number",
                  bottomMargin: 35,
                ),
                SpecialRowTextField(width: width),
                const SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SmallButton(
                        text: "Close",
                        buttonColor: Color.fromRGBO(255, 255, 255, 0.08),
                        textColor: AppColors.TERNARY_COLOR),
                    SmallButton(
                        text: "Apply",
                        buttonColor: AppColors.SECONDARY_COLOR,
                        textColor: AppColors.PRIMARY_TEXT)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
