part of 'view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GlowingPointer(
        child: SelectionArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return CustomScrollView(
                slivers: [
                  if (constraints.maxWidth < 640)
                    _mobileView()
                  else if (constraints.maxWidth < 1024)
                    _tabView()
                  else
                    _desktopView(size),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _desktopView(Size size) {
    return SliverPadding(
      padding: const EdgeInsets.all(90),
      sliver: SliverCrossAxisGroup(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(right: 16),
            sliver: Header.persistentSliver(size.height),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(right: 16),
            sliver: Body.sliver(),
          ),
        ],
      ),
    );
  }

  Widget _tabView() {
    return const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 48, vertical: 90),
      sliver: SliverMainAxisGroup(
        slivers: [
          Header.sliver(),
          SliverPadding(
            padding: EdgeInsets.only(top: 48),
            sliver: Body.sliver(),
          ),
        ],
      ),
    );
  }

  Widget _mobileView() {
    return const SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      sliver: SliverMainAxisGroup(
        slivers: [
          Header.sliver(smallerTitle: true),
          SliverPadding(
            padding: EdgeInsets.only(top: 48),
            sliver: Body.sliver(),
          ),
        ],
      ),
    );
  }
}
