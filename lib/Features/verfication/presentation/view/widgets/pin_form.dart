import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Pin_Widget.dart';

class PinForm extends StatelessWidget {
   PinForm({super.key});
TextEditingController first = TextEditingController();
TextEditingController first2 = TextEditingController();
TextEditingController first3= TextEditingController();
TextEditingController first4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Pin_Widget(
          first: true,
          last: false,
          controller: first,
        ),
        const SizedBox(
          width: 20,
        ),
        Pin_Widget(
          first: false,
          last: false,
          controller: first2,
        ),
        const SizedBox(
          width: 20,
        ),
        Pin_Widget(
          first: false,
          last: false,
          controller: first3,
        ),
        const SizedBox(
          width: 20,
        ),
        Pin_Widget(
          first: false,
          last: true,
          controller: first4,
        ),
      ],
    );
  }
}
