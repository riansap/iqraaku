import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iqraaku/features/surah_detail/presentation/widgets/surah_detail_shimmer_widget.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../controllers/surah_detail_controller.dart';
import '../widgets/surah_content_widget.dart';
import '../widgets/surah_header_card_widget.dart';

class SurahDetailPage extends GetView<SurahDetailController> {
  const SurahDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: controller.obx(
          (surah) => CustomAppBar(
            title: surah!.name.latin.long,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          onLoading: CustomAppBar(
            title: 'Loading ...',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          onError: (msg) => CustomAppBar(
            title: 'Bad Request',
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        ),
      ),
      body: controller.obx(
        (surah) => CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(16.w),
              sliver: SliverToBoxAdapter(
                child: SurahHeaderCardWidget(
                  surahName: surah!.name.latin.long,
                  totalVerse: surah.ayahCount,
                  type: surah.type.latin,
                  surahNameArabic: surah.name.arabic.long,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        'lib/assets/images/bismillah_svg.svg',
                        height: 50.h,
                        width: 50.w,
                        placeholderBuilder: (BuildContext context) =>
                            const CircularProgressIndicator(),
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).primaryColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),

            // surah content (ayat-ayat)
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              sliver: SurahContentWidget(surah: surah),
            ),
          ],
        ),
        onLoading: const SurahDetailShimmer(),
        onError: (msg) => Center(child: Text('Error: $msg')),
      ),
    );
  }
}
