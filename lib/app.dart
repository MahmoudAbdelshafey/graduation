import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helwan_graduation_project/Features/onboarding/presentation/view/onboarding_page.dart';
import 'package:helwan_graduation_project/Features/splash/presentation/view/splash_view.dart';

import 'Features/navbar/presentation/view/nav_bar_widget.dart';
import 'core/themes/app_theme.dart';
import 'logic/cubit/theme_cubit.dart';

class MyApp extends StatefulWidget {




  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void didChangePlatformBrightness() {
    context.read<ThemeCubit>().updateAppTheme();
    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child:  ThemeChange(),
    );
  }
}

class ThemeChange extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ThemeCubit>(context).onBoardingSeen();
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      title: 'Helwan Graduation Project',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
       themeMode: context.select(
                    (ThemeCubit themeCubit) => themeCubit.state.themeMode),
      // home: SplashView(),
      home: MyHomePages(),
    );
  }
}
