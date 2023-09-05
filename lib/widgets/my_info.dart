import '../shared/exports.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(flex: 4),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/IMG_7344.jpg'),
            ),
            const Spacer(flex: 2),
            Text(
              'Ezzalarab',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Spacer(flex: 1),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
