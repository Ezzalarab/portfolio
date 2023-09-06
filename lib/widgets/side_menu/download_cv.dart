import '../../shared/exports.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: TextButton(
        onPressed: () {},
        child: FittedBox(
          child: Row(
            children: [
              Text(
                'DOWNLOAD CV',
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleMedium!.color,
                ),
              ),
              const SizedBox(width: defaultPadding / 2),
              SvgPicture.asset(
                'assets/icons/download.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
