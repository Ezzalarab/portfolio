import '../shared/exports.dart';

class AnimatedLinearPercentage extends StatelessWidget {
  const AnimatedLinearPercentage({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(
        begin: 0,
        end: percentage,
      ),
      duration: defaultDuration,
      builder: (context, double value, child) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${(value * 100).toStringAsFixed(0)} %',
                ),
              ],
            ),
            const SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
            const SizedBox(height: defaultPadding),
          ],
        );
      },
    );
  }
}
