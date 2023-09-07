import '../../shared/exports.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleSmall!,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterTag(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          const Text(
            'I build ',
            style: TextStyle(),
          ),
          Responsive.isMobile(context)
              ? const Expanded(child: BuildAnimatedText())
              : const BuildAnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterTag(),
        ],
      ),
    );
  }
}

class BuildAnimatedText extends StatelessWidget {
  const BuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
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
    );
  }
}
