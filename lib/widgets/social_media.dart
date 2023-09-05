import '../shared/exports.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding / 2),
      color: const Color(0xFF242430),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/twitter.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/fecebook-black.svg',
              color: const Color(0xAAAAAAAA),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
