import 'package:flutter/material.dart';

class TextFieldBox extends StatelessWidget {
  final String placeholder;
  final bool isPassword;

  const TextFieldBox(
      {super.key, required this.placeholder, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
        hintText: placeholder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true);

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      obscureText: isPassword,
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
