import 'package:chiromarket/common/widgets/circular_container.dart';
import 'package:chiromarket/common/widgets/curved_edges.dart';
import 'package:chiromarket/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/curved_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomClipperWidget(
                child: Container(
                  color: CustomColors.primaryColor,
                  padding: const EdgeInsets.all(0),
                  child: SizedBox(
                    height: 400,
                    child: Stack(
                      children: [
                        Positioned(
                          top: -150,
                          right: -250,
                          child: CustomCircularContainer(
                            backgroundColor:
                                CustomColors.whiteText.withOpacity(0.1),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: -300,
                          child: CustomCircularContainer(
                            backgroundColor:
                                CustomColors.whiteText.withOpacity(0.1),
                          ),
                        ),
                        const Column()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
