import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  //

  const Button({
    super.key,
    this.isLoading = false,
    this.label,
    this.function,
  });

  final bool isLoading;
  final String? label;
  final VoidCallback? function;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: MaterialButton(
        height: 45,
        // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        onPressed: isLoading ? () => {} : function,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        color: Theme.of(context).primaryColor,
        child: isLoading ? _bodyLoading() : _bodyButton(),
      ),
    );
  }

  Widget _bodyButton() {
    return Center(
      child: Text(
        label ?? '[NOT_TEXT]',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _bodyLoading() {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Cargando...',
            style: TextStyle(color: Colors.white),
          ),
          Spacers.spacer10,
          const CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 2,
          ),
        ],
      ),
    );
  }
}
