import 'package:dating/core/ui/theme/images.dart';
import 'package:flutter/cupertino.dart';

const _incomingSize = 4.0;

Widget IncomingIcon({bool? visible}) => Visibility(
  visible: visible ?? true,
  child: Image.asset(
    AppImages.loadPng('ic_incoming'),
    width: _incomingSize,
    height: _incomingSize,
  ),
);
