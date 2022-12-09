import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';
import 'package:flutter_authentication/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class TFadeinAnimation extends StatelessWidget {
  TFadeinAnimation({
    Key? key,
    required this.durationMs,
    this.animate,
    required this.child,
  }) : super(key: key);

  final splashController = Get.put(FadeInAnimationController());

  final int durationMs;
  final TAnimatedPosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationMs),
        top: splashController.animate.value
            ? animate!.topAfter
            : animate!.topBefore,
        left: splashController.animate.value
            ? animate!.leftAfter
            : animate!.leftBefore,
        bottom: splashController.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        right: splashController.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationMs),
          opacity: splashController.animate.value ? 1 : 0,
          child: child,
        ),
      ),
    );
  }
}
