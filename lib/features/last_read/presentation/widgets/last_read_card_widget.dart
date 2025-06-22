import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/last_read_controller.dart';

class LastReadCardWidget extends StatelessWidget {
  const LastReadCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.find<LastReadController>();

    return c.obx(
      (lastRead) {
        if (lastRead == null) {
          return const Text("Belum ada bacaan terakhir.");
        }

        return Container(
          width: double.infinity,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                const Color(0xFF9055FF),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16.0.r),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.shade200.withOpacity(0.5),
                blurRadius: 10.r,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                right: -50.r,
                bottom: -100.r,
                child: SvgPicture.asset(
                  'lib/assets/images/logo_svg.svg',
                  height: 150.h,
                  width: 150.w,
                  placeholderBuilder: (_) => const CircularProgressIndicator(),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.menu_book,
                          color: Colors.white,
                          size: 20.r,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Riwayat Terakhir',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      lastRead.surahName,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '${lastRead.ayahCount} Ayat',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      onLoading: const CircularProgressIndicator(),
      onError: (msg) => Text("Gagal memuat: $msg"),
      onEmpty: const Text("Tidak ada data"),
    );
  }
}
