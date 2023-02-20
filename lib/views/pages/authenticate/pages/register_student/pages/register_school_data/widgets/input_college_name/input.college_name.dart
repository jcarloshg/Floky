import 'package:floky/views/utils/abstract.input.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class CollegeNameInput extends StatelessWidget with InputAbstract {
  //

  final TextEditingController control;
  final String label = "Nombre de la institución";
  final String messageInvalidValue = 'Nombre de la institución es invalido';
  final collegeName = 'BUBAL';

  const CollegeNameInput({super.key, required this.control});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(border: Border.all()),
      margin: EdgeInsets.only(top: Spacers.size5),
      child: TextFormField(
        keyboardType: TextInputType.name,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: control,
        autocorrect: false,
        validator: (value) => validateValue(value),
        decoration: inputDecoration(labelText: label),
      ),
    );
  }

  @override
  String? validateValue(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return 'El nombre de la institución es requerido';

    RegExp regExp = RegExp(r'^[a-zA-ZÀ-ÿ ]{2,}( {1,2}[a-zA-ZÀ-ÿ ]{2,}){2,}$');
    final isValidFullName = regExp.hasMatch(value);
    if (isValidFullName == false) return messageInvalidValue;

    return null;
  }
}


    // return Container(
    //   width: double.infinity,
    //   decoration: BoxDecoration(border: Border.all()),
    //   margin: EdgeInsets.only(top: Spacers.size5),
    //   child: DropdownButton<String>(
    //     value: collegeName,
    //     isExpanded: true,
    //     items: [
    //       DropdownMenuItem<String>(
    //         value: collegeName,
    //         child: Titles.text('name1'),
    //       ),
    //       DropdownMenuItem<String>(
    //         value: 'name2',
    //         child: Titles.text('name2'),
    //       ),
    //       DropdownMenuItem<String>(
    //         value: 'name3',
    //         child: Titles.text('name3'),
    //       ),
    //       DropdownMenuItem<String>(
    //         value: 'name4',
    //         child: Titles.text('name4'),
    //       ),
    //     ],
    //     onChanged: (value) {},
    //   ),