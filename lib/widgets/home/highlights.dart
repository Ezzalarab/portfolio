import '../../shared/exports.dart';

class HighLights extends StatelessWidget {
  const HighLights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighLight(
            counter: AnimatedCounter(count: 100),
            label: 'Subscribers',
          ),
          HighLight(
            counter: AnimatedCounter(count: 40),
            label: 'Views',
          ),
          HighLight(
            counter: AnimatedCounter(count: 20),
            label: 'Github Projects',
          ),
          HighLight(
            counter: AnimatedCounter(
              count: 13,
              text: 'K+',
            ),
            label: 'Stars',
          ),
        ],
      ),
    );
  }
}
