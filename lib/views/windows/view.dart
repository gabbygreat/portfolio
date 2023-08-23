part of 'controller.dart';

class WindowsView extends StatelessView<WindowsScreen, WindowsController> {
  const WindowsView(WindowsController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImages.android,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Column(
                children: [
                  80.sbH,
                  Consumer(builder: (context, ref, _) {
                    final date = ref.watch(timeProvider);
                    return Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            DateFormat('h').format(date),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 90,
                            ),
                          ).google,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            DateFormat('mm').format(date),
                            style: const TextStyle(
                              height: 0.5,
                              color: Colors.white,
                              fontSize: 90,
                            ),
                          ).google,
                        ),
                        30.sbH,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            DateFormat('EEE, dd MMM').format(date),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ).google,
                        ),
                      ],
                    );
                  }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Cloudy 28°',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ).google,
                  ),
                  Expanded(
                    child: Wrap(
                      runAlignment: WrapAlignment.center,
                      spacing: 30,
                      runSpacing: 20,
                      children: [
                        for (int i = 1; i <= 7; i++)
                          const MobileIcon(
                            icon: AppSvg.facebook,
                            platformType: PlatformType.appleStyle,
                          ),
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.white,
                  ),
                  15.sbH,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MobileIcon(
                        icon: AppSvg.linkedIn,
                        showText: false,
                        platformType: PlatformType.googleStyle,
                      ),
                      MobileIcon(
                        icon: AppSvg.facebook,
                        showText: false,
                        platformType: PlatformType.googleStyle,
                      ),
                      MobileIcon(
                        icon: AppSvg.gmail,
                        showText: false,
                        platformType: PlatformType.googleStyle,
                      ),
                      MobileIcon(
                        icon: AppSvg.safari,
                        showText: false,
                        platformType: PlatformType.googleStyle,
                      ),
                    ],
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
