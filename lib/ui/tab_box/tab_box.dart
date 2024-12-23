part of 'tab_box_part.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> with TabBoxMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<TabBoxBloc, TabBoxState>(
          bloc: sl<TabBoxBloc>(),
          buildWhen: (p, c) => p != c,
          builder: (context, state) {
            return IndexedStack(
              index: state.currentIndex,
              children: const [
                TrainingScreen(),
                StatisticsScreen(),
                SettingsScreen(),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<TabBoxBloc, TabBoxState>(
        bloc: sl<TabBoxBloc>(),
        buildWhen: (p, c) => p != c,
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.currentIndex,
            onTap: (currentIndex) => sl<TabBoxBloc>()
                .add(TabBoxChangeEvent(currentIndex: currentIndex)),
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.training,
                    colorFilter: ColorFilter.mode(
                        state.currentIndex == 0
                            ? AppColors.c2EA33A
                            : Colors.white.withOpacity(0.5),
                        BlendMode.srcIn),
                  ),
                  label: 'Training'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.statistics,
                    colorFilter: ColorFilter.mode(
                        state.currentIndex == 1
                            ? AppColors.c2EA33A
                            : Colors.white.withOpacity(0.5),
                        BlendMode.srcIn),
                  ),
                  label: 'Statistics'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.settings,
                    colorFilter: ColorFilter.mode(
                        state.currentIndex == 2
                            ? AppColors.c2EA33A
                            : Colors.white.withOpacity(0.5),
                        BlendMode.srcIn),
                  ),
                  label: 'Settings'),
            ],
          );
        },
      ),
    );
  }
}
