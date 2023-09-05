import '../shared/exports.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleSmall!,
      child: Row(
        children: [
          const FlutterTag(),
          const SizedBox(width: defaultPadding / 20),
          const Text(
            'I build ',
            style: TextStyle(),
          ),
          AnimatedTextKit(
            pause: const Duration(seconds: 2),
            animatedTexts: [
              TyperAnimatedText(
                'responsive web and mobile apps.',
                speed: const Duration(
                  milliseconds: 60,
                ),
              ),
              TyperAnimatedText(
                'complete e-Commerce app UI.',
                speed: const Duration(
                  milliseconds: 60,
                ),
              ),
              TyperAnimatedText(
                'chat app with dark and light theme.',
                speed: const Duration(
                  milliseconds: 60,
                ),
              ),
            ],
          ),
          const SizedBox(width: defaultPadding / 20),
          const FlutterTag(),
        ],
      ),
    );
  }
}
