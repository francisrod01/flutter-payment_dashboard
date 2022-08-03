import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // title style
    const titleStyle = TextStyle(
      fontSize: 40,
      color: Colors.white70,
      fontWeight: FontWeight.bold,
    );

    return Container(
      color: Colors.white,
      child: Drawer(
        elevation: 0,
        child: ListView(
          children: const [
            DrawerHeader(
              child: Center(
                child: Text('Pay', style: titleStyle),
              ),
            ),
            DrawerListTitle(
              svgSrc: 'images/home.svg',
              title: 'Home',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle(
      {Key? key,
      @required this.title,
      @required this.svgSrc,
      required this.press})
      : super(key: key);

  final title;
  final svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
