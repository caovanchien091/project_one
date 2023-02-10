import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ExpandedScaffold();
  }
}

class ExpandedScaffold extends StatefulWidget {
  const ExpandedScaffold({
    Key? key,
  }) : super(key: key);

  @override
  State<ExpandedScaffold> createState() => _ExpandedScaffoldState();
}

class _ExpandedScaffoldState extends State<ExpandedScaffold> {
  double maxExtent = 200;
  double minExtent = 56;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: ExpandedScaffoldHeader(
            maxExtent: maxExtent,
            minExtent: minExtent,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: ScreenSize.heightScreen - minExtent,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class ExpandedScaffoldHeader extends SliverPersistentHeaderDelegate {
  double shrinkOffset = 0;
  final double _maxExtent;
  final double _minExtent;

  ExpandedScaffoldHeader({
    required double maxExtent,
    required double minExtent,
  })  : _maxExtent = maxExtent,
        _minExtent = minExtent;

  @override
  bool shouldRebuild(oldDelegate) => true;

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    this.shrinkOffset = shrinkOffset;

    return Stack(
      children: [
        Positioned(
          top: -minExtent * percent,
          child: Container(
            height: minExtent,
            width: ScreenSize.widthScreen,
            color: Colors.red,
          ),
        ),
      ],
    );
  }

  double get percent {
    var dragExtent = maxExtent - minExtent;
    var percentDrag = shrinkOffset / dragExtent;

    if (percentDrag > 1) return 1;
    if (percentDrag < 0) return 0;

    return percentDrag;
  }
}