import 'package:animal_app/core/utils/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabSelectItem extends StatefulWidget {
  const TabSelectItem({super.key});

  @override
  State<TabSelectItem> createState() => _TabSelectItemState();
}

class _TabSelectItemState extends State<TabSelectItem> {
  String selectedCategory = '';

  final List<String> categories = [
    'All',
    'Cats',
    'Dogs',
    'Birds',
    'Fish',
    'Reptiles',
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 2.w,
          children: categories.map((category) {
            final isSelected = selectedCategory == category;

            return Column(
              children: [
                ChoiceChip(
                  showCheckmark: false,
                  selectedColor: AppColors.primary,
                  backgroundColor: AppColors.chipsUnSelectedColor,

                  selected: isSelected,

                  onSelected: (value) {
                    setState(() {
                      selectedCategory = category;
                    });
                  },

                  label: Text(
                    category,
                    style: TextStyle(
                      color: isSelected ? Colors.white : AppColors.primary,
                    ),
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
