import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../routes/route_observer.dart';
import '../../../last_read/presentation/controllers/last_read_controller.dart';
import '../../../surah_list/presentation/controllers/surah_list_controller.dart';
import '../../../surah_list/presentation/widgets/surah_list_section_widget.dart';
import '../controllers/home_controller.dart';
import '../widgets/greetings_widget.dart';
import '../../../last_read/presentation/widgets/last_read_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with RouteAware {
  final homeController = Get.find<HomeController>();
  final surahListController = Get.find<SurahListController>();
  final lastReadController = Get.find<LastReadController>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      surahListController.reset();
      lastReadController.fetchLastRead();
    });
  }

  @override
  void didPopNext() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      surahListController.reset();
      lastReadController.fetchLastRead();
    });
  }

  // fungsi back button
  Future<bool> _showExitConfirmationDialog() async {
    return await Get.defaultDialog<bool>(
          title: "Keluar Aplikasi?",
          titleStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
          content: Text(
            "Apakah Anda yakin ingin keluar dari aplikasi?",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              color: Theme.of(Get.context!).colorScheme.onSurface,
            ),
          ),
          confirmTextColor: Colors.white,
          textConfirm: "Ya",
          textCancel: "Tidak",
          cancelTextColor: Theme.of(Get.context!).colorScheme.primary,
          buttonColor: Theme.of(Get.context!).colorScheme.primary,
          barrierDismissible: false,
          contentPadding: const EdgeInsets.all(16),
          onConfirm: () {
            Get.back(result: true);
          },
          onCancel: () {
            Get.back(result: false);
          },
          radius: 10.r,
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        if (didPop) {
          return;
        }

        final bool shouldPop = await _showExitConfirmationDialog();
        if (shouldPop) {
          // keluar dari aplikasi
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Home',
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => homeController.goToUserPreferences(),
            )
          ],
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GreetingsWidget(),
              SizedBox(height: 24.h),
              LastReadCardWidget(),
              SizedBox(height: 20.h),
              Expanded(
                child:
                    // surah list
                    SurahListSectionWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
