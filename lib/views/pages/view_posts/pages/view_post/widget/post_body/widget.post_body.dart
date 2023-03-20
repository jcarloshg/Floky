import 'package:floky/views/pages/view_posts/pages/view_post/widget/post_body/styles.post_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          child: Html(
            data: body,
            onLinkTap: _openLink,
            style: stylesHTML,
          ),
        ),
      ),
    );
  }

  Future<void> _openLink(
    String? url,
    RenderContext context,
    Map<String, String> attributes,
    element,
  ) async {
    final uriParse = Uri.parse(url ?? '');
    if (!await launchUrl(uriParse)) {
      throw Exception('Could not launch $uriParse ');
    }
  }
}
