import '../../shared/exports.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: defaultPadding),
        const Responsive(
          mobile: MyProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: MyProjectsGridView(crossAxisCount: 2),
          tablet: MyProjectsGridView(
            childAspectRatio: 1.1,
          ),
          desktop: MyProjectsGridView(),
        ),
      ],
    );
  }
}

class MyProjectsGridView extends StatelessWidget {
  const MyProjectsGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.1,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demoProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          ProjectCard(project: demoProjects[index]),
    );
  }
}
