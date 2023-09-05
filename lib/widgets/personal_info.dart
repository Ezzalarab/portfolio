import '../shared/exports.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InfoText(
          title: 'Residence',
          text: 'Yemen',
        ),
        InfoText(
          title: 'City',
          text: 'Ibb',
        ),
        InfoText(
          title: 'Birth Year',
          text: '1998',
        ),
      ],
    );
  }
}
