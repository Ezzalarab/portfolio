import '../shared/exports.dart';

class FlutterTag extends StatelessWidget {
  const FlutterTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'flutter',
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          TextSpan(text: '>'),
        ],
      ),
    );
  }
}
