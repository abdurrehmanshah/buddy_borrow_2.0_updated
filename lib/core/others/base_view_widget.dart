import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// export 'package:get/get.dart';
export 'package:provider/provider.dart';
export 'dart:developer';

// // For this porject
export 'package:flutter_screenutil/flutter_screenutil.dart';

export '../../core/constants/globals.dart';

class BaseViewWidget extends StatelessWidget {
  final AppBar? appBar;
  final bool avoidScrollView;
  final Widget? body;
  final EdgeInsets? margin;
  final BottomAppBar? bottomNavigationBar;
  final FloatingActionButtonLocation? fabLocation;
  final Widget? fab;
  static double height = 1.0;
  static double width = 1.0;

  final bool? extendBodyBehindAppBar;
  final bool? extendBody;

  final Color? color;

  const BaseViewWidget(
      {Key? key,
      this.appBar,
      this.bottomNavigationBar,
      this.color,
      required this.avoidScrollView,
      this.fabLocation,
      this.fab,
      this.margin,
      this.body,
      this.extendBodyBehindAppBar,
      this.extendBody})
      : super(key: key);

  static devLog(String statement) {
    log(statement);
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return appBar != null
        ? Scaffold(
            extendBodyBehindAppBar: extendBodyBehindAppBar ?? false,
            extendBody: extendBody ?? false,
            floatingActionButton: fab,
            floatingActionButtonLocation: fabLocation,
            bottomNavigationBar: bottomNavigationBar,
            appBar: appBar,
            backgroundColor: color ?? Colors.grey.shade200,
            body: Container(
              margin: margin ?? EdgeInsets.symmetric(horizontal: 10.w),
              height: 1.sh,
              width: 1.sw,
              child: avoidScrollView
                  ? body
                  : CustomScrollView(
                      slivers: [
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: body ?? Container(),
                        ),
                      ],
                    ),
            ),
          )
        : Scaffold(
            extendBodyBehindAppBar: extendBodyBehindAppBar ?? false,
            extendBody: extendBody ?? false,
            bottomNavigationBar: bottomNavigationBar,
            backgroundColor: color ?? Colors.grey.shade200,
            body: Container(
              margin: margin ?? EdgeInsets.symmetric(horizontal: 20.w),
              height: 1.sh,
              width: 1.sw,
              child: avoidScrollView
                  ? body
                  : CustomScrollView(
                      slivers: [
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: body ?? Container(),
                        ),
                      ],
                    ),
            ),
          );
  }
}
