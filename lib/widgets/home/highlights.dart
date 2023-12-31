import '../../shared/exports.dart';

class HighLights extends StatelessWidget {
  const HighLights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Responsive.isMobile(context)
                        ? defaultPadding / 2
                        : defaultPadding * 2,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HighLight(
                        counter: AnimatedCounter(count: 100),
                        label: 'Subscribers',
                      ),
                      HighLight(
                        counter: AnimatedCounter(count: 40),
                        label: 'Views',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Responsive.isMobile(context)
                        ? defaultPadding / 2
                        : defaultPadding * 2,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HighLight(
                        counter: AnimatedCounter(count: 20),
                        label: 'Github Projects',
                      ),
                      HighLight(
                        counter: AnimatedCounter(
                          count: 13,
                          text: 'K+',
                        ),
                        label: 'Stars',
                      ),
                    ],
                  ),
                ),
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(count: 100),
                  label: 'Subscribers',
                ),
                HighLight(
                  counter: AnimatedCounter(count: 40),
                  label: 'Views',
                ),
                HighLight(
                  counter: AnimatedCounter(count: 20),
                  label: 'Github Projects',
                ),
                HighLight(
                  counter: AnimatedCounter(
                    count: 13,
                    text: 'K+',
                  ),
                  label: 'Stars',
                ),
              ],
            ),
    );
  }
}
