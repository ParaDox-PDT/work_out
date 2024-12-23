part of 'widgets_part.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.title,
      required this.hintText,
      this.fillColor,
      required this.controller,
      required this.focusNode});

  final String title;
  final String hintText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography.footnoteRegular,
        ),
        8.g,
        TextFormField(
          style: AppTypography.captionRegular,
          cursorColor: Colors.white.withOpacity(0.5),
          controller: controller,
          focusNode: focusNode,
          onTapOutside: (event) => focusNode.unfocus(),
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            fillColor: fillColor ?? Colors.white.withOpacity(0.2),
            filled: true,
            hintText: hintText,
            hintStyle: AppTypography.captionRegular.copyWith(
              color: Colors.white.withOpacity(0.5),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        )
      ],
    );
  }
}
