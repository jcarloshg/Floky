import 'package:floky/views/utils/utils.index.dart';
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
            style: {
              'h1': Style(
                color: ColorsApp.title,
              ),
              'h2': Style(
                color: ColorsApp.title,
              ),
              'h3': Style(
                color: ColorsApp.title,
              ),
              'h4': Style(
                color: ColorsApp.title,
              ),
              'h5': Style(
                color: ColorsApp.title,
              ),
              'h6': Style(
                color: ColorsApp.title,
              ),
              'p': Style(
                color: ColorsApp.text,
                fontSize: FontSize.large,
                lineHeight: LineHeight.number(1.5),
              ),
              'blockquote': Style(
                color: Colors.white,
                fontSize: FontSize.larger,
                backgroundColor: ColorsApp.greyAAAAAA,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                lineHeight: LineHeight.number(1),
              ),
              'li': Style(
                color: ColorsApp.text,
                fontSize: FontSize.medium,
                lineHeight: LineHeight.number(1.5),
              ),
            },
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
