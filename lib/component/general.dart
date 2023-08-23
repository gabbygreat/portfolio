import 'package:portfolio/utils/utils.dart';

class MobileIcon extends StatelessWidget {
  final bool showText;
  final PlatformType platformType;
  final String icon;
  final double? size;
  const MobileIcon({
    super.key,
    required this.icon,
    required this.platformType,
    this.showText = true,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: platformType == PlatformType.appleStyle
                ? Colors.white
                : Colors.transparent,
            borderRadius: platformType == PlatformType.appleStyle
                ? BorderRadius.circular(15)
                : null,
          ),
          child: SvgPicture.asset(
            icon,
            width: size ,
          ),
        ),
        if (showText)
          Column(
            children: [
              5.sbH,
              const Text(
                'LinkedIn',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ).apple,
            ],
          ),
      ],
    );
  }
}
