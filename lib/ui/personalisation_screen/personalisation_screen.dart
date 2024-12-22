part of 'personalisation_screen_part.dart';

class PersonalisationScreen extends StatefulWidget {
  const PersonalisationScreen({super.key});

  @override
  State<PersonalisationScreen> createState() => _PersonalisationScreenState();
}

class _PersonalisationScreenState extends State<PersonalisationScreen>
    with PersonalisationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personalisation'),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: SvgPicture.asset(
            AppIcons.backArrow,
          ),
        ),
      ),
      body: BlocBuilder<PersonalisationBloc, PersonalisationState>(
        bloc: bloc,
        buildWhen: (p, c) => p.page != c.page,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                32.g,
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      '${state.page + 1} / 7',
                      style: AppTypography.bodyRegular.copyWith(
                        color: AppColors.c2EA33A,
                      ),
                    ),
                  ),
                ),
                12.g,
                Text(
                  personalisationTexts[state.page].title,
                  style: AppTypography.headlineRegular,
                ),
                46.g,
                Text(
                  'Select answer',
                  style: AppTypography.footnoteRegular.copyWith(
                    color: Colors.white.withOpacity(0.6),
                  ),
                ),
                12.g,
                ...List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        leading: Text(
                          personalisationTexts[state.page].text[index],
                        ),
                        onTap: () {
                          if (state.page < 6) {
                            bloc.add(PersonalisationChangePageEvent());
                          } else {
                            context.pushNamed(Routes.createTraining);
                          }
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
