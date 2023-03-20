import 'package:academy/modules/academics/models/switch_academy_model.dart';
import 'package:academy/utils/colors.dart';
import 'package:academy/utils/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../entry_screen/entry_screen_routes.dart';

class AcademySwitch extends StatefulWidget {
  const AcademySwitch({super.key});
  static const String routeName = "/switchAcademy";

  @override
  State<AcademySwitch> createState() => _AcademySwitchState();
}

class _AcademySwitchState extends State<AcademySwitch> {
  @override
  Widget build(BuildContext context) {
    //list of Academies
    List<SwitcAcademy> switchAcademics = [];
    switchAcademics.add(
      SwitcAcademy(
          name: "Nuba",
          phoneNumOfAcademy: "0592622289",
          profileImage: "",
          numOfNotification: 19),
    );
    switchAcademics.add(
      SwitcAcademy(
          name: "Alahly",
          phoneNumOfAcademy: "0592622289",
          profileImage: "",
          numOfNotification: 4),
    );
    switchAcademics.add(
      SwitcAcademy(
          name: "Sourif",
          phoneNumOfAcademy: "0592622289",
          profileImage: "",
          numOfNotification: 8),
    );

    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        //background gradiant style
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.PRIMARY_GRADIANT_COLOR,
            AppColors.SECONDARY_GRADIANT_COLOR
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // top navbar
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: SizedBox(
                width: double.infinity,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Entry()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.TERNARY_COLOR,
                        size: 20,
                      ),
                    ),
                    Text(
                      "ACADEMES",
                      style: GoogleFonts.sourceCodePro(
                          color: AppColors.PRIMARY_TEXT, fontSize: 24),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.person_add_alt_sharp,
                            color: AppColors.SECONDARY_COLOR,
                            size: 35,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // list of academics
            Expanded(
              child: ListView.builder(
                  itemCount: switchAcademics.length,
                  itemBuilder: (context, index) {
                    final switchAcademy = switchAcademics[index];
                    // dismiss wedjet
                    return Dismissible(
                        background: Container(
                            color: AppColors.DANGER_COLOR,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(
                                  Icons.delete,
                                  size: 45,
                                  color: AppColors.TERNARY_COLOR,
                                ),
                              ],
                            )),
                        key: ValueKey<SwitcAcademy>(switchAcademics[index]),
                        onDismissed: (DismissDirection direction) {
                          setState(() {
                            switchAcademics.removeAt(index);
                          });
                        },
                        child: SizedBox(
                          height: 91,
                          width: double.infinity,
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 53,
                              backgroundColor: AppColors.TERNARY_COLOR,
                            ),
                            title: Text(
                              switchAcademy.name,
                              style: GoogleFonts.sourceCodePro(
                                color: AppColors.PRIMARY_TEXT,
                                fontSize: 14,
                              ),
                            ),
                            subtitle: Text(
                              switchAcademy.phoneNumOfAcademy.toString(),
                              style: GoogleFonts.sourceCodePro(
                                color: AppColors.PRIMARY_TEXT,
                                fontSize: 16,
                              ),
                            ),
                            trailing: Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  color: AppColors.DANGER_COLOR,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  switchAcademy.numOfNotification.toString(),
                                  style: GoogleFonts.sourceCodePro(
                                    color: AppColors.PRIMARY_TEXT,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ));
                  }),
            ),
            // Create new academy button
            Padding(
                padding: const EdgeInsets.all(30),
                child: CustomButton(
                  text: "CREATE NEW ACADEMY",
                  buttonWidth: double.infinity,
                ))
          ],
        ),
      )),
    );
  }
}
