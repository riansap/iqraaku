import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/surah_list_controller.dart';
import 'surah_item_widget.dart';

class SurahListSectionWidget extends GetView<SurahListController> {
  const SurahListSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Surah',
          style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.onSurface),
        ),
        SizedBox(height: 16.h),

        // search input
        TextField(
          controller: controller.searchController,
          focusNode: controller.searchFocusNode,
          onChanged: (value) => controller.searchQuery.value = value,
          clipBehavior: Clip.none,
          decoration: InputDecoration(
            hintText: 'Cari surah ...',
            prefixIcon: const Icon(Icons.search),
            hintStyle: GoogleFonts.poppins(
              color: Colors.grey.shade600,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            helperStyle: GoogleFonts.poppins(
              color: Colors.transparent,
            ),
          ),
          enableSuggestions: false,
          autocorrect: false,
          keyboardType: TextInputType.text,
          maxLength: 30,
          style: GoogleFonts.poppins(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),

        // surah list
        Expanded(
          child: controller.obx(
            (_) => Obx(
              () {
                final surahs = controller.filteredSurahs;
                if (surahs.isEmpty) {
                  return Center(
                    child: Text(
                      'No surahs found.',
                      style: GoogleFonts.poppins(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: surahs.length,
                  physics: const BouncingScrollPhysics(),
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  itemBuilder: (context, index) {
                    final surah = surahs[index];
                    return SurahItemWidget(
                      surah: surah,
                      onTap: () => controller.goToSurahDetails(surah.sequence),
                    );
                  },
                  padding: REdgeInsets.only(bottom: 16.h),
                );
              },
            ),
            onLoading: Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
                strokeWidth: 5.w,
              ),
            ),
            onError: (error) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, color: Colors.red, size: 50.h),
                  SizedBox(height: 10.h),
                  Text(
                    'Error: Failed to fetch surahs list from the server.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(color: Colors.red),
                  ),
                  SizedBox(height: 20.h),
                  ElevatedButton(
                    onPressed: controller.surahService.fetchSurahs,
                    child: const Text('Refresh'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
