import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

const int _numChar = 1;

class CircleAvatarCustom extends StatelessWidget {
  final double size;
  final double borderWidth;
  final String? name;
  final String? iconPath;
  final String? iconUrl;

  const CircleAvatarCustom({
    Key? key,
    this.name,
    this.iconPath,
    this.iconUrl,
    this.size = 64,
    this.borderWidth = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildBackground(context),
          _buildAvatar(context),
        ],
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.surfaceColor,
        border: Border.all(
          width: borderWidth,
          color: context.surfaceColor,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: context.shadowColor.withOpacity(0.2),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    Widget avatar = const SizedBox();

    if (name != null) {
      avatar = _buildAvatarText(context);
    }
    if (iconUrl != null || iconPath != null) {
      avatar = _buildAvatarPicture(context);
    }

    return Container(
      width: size - borderWidth * 2,
      height: size - borderWidth * 2,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: avatar,
    );
  }

  Widget _buildAvatarPicture(BuildContext context) {
    ImageProvider? avatar;

    if (iconUrl != null) {
      avatar = NetworkImage(iconUrl ?? '');
    }
    if (iconPath != null) {
      avatar = AssetImage(iconPath ?? '');
    }
    if (avatar == null) {
      return const SizedBox();
    }

    return Image(
      image: avatar,
      fit: BoxFit.fitHeight,
      alignment: Alignment.center,
      errorBuilder: (context, error, stackTrace) {
        return Container();
      },
    );
  }

  Widget _buildAvatarText(BuildContext context) {
    String firstCharName() {
      var name = this.name ?? '';
      if ((name.length - 1) > _numChar) {
        return name.substring(0, _numChar);
      } else {
        return name;
      }
    }

    return Container(
      alignment: Alignment.center,
      child: Text(
        firstCharName(),
        style: context.titleLarge.bold.apply(
          color: context.onSurfaceColor,
        ),
      ),
    );
  }
}
