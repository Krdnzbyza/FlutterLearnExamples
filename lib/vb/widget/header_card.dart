import 'package:flutter/material.dart';

import '../constant/image_constant.dart';
import '../todo/todo_view.dart';

class HeaderCard extends StatelessWidget with ImagesConstants {
  final String title;
  final String decripiton;
  final String image;

  ThemeData theme(BuildContext context) => Theme.of(context);

  HeaderCard({Key key, this.title, this.decripiton, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: SizedBox.expand(
        child: Stack(
          children: [
            Positioned.fill(child: buildClipRRectBackgroundImage()),
            buildPaddingBodyItems(context),
          ],
        ),
      ),
    );
  }

  ClipRRect buildClipRRectBackgroundImage() => ClipRRect(borderRadius: BorderRadius.circular(20), child: buildImage());

  Image buildImage() => Image.asset(image, fit: BoxFit.fill);

  Padding buildPaddingBodyItems(BuildContext context) {
    return Padding(
        // TODO: PAdding sininfdan al
        padding: EdgeInsets.all(8.0),
        child: buildColumnBodyTexts(context));
  }

  Column buildColumnBodyTexts(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: buildTextTitle(context)),
        Expanded(child: buildH4customTextDescription()),
      ],
    );
  }

  Text buildTextTitle(BuildContext context) {
    return Text(title, style: theme(context).textTheme.headline3.copyWith(fontWeight: FontWeight.bold, color: theme(context).canvasColor));
  }

  H4CustomText buildH4customTextDescription() => H4CustomText(title: decripiton);
}
