import 'package:portfolio/utils/utils.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        var screenSize = context.screenSize;
        var size = const Size(360, 700);
        if (screenSize == ScreenSize.large) {
          size = const Size(1440.0, 900.0);
        } else if (screenSize == ScreenSize.small) {
          size = const Size(430.0, 932.0);
        } else {
          size = const Size(1124.0, 675.0);
        }
        return ScreenUtilInit(
          designSize: size,
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const HomeScreen(),
            );
          },
        );
      },
    );
  }
}
