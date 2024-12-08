import 'package:booklyapp/Features/Home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:booklyapp/core/utilities/app_router.dart';
import 'package:booklyapp/core/utilities/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:get/get.dart';
// import 'package:get/get_connect/http/src/utils/utils.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/bottomsheet/bottomsheet.dart';
// import 'package:get/get_navigation/src/nav2/get_nav_config.dart';

import '../../../../../contants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin
{


  late AnimationController animationsController ;
  late Animation<Offset>  slidingAnimation ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    initSlidingAnimation();
    navigateToHome();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationsController.dispose();


  }



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children:
      [
        Image.asset(AssetsData.logo,
        ),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),

      ],
    );
  }

  void initSlidingAnimation() {
    animationsController = AnimationController(
      vsync: this ,
      duration:  const Duration(seconds: 2), );


    slidingAnimation = Tween<Offset>(begin: const Offset( 0, 2 ) , end:Offset.zero ).animate(animationsController);

    animationsController.forward();
  }

 navigateToHome() async{
        await Future.delayed(const Duration(milliseconds: 2500 , ),(){
          // Get.to(()=>const HomeView(),
          // transition: Transition.fadeIn,
          //   duration: kTransitionDuration,
          // );

          GoRouter.of(context).push(AppRouter.kHomeView);

        });

      }
  }



