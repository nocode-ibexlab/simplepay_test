import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_pay_api/src/Util/Common/Common.dart';

import '../item.dart';
import '../simple.dart';

class S3Image extends StatefulWidget {
  /// show images or not
  static bool showImage = true;

  /// Background color if no image file exists
  static Color defaultImageColor = const Color(0xffeeeeee);

  /// Default image if no image file exists
  static String? defaultImageAsset;

  final String? url;
  final double? width;
  final double? height;
  final AlignmentGeometry alignment;
  final BoxFit fit;

  S3Image(
    String? url, {
    Key? key,
    this.width,
    this.height,
    this.alignment = Alignment.center,
    this.fit = BoxFit.cover,
  })  : url = url != null && url.isNotEmpty ? url : null,
        super(key: key);

  @override
  _S3ImageState createState() => _S3ImageState();
}

class _S3ImageState extends State<S3Image> {
  String? _url;
  Widget? _widget;

  @override
  Widget build(BuildContext context) {
    if (!S3Image.showImage) {
      return Container();
    }

    if (_url != widget.url) {
      _url = widget.url;
      _loadImage();
      return _defaultImage();
    }

    return _widget ?? _defaultImage();
  }

  Widget _defaultImage() {
    return _url == null || _url!.isEmpty
        ? Container()
        : Container(
            color: S3Image.defaultImageColor,
            width: widget.width,
            height: widget.height,
            alignment: widget.alignment,
            child: S3Image.defaultImageAsset != null
                ? Image.asset(S3Image.defaultImageAsset!)
                : Image.asset(
                    'assets/img/no_image.png',
                    package: 'simple_pay_api',
                  ),
          );
  }

  Future<void> _loadImage() async {
    if (_url == null || _url!.isEmpty) {
      setState(() {
        _widget = null;
      });
    } else if (_url!.startsWith('http://') || _url!.startsWith('https://')) {
      setState(() {
        _widget = Image.network(
          _url!,
          width: widget.width,
          height: widget.height,
          alignment: widget.alignment,
          fit: widget.fit,
        );
        print('1');
      });
    } else {
      var file = File(Common.imageDir + _url);

      if (await file.exists()) {
        setState(() {
          _widget = Image.file(
            file,
            width: widget.width,
            height: widget.height,
            alignment: widget.alignment,
            fit: widget.fit,
          );
        });
      } else {
        setState(() {
          _widget = null;
        });
      }

      Map? r = await Simple.invoke('item.downloadImage', params: {
        'key': _url,
      });

      if (Simple.successful(r)) {
        setState(() {
          _widget = Image.file(
            File(Simple.result(r, 'path')),
            width: widget.width,
            height: widget.height,
            alignment: widget.alignment,
            fit: widget.fit,
          );
        });
      }
    }
  }
}
