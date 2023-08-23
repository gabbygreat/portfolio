part of 'controller.dart';

class IphoneView extends StatelessView<IphoneScreen, IphoneController> {
  const IphoneView(IphoneController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.iPhone,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 200,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Awka',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ).apple,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  '83°',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ).apple,
                              ),
                              const Spacer(),
                              Align(
                                alignment: Alignment.topLeft,
                                child: SvgPicture.asset(
                                  AppSvg.cloud,
                                  width: 20,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  'Cloudy Sun',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ).apple,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              colorFilter: ColorFilter.srgbToLinearGamma(),
                              image: AssetImage(
                                AppImages.me,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Mobile App Dev',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ).apple,
                              const Text(
                                'GabbyGreat',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ).apple,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  150.sbH,
                  Expanded(
                    child: GridView.count(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      childAspectRatio: 1 / 1.3,
                      crossAxisCount: 4,
                      children: [
                        for (int i = 1; i <= 7; i++)
                          const MobileIcon(
                            icon: AppSvg.facebook,
                            platformType: PlatformType.appleStyle,
                          ),
                      ],
                    ),
                  ),
                  BlurryContainer(
                    blur: 100,
                    borderRadius: BorderRadius.circular(20),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MobileIcon(
                          icon: AppSvg.linkedIn,
                          showText: false,
                          platformType: PlatformType.googleStyle,
                          size: 80,
                        ),
                        MobileIcon(
                          icon: AppSvg.facebook,
                          showText: false,
                          platformType: PlatformType.googleStyle,
                          size: 80,
                        ),
                        MobileIcon(
                          icon: AppSvg.gmail,
                          showText: false,
                          platformType: PlatformType.googleStyle,
                          size: 80,
                        ),
                        MobileIcon(
                          icon: AppSvg.safari,
                          showText: false,
                          platformType: PlatformType.googleStyle,
                          size: 80,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
