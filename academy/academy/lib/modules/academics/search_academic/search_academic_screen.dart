import 'package:academy/modules/academics/models/academy_model.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchForAcademic extends StatefulWidget {
  const SearchForAcademic({super.key});
  static const String routeName = "/searchAcademy";
  static const String routePage = "/SearchForAcademic";

  @override
  State<SearchForAcademic> createState() => _SearchForAcademicState();
}

class _SearchForAcademicState extends State<SearchForAcademic> {
  TextEditingController searchController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Academy> academics = [];
    academics.add(
      Academy(
          name: "Alahly",
          location: "Hebron",
          numOfTrainer: 14,
          numOfPlayer: 142),
    );
    academics.add(Academy(
        name: "Nuba", location: "Hebron", numOfTrainer: 14, numOfPlayer: 142));
    academics.add(Academy(
        name: "Sourif",
        location: "Hebron",
        numOfTrainer: 14,
        numOfPlayer: 142));
    academics.add(Academy(
        name: "Alkhader",
        location: "Bethlehem",
        numOfTrainer: 14,
        numOfPlayer: 142));
    academics.add(Academy(
        name: "Shabab Al-khaleel",
        location: "Hebron",
        numOfTrainer: 14,
        numOfPlayer: 142));

    return Scaffold(
      //body design
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/background_search_academic_screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: AppColors.PRIMARY_COLOR.withOpacity(0.8),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 170,
                decoration: const BoxDecoration(
                  color: AppColors.PRIMARY_COLOR,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SizedBox(
                        width: double.infinity,
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: AppColors.SECONDARY_COLOR,
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
                                    Icons.add,
                                    color: AppColors.SECONDARY_COLOR,
                                    size: 40,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SizedBox(
                        width: double.infinity,
                        height: 80,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 27),
                                child: SizedBox(
                                  height: 53,
                                  child: TextField(
                                    controller: searchController,
                                    style: const TextStyle(
                                        color: AppColors.PRIMARY_TEXT),
                                    decoration: const InputDecoration(
                                      hintText: "Search",
                                      hintStyle: TextStyle(
                                        color: AppColors.PRIMARY_TEXT,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: AppColors.PRIMARY_TEXT,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.SECONDARY_COLOR,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.SECONDARY_COLOR,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: AppColors.SECONDARY_COLOR,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 27, vertical: 17),
                              child: Container(
                                height: 53,
                                width: 53,
                                decoration: const BoxDecoration(
                                    color: AppColors.SECONDARY_COLOR,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.filter_alt_outlined,
                                      color: AppColors.TERNARY_COLOR,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: academics.length,
                    itemBuilder: (context, index) {
                      final academy = academics[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 12),
                        child: Container(
                          width: double.infinity,
                          height: 129,
                          decoration: const BoxDecoration(
                            border: Border.fromBorderSide(
                              BorderSide(
                                  width: 1,
                                  color: AppColors.SECONDARY_COLOR,
                                  style: BorderStyle.solid), //BorderSide
                            ), //
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: AppColors.PRIMARY_COLOR,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Container(
                                  width: 99,
                                  height: 99,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/profile.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            academy.name,
                                            style: GoogleFonts.sourceCodePro(
                                                color: AppColors.PRIMARY_TEXT,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            width: 60,
                                            height: 25,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "3.2",
                                                  style:
                                                      GoogleFonts.sourceCodePro(
                                                          color: AppColors
                                                              .PRIMARY_TEXT,
                                                          fontSize: 14),
                                                ),
                                                const Icon(
                                                  Icons.star,
                                                  color:
                                                      AppColors.SECONDARY_COLOR,
                                                  size: 20,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Location",
                                                    style: GoogleFonts
                                                        .sourceCodePro(
                                                            color: AppColors
                                                                .PRIMARY_TEXT,
                                                            fontSize: 12),
                                                  ),
                                                  Text(
                                                    academy.location,
                                                    style: GoogleFonts
                                                        .sourceCodePro(
                                                            color: AppColors
                                                                .SECONDARY_COLOR,
                                                            fontSize: 12),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Trainer",
                                                    style: GoogleFonts
                                                        .sourceCodePro(
                                                            color: AppColors
                                                                .PRIMARY_TEXT,
                                                            fontSize: 12),
                                                  ),
                                                  Text(
                                                    academy.numOfTrainer
                                                        .toString(),
                                                    style: GoogleFonts
                                                        .sourceCodePro(
                                                            color: AppColors
                                                                .SECONDARY_COLOR,
                                                            fontSize: 12),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Players",
                                                    style: GoogleFonts
                                                        .sourceCodePro(
                                                            color: AppColors
                                                                .PRIMARY_TEXT,
                                                            fontSize: 12),
                                                  ),
                                                  Text(
                                                    academy.numOfPlayer
                                                        .toString(),
                                                    style: GoogleFonts
                                                        .sourceCodePro(
                                                            color: AppColors
                                                                .SECONDARY_COLOR,
                                                            fontSize: 12),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
