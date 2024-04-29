import 'package:online_shopping_grocery/utils.dart/colors.dart';
import 'package:online_shopping_grocery/utils.dart/file_collection.dart';

class HeaderWidget extends StatelessWidget {
  final IconData? leading1;
  final String? text1;
  final IconData? actions1;
  final bool? isCenterTitle;
  final Function? onActionPressed;

  const HeaderWidget({
    super.key,
    this.leading1,
    this.text1,
    this.actions1,
    this.isCenterTitle,
    this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: isCenterTitle ?? false,
      elevation: 0,
      backgroundColor: primaryRed,
      leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(leading1, color: whiteBackgroundColor, size: 26)),
      title: Text(text1 ?? '',
          style: const TextStyle(
              color: whiteBackgroundColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w500)),
      actions: [
        IconButton(
            onPressed: onActionPressed as void Function()?,
            icon: Icon(actions1, color: whiteBackgroundColor))
      ],
    );
  }
}
