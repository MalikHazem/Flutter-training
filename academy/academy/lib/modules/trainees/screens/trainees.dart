import 'package:academy/utils/chat.dart';
import 'package:academy/modules/trainees/models/trainees_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:academy/utils/colors.dart';

class Trainees extends StatefulWidget {
  const Trainees({super.key});
  static const routeName = "/Trainees";

  @override
  _TraineesState createState() => _TraineesState();
}

class _TraineesState extends State<Trainees> {
  List<Chat> items = List.of(TraineesData.chats);
  List<Chat> diplay = List.from(TraineesData.chats);

  void updatelist(String value) {
    setState(() {
      items = TraineesData.chats
          .where((element) =>
              element.username.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.PRIMARY_COLOR,

          // body: toggle(),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.TERNARY_COLOR,
                      ),
                    ),
                    Text(
                      "Trainees",
                      style: TextStyle(
                          color: AppColors.TERNARY_COLOR,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_add_alt_1_rounded,
                          color: AppColors.TERNARY_COLOR,
                        ))
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.0425),
                SizedBox(
                  // width: MediaQuery.of(context).size.width * 0.683,
                  height: MediaQuery.of(context).size.height * 0.0609,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.683,
                            child: TextField(
                              style: TextStyle(color: AppColors.TERNARY_COLOR),
                              onChanged: (value) => updatelist(value),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: AppColors.TERNARY_COLOR,
                                ),

                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppColors.SECONDARY_COLOR),
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.SECONDARY_COLOR),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                // filled: true,
                                // hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "Search",
                                hintStyle: const TextStyle(
                                  color: AppColors.TERNARY_COLOR,
                                ),
                                fillColor: Colors.white70,
                              ),
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.128,
                          height: MediaQuery.of(context).size.height * 0.0609,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              border:
                                  Border.all(color: AppColors.SECONDARY_COLOR)),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.0609,
                            height: MediaQuery.of(context).size.height * 0.0206,
                            child: IconButton(
                                color: AppColors.SECONDARY_COLOR,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.filter_alt_outlined,
                                )),
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04137,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7183,
                  child: ListView.builder(
                    itemCount: items.length,
                    //  : (context, index) => Divider(),
                    itemBuilder: (context, index) {
                      final item = items[index];

                      return (Column(
                        children: [
                          Slidable(
                            // Specify a key if the Slidable is dismissible.
                            key: const ValueKey(0),

                            // The start action pane is the one at the left or the top side.

                            // The end action pane is the one at the right or the bottom side.
                            endActionPane: ActionPane(
                              extentRatio: 0.20,
                              motion: ScrollMotion(),
                              children: [
                                Container(

                                    // color: AppColors.DANGER_COLOR,
                                    child: Expanded(
                                        child: Column(children: [
                                  SlidableAction(
                                    // An action can be bigger than the others.

                                    onPressed: (delete) => dismissItem(
                                      context,
                                      index,
                                    ),
                                    backgroundColor: AppColors.DANGER_COLOR,
                                    foregroundColor: Colors.white,
                                    icon: Icons.delete,
                                  ),
                                  SlidableAction(
                                    onPressed: null,
                                    backgroundColor: AppColors.DANGER_COLOR,
                                    foregroundColor: Colors.white,
                                    icon: FontAwesomeIcons.userPen,
                                  ),
                                ])))
                              ],
                            ),

                            // The child of the Slidable is what the user sees when the
                            // component is not dragged.
                            child: buildListTile(item),
                          ),
                        ],
                      ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  void dismissItem(
    BuildContext context,
    int index,
    // DismissDirection direction,
  ) {
    setState(() {
      items.removeAt(index);
    });

    // switch (direction) {
    //   case DismissDirection.endToStart:
    //     Utils.showSnackBar(context, 'Chat has been deleted');
    //     break;
    //   case DismissDirection.startToEnd:
    //     Utils.showSnackBar(context, 'Chat has been archived');
    //     break;
    //   default:
    //     break;
    // }
  }

  Widget buildListTile(Chat item) => ListTile(
        contentPadding: EdgeInsets.symmetric(
          // horizontal: 16,
          vertical: 16,
        ),
        leading: CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(
            item.urlAvatar,
          ),
          backgroundColor: AppColors.SECONDARY_COLOR,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.username,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.SECONDARY_TEXT),
            ),
            const SizedBox(height: 4),
            Text(item.message,
                style: TextStyle(
                  color: AppColors.PRIMARY_TEXT,
                ))
          ],
        ),
        trailing: Column(
          children: [
            Icon(
              Icons.star,
              color: AppColors.SECONDARY_COLOR,
            ),
            Text(
              "3.5",
              style: TextStyle(color: AppColors.TERNARY_COLOR),
            ),
          ],
        ),
        onTap: () {},
      );
}
