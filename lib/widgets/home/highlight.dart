import '../../shared/exports.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    Key? key,
    required this.counter,
    this.label = '',
  }) : super(key: key);

  final Widget counter;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(width: defaultPadding / 2),
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
