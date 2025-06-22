import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final Color? disabledColor;
  final Color? loadingColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final bool isLoading;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
    this.disabledColor,
    this.loadingColor,
    this.padding,
    this.borderRadius,
    this.isLoading = false,
    this.width,
    this.height,
  });

  bool get isDisabled => onPressed == null || isLoading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: isDisabled
          ? disabledColor ?? theme.colorScheme.onSurface.withOpacity(0.12)
          : backgroundColor ?? theme.colorScheme.primary,
      borderRadius: borderRadius ?? BorderRadius.circular(8),
      child: InkWell(
        onTap: isDisabled ? null : onPressed,
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        splashColor: isDisabled
            ? Colors.transparent
            : theme.colorScheme.onPrimary.withOpacity(0.2),
        child: Container(
          width: width,
          height: height,
          padding: padding ?? const EdgeInsets.all(16),
          child: Center(
            child: isLoading
                ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: loadingColor ?? theme.colorScheme.onPrimary,
                    ),
                  )
                : DefaultTextStyle.merge(
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: isDisabled
                          ? theme.colorScheme.onSurface
                          : theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                    child: child,
                  ),
          ),
        ),
      ),
    );
  }
}
