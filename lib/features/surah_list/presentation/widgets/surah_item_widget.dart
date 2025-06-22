import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqraaku/core/widgets/surah_number_badge.dart';

import '../../../../core/domain/entities/surah_entity.dart';

class SurahItemWidget extends StatelessWidget {
  final SurahEntity surah;
  final VoidCallback onTap;

  const SurahItemWidget({
    super.key,
    required this.surah,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 0.w,
      ),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16.r),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // badge
              SurahNumberBadge(surahNumber: surah.sequence),
              SizedBox(width: 16.w),

              // nama surah latin
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      surah.nameLatinShort,
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '${surah.typeLatin} • ${surah.ayahCount} Ayat',
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              // nama surah arabic
              Text(
                surah.nameArabicShort,
                textAlign: TextAlign.right,
                style: GoogleFonts.amiri(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
