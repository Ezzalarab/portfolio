import '../../shared/exports.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.count,
    this.text = '+',
  }) : super(key: key);

  final int count;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(
        begin: 0,
        end: count,
      ),
      duration: defaultDuration,
      builder: (context, value, child) {
        return Text(
          '$value$text',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: primaryColor,
              ),
        );
      },
    );
  }
}
