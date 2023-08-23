part of 'controller.dart';

class MacOsView extends StatelessView<MacOsScreen, MacOsController> {
  const MacOsView(MacOsController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.macbook,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  BlurryContainer(
                    borderRadius: BorderRadius.zero,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        const Text(
                          'Finder',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ).google,
                        15.sbW,
                        const Text(
                          'About Me',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ).google,
                        15.sbW,
                        const Text(
                          'Contact',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ).google,
                        15.sbW,
                        const Text(
                          'My Projects',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ).google,
                        const Spacer(),
                        Consumer(builder: (context, ref, _) {
                          final date = ref.watch(timeProvider);
                          return Row(
                            children: [
                              Text(
                                DateFormat('EEE, dd MMM').format(date),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ).google,
                              5.sbW,
                              Text(
                                DateFormat('h:mm a').format(date),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ).google,
                              30.sbH,
                            ],
                          );
                        }),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 20,
                        ),
                        width: MediaQuery.sizeOf(context).width * 0.2,
                        child: GridView.count(
                          childAspectRatio: (1 / 1.1).r,
                          crossAxisCount: 2,
                          crossAxisSpacing: 5.w,
                          mainAxisSpacing: 20.h,
                          children: [
                            for (int i = 1; i <= 7; i++)
                              const MobileIcon(
                                icon: AppSvg.facebook,
                                platformType: PlatformType.appleStyle,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  BlurryContainer(
                    blur: 100,
                    borderRadius: BorderRadius.circular(20),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const MobileIcon(
                          icon: AppSvg.linkedIn,
                          showText: false,
                          platformType: PlatformType.appleStyle,
                        ),
                        20.sbW,
                        const MobileIcon(
                          icon: AppSvg.facebook,
                          showText: false,
                          platformType: PlatformType.appleStyle,
                        ),
                        20.sbW,
                        const MobileIcon(
                          icon: AppSvg.gmail,
                          showText: false,
                          platformType: PlatformType.appleStyle,
                        ),
                        20.sbW,
                        const MobileIcon(
                          icon: AppSvg.safari,
                          showText: false,
                          platformType: PlatformType.appleStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
