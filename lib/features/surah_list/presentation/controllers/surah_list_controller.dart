import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/domain/entities/surah_entity.dart';
import '../../../../core/services/surah_service.dart';
import '../../../../routes/app_routes.dart';

class SurahListController extends GetxController
    with StateMixin<List<SurahEntity>> {
  final SurahService surahService;

  SurahListController(this.surahService);

  final searchQuery = ''.obs;
  final searchController = TextEditingController();
  final searchFocusNode = FocusNode();

  final filteredSurahs = <SurahEntity>[].obs;

  @override
  void onInit() {
    super.onInit();

    // listener search input
    searchController.addListener(() {
      searchQuery.value = searchController.text;
    });

    searchQuery.listen((_) => filterSurahs());

    _fetchAndSetSurahs();
  }

  // ambil daftar surah dari service (jika belum ada, fetch)
  void _fetchAndSetSurahs() async {
    if (!surahService.hasFetched) {
      // fetch daftar surah
      final result = await surahService.fetchSurahs();

      result.fold(
        (failure) {
          change(null, status: RxStatus.error(failure.message));
          Get.snackbar(
            "Error",
            "Gagal memuat daftar surah: ${failure.message}",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.redAccent,
            colorText: Colors.white,
          );
        },
        (_) {
          change(surahService.surahs, status: RxStatus.success());
          filteredSurahs.assignAll(surahService.surahs);
        },
      );
    } else {
      change(surahService.surahs, status: RxStatus.success());
      filteredSurahs.assignAll(surahService.surahs);
    }
  }

  void filterSurahs() {
    final query = searchQuery.value.toLowerCase();
    final all = surahService.surahs;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (query.isEmpty) {
        filteredSurahs.assignAll(all);
      } else {
        filteredSurahs.assignAll(
          all.where((surah) =>
              surah.nameLatinShort.toLowerCase().contains(query) ||
              surah.nameLatinLong.toLowerCase().contains(query)),
        );
      }
    });
  }

  void reset() {
    searchQuery.value = '';
    searchController.clear();
    searchFocusNode.unfocus();
    filteredSurahs.assignAll(surahService.surahs);
  }

  void goToSurahDetails(int surahNumber) {
    Get.toNamed(AppRoutes.surahDetail, arguments: surahNumber);
  }

  @override
  void onClose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.onClose();
  }
}
