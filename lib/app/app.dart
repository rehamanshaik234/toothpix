import 'package:flutter/material.dart';
import 'package:toothpix/app/theme.dart';
import 'package:toothpix/response_models/video.dart';
import 'package:toothpix/screens/connection/toothpix_connection.dart';
import 'package:toothpix/screens/dashboard_screen.dart';
import 'package:toothpix/screens/edit_profile.dart';
import 'package:toothpix/screens/history_details.dart';
import 'package:toothpix/screens/history_screen.dart';
import 'package:toothpix/screens/how_to_take_pic_screen.dart';
import 'package:toothpix/screens/index_screen.dart';
import 'package:toothpix/screens/login_screen.dart';
import 'package:toothpix/screens/pic_upload_screen.dart';
import 'package:toothpix/screens/signup_screen.dart';
import 'package:toothpix/screens/splash_screen.dart';
import 'package:toothpix/screens/thank_you.dart';
import 'package:toothpix/screens/video_screen.dart';
import 'package:toothpix/widgets/historyCard.dart';

class ToothPixApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        home: const ToothPixConnection(),
        routes: {
          IndexScreen.routeName: (context) => IndexScreen(),
          LoginScreen.routeName: (context) => LoginScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          Dashboard.routeName: (context) => Dashboard(),
          HowToScreen.routeName: (context) => HowToScreen(onGetStartedTap: (){}, videoResponse: VideoResponse()),
          PicUploadscreen.routeName: (context) => PicUploadscreen(),
          ThankYouScreen.routeName: (context) => ThankYouScreen(),
          VideoScreen.routeName: (context) => VideoScreen(videoId: '', videoName: '',),
          HistoryScreen.routeName: (context) => HistoryScreen(),
          HistoryDetails.routeName: (context) => HistoryDetails(recommendDate: '', id: '', status: RecommendationStatus.recommended,),
          ProfileScreen.routeName: (context) => ProfileScreen(),
        });
  }
}
