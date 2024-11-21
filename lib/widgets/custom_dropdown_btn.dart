import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/utils/app_colors.dart';

class CustomDropdownBtn extends StatelessWidget {
  final DropdownItem? value;
  final List<DropdownItem> items;
  final ValueChanged<DropdownItem?> onChanged;
  final String? hintText;
  final FormFieldValidator<DropdownItem>? validator;

  const CustomDropdownBtn({
    super.key,
    this.value,
    required this.items,
    required this.onChanged,
    this.hintText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<DropdownItem>(
      items: items.map((DropdownItem item) {
        return DropdownMenuItem<DropdownItem>(
          value: item,
          child:
              Text(item.title, style: Theme.of(context).textTheme.bodyMedium),
        );
      }).toList(),
      onChanged: onChanged,
      validator: validator,
      value: value,
      hint: Text(
        hintText ?? 'select'.tr,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      style: Theme.of(context).textTheme.bodySmall,
      iconStyleData: IconStyleData(
        icon: value == null
            ? Icon(Icons.keyboard_arrow_down, color: primaryClr, size: 25.sp)
            : SizedBox.shrink(), // Empty widget when value is selected
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      menuItemStyleData: MenuItemStyleData(
        padding: EdgeInsets.only(left: 20.w, right: 8.w),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
        filled: true,
        fillColor: primaryClr.withValues(alpha: 0.1),
        suffixIcon: value != null
            ? IconButton(
                icon: Icon(Icons.clear, color: primaryClr, size: 25.sp),
                onPressed: () => onChanged(null), // Clear selection
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: primaryClr, width: 1.5.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: primaryClr, width: 1.5.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: primaryClr, width: 1.5.w),
        ),
      ),
    );
  }
}

class DropdownItem {
  final String title;
  final String value;

  DropdownItem({required this.title, required this.value});
}
