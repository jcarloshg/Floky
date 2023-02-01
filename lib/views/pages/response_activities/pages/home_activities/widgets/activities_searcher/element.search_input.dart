part of 'widget.activities_searcher.dart';

class _SearchInput extends StatelessWidget {
  const _SearchInput();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: _inputDecoration(context),
    );
  }

  InputDecoration _inputDecoration(BuildContext context) {
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

    return InputDecoration(
      hintText: "Busca tus actividades favoritas  :)",
      filled: true,
      fillColor: Colors.white,
      focusedBorder: focusedBorder,
      enabledBorder: enabledBorder,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      suffixIcon: IconButton(
        onPressed: () => log('[SearchByCategories] - InputDecoration'),
        icon: const Icon(Icons.search),
      ),
    );
  }
}
