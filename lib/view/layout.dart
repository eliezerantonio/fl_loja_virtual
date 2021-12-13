import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Layout {
  static Widget render(
    BuildContext context,
    Widget child, {
    String title,
    Widget floatingActionButton,
    int bottomItemSelected,
  }) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/bg-image.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        child: FaIcon(
                          FontAwesomeIcons.userCog,
                          color: Layout.light(),
                          size: 24,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Eliezer Antonio",
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                color: Layout.light(),
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: FaIcon(
                          FontAwesomeIcons.shoppingBag,
                          color: Layout.primaryLight(),
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: child),
              ],
            ),
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
      floatingActionButton: floatingActionButton,
      backgroundColor: Layout.secundary(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidStar, size: 30),
              label: 'Compras'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidHeart, size: 30),
              label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.signInAlt, size: 30),
              label: 'Sair'),
        ],
        currentIndex: bottomItemSelected ?? 0,
        selectedItemColor: (bottomItemSelected == null)
            ? Layout.dark(.3)
            : Layout.primaryDark(),
        unselectedItemColor: Layout.dark(.3),
        backgroundColor: Layout.light(),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  static Color primary([double opacity = 1]) =>
      Color(0xff195738).withOpacity(opacity);
  static Color primaryLight([double opacity = 1]) =>
      Color(0xff007d40).withOpacity(opacity);
  static Color primaryDark([double opacity = 1]) =>
      Color(0xff123d27).withOpacity(opacity);

  static Color secundary([double opacity = 1]) =>
      Color(0xffddc199).withOpacity(opacity);
  static Color secundaryLight([double opacity = 1]) =>
      Color(0xffe0cf9d).withOpacity(opacity);
  static Color secundaryDark([double opacity = 1]) =>
      Color(0xffce9150).withOpacity(opacity);
  static Color secundaryHight([double opacity = 1]) =>
      Color(0xfffdac25).withOpacity(opacity);

  static Color light([double opacity = 1]) =>
      Color(0xfff0ece1).withOpacity(opacity);
  static Color dark([double opacity = 1]) =>
      Color(0xff333333).withOpacity(opacity);
}
