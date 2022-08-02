import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class YaoTextField {
  static Widget textField(String title,
      {bool isPassword = false,
      bool isNumber = false,
      int? lenght,
      int lines = 1,
      TextEditingController? textController}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          const SizedBox(
            height: 2,
          ),
          TextFormField(
            maxLines: lines,
            controller: textController,
            maxLength: lenght,
            inputFormatters: [
              LengthLimitingTextInputFormatter(lenght),
            ],
            obscureText: isPassword,
            keyboardType: isNumber ? TextInputType.number : TextInputType.text,
            decoration: const InputDecoration(
                counterText: '',
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true),
          )
        ],
      ),
    );
  }
}
