import 'package:flutter/cupertino.dart';

class BulidImages extends StatelessWidget {
  const BulidImages({Key? key , required this.image}) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(image), width: 350);
  }
}
