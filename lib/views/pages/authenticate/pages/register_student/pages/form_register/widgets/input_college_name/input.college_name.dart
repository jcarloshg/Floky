import 'package:floky/views/utils/abstract.input.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CollegeNameInput extends StatefulWidget {
  const CollegeNameInput({super.key, required this.control});

  final TextEditingController control;

  @override
  State<CollegeNameInput> createState() => _CollegeNameInputState();
}

class _CollegeNameInputState extends State<CollegeNameInput>
    with InputAbstract {
  //

  final String label = "Nombre de la institución";
  final collegeName = 'BUBAL';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all()),
      margin: EdgeInsets.only(top: Spacers.size5),
      child: DropdownButton<String>(
        value: collegeName,
        isExpanded: true,
        items: [
          DropdownMenuItem<String>(
            value: collegeName,
            child: Titles.text('name1'),
          ),
          DropdownMenuItem<String>(
            value: 'name2',
            child: Titles.text('name2'),
          ),
          DropdownMenuItem<String>(
            value: 'name3',
            child: Titles.text('name3'),
          ),
          DropdownMenuItem<String>(
            value: 'name4',
            child: Titles.text('name4'),
          ),
        ],
        onChanged: (value) {},
      ),

      // child: DropdownButton(
      //   items: [
      //     DropdownMenuItem<String>(child: Titles.text('name')),
      //     DropdownMenuItem<String>(child: Titles.text('name')),
      //     DropdownMenuItem<String>(child: Titles.text('name')),
      //     DropdownMenuItem<String>(child: Titles.text('name')),
      //   ],
      //   value: 'HOLA',
      //   onChanged: null,
      // ),
      // child: TextFormField(
      //   keyboardType: TextInputType.name,
      //   autovalidateMode: AutovalidateMode.onUserInteraction,
      //   controller: control,
      //   autocorrect: false,
      //   validator: (value) => validateValue(value),
      //   decoration: inputDecoration(labelText: label),
      // ),
    );
  }

  @override
  String? validateValue(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return 'El $label completo es requerido.';
    return null;
  }
}
