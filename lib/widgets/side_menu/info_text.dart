import '../../shared/exports.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
    required this.text,
    required this.title,
  }) : super(key: key);
  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: titleTextColor,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
