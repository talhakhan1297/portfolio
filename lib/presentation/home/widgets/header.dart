part of 'widgets.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    this.height,
    this.sliver = false,
    this.persistent = false,
    this.smallerTitle = false,
  });

  const Header.sliver({
    super.key,
    this.height,
    this.sliver = true,
    this.persistent = false,
    this.smallerTitle = false,
  });

  static SliverPersistentHeader persistentSliver(double height) =>
      SliverPersistentHeader(
        delegate: _HeaderDelegate(height),
        pinned: true,
        floating: true,
      );

  final double? height;
  final bool sliver;
  final bool persistent;
  final bool smallerTitle;

  @override
  Widget build(BuildContext context) {
    if (sliver) return SliverToBoxAdapter(child: _body(context));
    return _body(context);
  }

  Align _body(BuildContext context) {
    return Align(
      alignment: persistent ? Alignment.topRight : Alignment.topLeft,
      child: SizedBox(
        width: 528,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Talha Javed Khan',
              style: smallerTitle
                  ? context.displaySmall.bold
                  : context.displayMedium.bold,
            ),
            const SizedBox(height: 10),
            Text(
              'Sr. Software Engineer at VentureDive',
              style: context.titleLarge.medium,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: Text(
                'I build pixel-perfect, engaging, and accessible digital '
                'experiences.',
                style: context.bodyLarge.regular.onSurfaceVariant(context),
              ),
            ),
            const SizedBox(height: 76),
            const TabBar(),
            if (persistent) const Spacer(),
            const SizedBox(height: 40),
            const Icon(Icons.mail_outline_outlined),
          ],
        ),
      ),
    );
  }
}

class TabBar extends StatefulWidget {
  const TabBar({
    super.key,
  });

  @override
  State<TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => setState(() => hovered = true),
      onExit: (_) => setState(() => hovered = false),
      child: GestureDetector(
        onTap: () => setState(() => hovered = true),
        child: Row(
          children: [
            AnimatedContainer(
              duration: Durations.short2,
              width: hovered ? 60 : 30,
              height: 1,
              color: hovered ? context.onSurface : context.outline,
            ),
            const SizedBox(width: 16),
            Text(
              'ABOUT',
              style: context.bodySmall.bold.setLetterSpacing(1.5).withColor(
                    hovered ? context.onSurface : context.outline,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderDelegate extends SliverPersistentHeaderDelegate {
  const _HeaderDelegate(this.height);

  final double height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) =>
      const Header(persistent: true);

  @override
  double get maxExtent => height - 200;

  @override
  double get minExtent => height - 200;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
