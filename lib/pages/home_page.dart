// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../shared/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainPage(
      children: [
        HomeBanner(),
        HighLights(),
        MyProjects(),
        Recommedations(),
      ],
    );
  }
}
