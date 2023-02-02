part of 'widget.search_input.dart';

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
