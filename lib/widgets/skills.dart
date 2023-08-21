import '../shared/exports.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            'Skills',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const Row(
          children: [
            Expanded(
              child: AnimatedPercentage(
                label: 'Flutter',
                percentage: 0.9,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedPercentage(
                label: 'Firebase',
                percentage: 0.8,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedPercentage(
                label: 'Backend',
                percentage: 0.6,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
