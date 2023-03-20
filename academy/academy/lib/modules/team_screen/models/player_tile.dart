import 'package:academy/modules/team_screen/models/tile_data.dart';
import 'package:academy/utils/colors.dart';
import 'package:flutter/material.dart';

class PlayerTile extends StatelessWidget {
  TileData item;

  PlayerTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    double starlimit = 2.7;
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      leading: CircleAvatar(
        radius: 28,
        backgroundImage: AssetImage(item.img),
        backgroundColor: AppColors.SECONDARY_COLOR,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.name,
            style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: AppColors.SECONDARY_TEXT),
          ),
          const SizedBox(height: 4),
          Text(item.postion,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: AppColors.PRIMARY_TEXT,
              ))
        ],
      ),
      trailing: Column(
        children: [
          Container(
              child: (item.rate >= starlimit)
                  ? const Icon(
                      Icons.star,
                      color: AppColors.SECONDARY_COLOR,
                    )
                  : const Icon(
                      Icons.star_half_outlined,
                      color: AppColors.SECONDARY_COLOR,
                    )),
          Text(
            "${item.rate}",
            style: const TextStyle(color: AppColors.TERNARY_COLOR),
          ),
        ],
      ),
      // onTap: () {},
    );
  }
}
