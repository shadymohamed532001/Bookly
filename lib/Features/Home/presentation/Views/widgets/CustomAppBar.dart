import 'package:bookly/Core/utils/appRouters.dart';
import 'package:bookly/Core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar
    extends StatelessWidget {
  const CustomAppBar(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    return SafeArea(
      bottom: false,
      minimum: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            BooklyAssets.Logo,
            width: 90,
            height: 36,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.KSearchsView);
              },
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ))
        ],
      ),
    );
  }
}
