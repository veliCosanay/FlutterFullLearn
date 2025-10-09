import 'package:flutter/material.dart';

class NoteDemosView extends StatelessWidget {
  NoteDemosView({super.key});

  final PagePadding pagePadding = PagePadding();
  final PageStrings pageStrings = PageStrings();
  final ButtonSizes buttonSizes = ButtonSizes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(title: Text('Note Demo View')),
      body: Padding(
        padding: pagePadding.horizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: _CustomImage(path: 'logo'),
            ),
            _TitleWidget(text: pageStrings.title),
            Padding(
              padding:
                  pagePadding.horizontalPadding + pagePadding.verticalPadding,
              child: _BodyWidget(
                text: pageStrings.body,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            _CustomElevatedButton(buttonSizes: buttonSizes, pageStrings: pageStrings),
            _CustomTextButton(pageStrings: pageStrings),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}

class _CustomTextButton extends StatelessWidget {
  const _CustomTextButton({
    required this.pageStrings,
  });

  final PageStrings pageStrings;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        pageStrings.textButtonString,
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(color: Colors.black),
      ),
    );
  }
}

class _CustomElevatedButton extends StatelessWidget {
  const _CustomElevatedButton({
    required this.buttonSizes,
    required this.pageStrings,
  });

  final ButtonSizes buttonSizes;
  final PageStrings pageStrings;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(15)),
        ),
      ),
      child: SizedBox(
        height: buttonSizes.height,
        child: Center(
          child: Text(
            pageStrings.buttonString,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}

class PageStrings {
  final String title = 'Create Your First Note';
  final String body =
      'Add a note about anything(your thougts on climate change, or your history essay) and share it witht the word.';
  final String buttonString = 'Create A Note';
  final String textButtonString = 'Import Notes';
}

class PagePadding {
  final EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonSizes {
  final double height = 50;
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({required this.text, this.textAlign = TextAlign.center});

  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _CustomImage extends StatelessWidget {
  const _CustomImage({required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_customPath, fit: BoxFit.contain);
  }

  String get _customPath => "assets/$path.png";
}
