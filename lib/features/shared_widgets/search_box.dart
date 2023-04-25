import 'package:flutter/material.dart';

import '../../constants/color_selection.dart';
import '../../constants/utils.dart';
import '../../helpers/theme/theme.dart';

class SearchBoxContainer extends StatelessWidget {
  const SearchBoxContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: InputTextSearch(
        hintText: text,
        isEnabled: false,
      ),
    );
  }
}

class InputTextSearch extends StatelessWidget {
  final String hintText;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool isEnabled;

  // final TextEditingController controller;
  //TODO: learn how to use voidcallback here
  final dynamic onSave;
  final dynamic validator;
  final void Function()? onTap;
  const InputTextSearch({
    Key? key,
    required this.hintText,
    this.textInputAction,
    this.keyboardType,
    this.onSave,
    this.validator,
    required this.isEnabled,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: TextFormField(
        // controller: controller,
        key: key,

        onChanged: (change) {},
        onSaved: onSave,
        validator: validator,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        enabled: isEnabled,
        onTap: onTap,
        cursorColor: Colors.black,
        // style:
        //     textTheme(context).bodyText1?.copyWith(color: ColorConst.blackTwo),
        decoration: InputDecoration(
            fillColor: ColorsConst.blackFive.withOpacity(0.3),
            filled: true,

            // floatingLabelBehavior: FloatingLabelBehavior.auto,
            // labelText: hintText,
            // labelStyle:
            //     textTheme(context).caption?.copyWith(color: Colors.black),

            // prefixIcon: Icon(Icons.email),
            contentPadding: const EdgeInsets.only(
              left: 19.0,
              bottom: 10.0,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: smallBoxCornerRadius,
              borderSide: BorderSide(
                  color: colorScheme(context).secondaryContainer, width: 1),
            ),
            hintText: hintText,
            focusedBorder: OutlineInputBorder(
              borderRadius: smallBoxCornerRadius,
              borderSide: BorderSide(
                  color: colorScheme(context).secondaryContainer, width: 1),
            ),

            // errorText: "faliure",
            hintStyle: textTheme(context)
                .bodyMedium
                ?.copyWith(color: ColorsConst.blackThree)),
      ),
    );
  }
}
