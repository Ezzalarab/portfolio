// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../shared/exports.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(
                  defaultPadding,
                ),
                child: Column(
                  children: [
                    PersonalInfo(),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledge(),
                    DownloadCV(),
                    SocialMedia()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
