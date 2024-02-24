part of 'widgets.dart';

class Body extends StatelessWidget {
  const Body({super.key, this.sliver = false});

  const Body.sliver({super.key, this.sliver = true});

  final bool sliver;

  @override
  Widget build(BuildContext context) {
    if (sliver) return SliverToBoxAdapter(child: _body(context));
    return _body(context);
  }

  Widget _body(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: 528,
        child: Column(
          children: [
            Text(
              'Back in 2012, I decided to try my hand at creating custom Tumblr themes and tumbled head first into the rabbit hole of coding and web development. Fast-forward to today, and I’ve had the privilege of building software for an advertising agency, a start-up, a student-led design studio, and a huge corporation.',
              style: context.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
