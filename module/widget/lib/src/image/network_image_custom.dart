import 'package:flutter/material.dart';
import 'package:widget/src/image/image_custom.dart';

class NetworkImageCustom extends ImageCustom {
  const NetworkImageCustom({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String? url;

  @override
  Widget buildImage(BuildContext context, Widget error) {
    return Image(
      image: NetworkImage(
        url ?? '',
        headers: {
          'Referrer': 'https://nettruyenco.vn',
        }
      ),
      errorBuilder: (_, __, ___) {
        print(__);
        return Container(
          child: error,
        );
      },
    );
  }
}
