part of 'widget.search_input.dart';

BoxDecoration _decoration() {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: ColorsApp.greyAAAAAA,
      width: 2,
    ),
    borderRadius: const BorderRadius.all(Radius.circular(4)),
  );
}

Widget _placeHolder() {
  return Row(
    mainAxisSize: MainAxisSize.max,
    children: const [
      Expanded(
        flex: 1,
        child: Text(
          "Busca tus actividades favoritas  :)",
          style: TextStyle(
            color: ColorsApp.text,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      Icon(Icons.search, color: ColorsApp.greyAAAAAA),
    ],
  );
}

//============================================================
//============================================================

IconButton iconButton({required Future<void> Function() search}) {
  return IconButton(
    onPressed: () async {
      await search();
      // final String value = searchInputController.text;
      // log(value);
    },
    icon: const Icon(Icons.search),
  );
}

InputDecoration inputDecoration(
  BuildContext context, {
  required IconButton iconButton,
}) {
  return InputDecoration(
    hintText: "Busca tus actividades favoritas  :)",
    filled: true,
    fillColor: Colors.white,
    focusedBorder: focusedBorder,
    enabledBorder: enabledBorder,
    border: outlineInputBorder,
    suffixIcon: iconButton,
  );
}

//============================================================
// decorations
//============================================================

const OutlineInputBorder focusedBorder = OutlineInputBorder(
  borderSide: BorderSide(
    width: 2,
    style: BorderStyle.solid,
    color: ColorsApp.greyAAAAAA,
  ),
);

const OutlineInputBorder enabledBorder = OutlineInputBorder(
  borderSide: BorderSide(
    width: 1,
    style: BorderStyle.solid,
    color: ColorsApp.greyAAAAAA,
  ),
);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(4),
);
