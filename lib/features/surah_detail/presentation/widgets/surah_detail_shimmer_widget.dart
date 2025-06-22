import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SurahDetailShimmer extends StatelessWidget {
  const SurahDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // warna shimmer disesuaikan dengan mode terang/gelap
    final baseColor = isDark ? Colors.grey.shade800 : Colors.grey.shade300;
    final highlightColor = isDark ? Colors.grey.shade700 : Colors.grey.shade100;
    final blockColor = isDark ? Colors.grey.shade900 : Colors.white;

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(16.w),
          sliver: SliverToBoxAdapter(
            child: Shimmer.fromColors(
              baseColor: baseColor,
              highlightColor: highlightColor,
              child: Container(
                height: 215.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: blockColor,
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Shimmer.fromColors(
                  baseColor: baseColor,
                  highlightColor: highlightColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 28.h,
                        width: double.infinity,
                        color: blockColor,
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        height: 16.h,
                        width: double.infinity,
                        color: blockColor,
                      ),
                      SizedBox(height: 6.h),
                      Container(
                        height: 14.h,
                        width: MediaQuery.of(context).size.width * 0.7,
                        color: blockColor,
                      ),
                      SizedBox(height: 16.h),
                      Divider(
                        color: baseColor,
                        thickness: 0.5,
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: 6,
          ),
        ),
      ],
    );
  }
}
