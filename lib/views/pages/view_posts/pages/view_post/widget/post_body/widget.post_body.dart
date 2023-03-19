import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class PostBody extends StatelessWidget {
  //

  const PostBody({super.key, required this.body});

  final String body;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Html(
            data: body,
            onLinkTap: (
              String? url,
              RenderContext context,
              Map<String, String> attributes,
              element,
            ) {
              final _url = Uri.parse(uri);
              inspect(_url);
            },
          ),
        ),
      ),
    );
  }
}
