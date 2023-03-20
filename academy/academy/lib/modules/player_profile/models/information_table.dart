import 'package:academy/modules/player_profile/models/table_cells.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class InformationTable extends StatelessWidget {
  InformationTable({super.key});
  var list = [
    {"title1": "Birth Date", "title2": "2012-Sep-06"},
    {"title1": "Join Date", "title2": "2021-Oct-18"},
    {"title1": "Country", "title2": "Ramallah"},
    {"title1": "Recent Training", "title2": "2021-Nov-02"},
    {"title1": "#Training", "title2": "2012-Sep-06"},
  ];

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(150),
      },
      border: TableBorder.all(width: 1, color: AppColors.PRIMARY_TEXT),
      children: <TableRow>[
        ...list.map((data) {
          return TableRow(children: <Widget>[
            CustomTableCell(title: data["title1"], is_bold: true),
            CustomTableCell(title: data["title2"], is_bold: false),
          ]);
        }),
      ],
    );
  }
}
