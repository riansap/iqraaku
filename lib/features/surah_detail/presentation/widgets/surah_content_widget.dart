import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/widgets/surah_number_badge.dart';
import '../../domain/entities/surah_detail_entity.dart';

class SurahContentWidget extends StatelessWidget {
  final SurahDetailEntity surah;

  const SurahContentWidget({super.key, required this.surah});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final ayah = surah.ayah[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SurahNumberBadge(surahNumber: ayah.sequence.surah),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Text(
                        ayah.text,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.amiri(
                          fontSize: 28.sp,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          height: 2.h,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ayah.transliteration,
                    style: GoogleFonts.notoSans(
                      fontSize: 14.sp,
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.w,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ayah.translation,
                    style: GoogleFonts.notoSans(
                      fontSize: 14.sp,
                      color: Colors.grey.shade600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                if (index < surah.ayah.length - 1)
                  Column(
                    children: [
                      SizedBox(height: 12.h),
                      Divider(
                        color: Colors.grey.shade300,
                        thickness: 1.w,
                      ),
                    ],
                  ),
              ],
            ),
          );
        },
        childCount: surah.ayah.length,
      ),
    );
  }
}
