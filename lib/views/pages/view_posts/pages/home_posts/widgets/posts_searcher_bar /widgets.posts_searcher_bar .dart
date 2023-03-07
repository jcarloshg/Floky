import 'package:floky/views/utils/colors_app.dart';
import 'package:flutter/material.dart';

class PostsSearcherBar extends StatelessWidget {
  const PostsSearcherBar({super.key});

  final placeHolderLabel = "Busca publicaciones  :)";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: _decoration(),
      child: _placeHolder(),
    );
  }

  BoxDecoration _decoration() => BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: ColorsApp.greyAAAAAA,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      );

  Widget _placeHolder() => Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              placeHolderLabel,
              style: const TextStyle(
                color: ColorsApp.text,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Icon(Icons.search, color: ColorsApp.greyAAAAAA),
        ],
      );
}
