import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, this.isActive = false});
  final DrawerItemModel drawerItemModel;
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InactiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Align(
          alignment: AlignmentDirectional.centerStart,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              drawerItemModel.title,
              style: AppStyles.styleRegular16(context).copyWith(
                color: const Color(0xff064061),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        leading: SvgPicture.asset(
          drawerItemModel.image,
          colorFilter: const ColorFilter.mode(
            Color.fromARGB(255, 47, 144, 199),
            BlendMode.srcIn,
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional.centerStart,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              drawerItemModel.title,
              style: AppStyles.styleBold16(context).copyWith(
                color: const Color(0xff4EB7F2),
              ),
            ),
          ),
        ),
        trailing: Container(
          color: const Color(0xff4EB7F2),
          width: 3.27,
        ),
      ),
    );
  }
}
