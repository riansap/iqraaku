import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqraaku/core/widgets/custom_button.dart';
import '../../../../core/enums/language.dart';
import '../../../../core/enums/theme.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../controllers/user_preferences_controller.dart';

class UserPreferencesPage extends StatefulWidget {
  const UserPreferencesPage({super.key});

  @override
  State<UserPreferencesPage> createState() => _UserPreferencesPageState();
}

class _UserPreferencesPageState extends State<UserPreferencesPage> {
  final _usernameController = TextEditingController();
  late final UserPreferencesController controller;
  bool hasSetUsername = false; // ✅ FLAG penyelamat

  @override
  void initState() {
    super.initState();
    controller = Get.find<UserPreferencesController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'User Preferences',
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () {
            final screenWidth = MediaQuery.of(context).size.width;
            final chipWidth = screenWidth * 0.4;

            final prefs = controller.prefs.value;

            if (prefs == null) {
              return const Center(child: CircularProgressIndicator());
            }

            if (!hasSetUsername) {
              _usernameController.text = prefs.username;
              hasSetUsername = true;
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 8.h),
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    hintText: 'Please enter your name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  "Theme",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: 8.h),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: AppTheme.values.map((theme) {
                      final isSelected = prefs.theme == theme;
                      final label =
                          theme == AppTheme.light ? '🌞 Light' : '🌙  Dark';

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: SizedBox(
                          width: chipWidth,
                          height: 44,
                          child: ChoiceChip(
                            label: Text(
                              label,
                              style: GoogleFonts.poppins(
                                color: isSelected
                                    ? Theme.of(context).colorScheme.onSecondary
                                    : Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                            selected: isSelected,
                            selectedColor: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.2),
                            backgroundColor:
                                Theme.of(context).colorScheme.surfaceVariant,
                            onSelected: (_) {
                              controller.prefs.value =
                                  prefs.copyWith(theme: theme);
                              Get.changeThemeMode(
                                theme == AppTheme.dark
                                    ? ThemeMode.dark
                                    : ThemeMode.light,
                              );
                            },
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 28.h),
                CustomButton(
                  onPressed: () {
                    controller.savePrefs(
                      _usernameController.text.trim(),
                      prefs.language,
                      prefs.theme,
                    );

                    Get.snackbar(
                      "✅ Success",
                      "User preferences saved successfully.",
                      snackPosition: SnackPosition.BOTTOM,
                      margin: const EdgeInsets.all(16),
                      colorText: Theme.of(context).colorScheme.onSurface,
                    );
                  },
                  borderRadius: BorderRadius.circular(30.r),
                  width: double.infinity,
                  height: 60.h,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: Text(
                    'Save',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                Spacer(flex: 1),
                // version 0.0.1
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Version 0.0.1",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      // made with ❤️
                      Text(
                        "Made with ❤️ by Rian Sap",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
