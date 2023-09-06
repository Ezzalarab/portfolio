import '../../shared/exports.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const AnimatedLinearPercentage(
          label: 'Dart',
          percentage: 0.9,
        ),
        const AnimatedLinearPercentage(
          label: 'PHP',
          percentage: 0.7,
        ),
        const AnimatedLinearPercentage(
          label: 'C#',
          percentage: 0.8,
        ),
        const AnimatedLinearPercentage(
          label: 'Python',
          percentage: 0.7,
        ),
        const AnimatedLinearPercentage(
          label: 'JavaScript',
          percentage: 0.7,
        ),
      ],
    );
  }
}
