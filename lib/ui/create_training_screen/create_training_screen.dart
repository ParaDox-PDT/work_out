part of 'create_training_screen_part.dart';

class CreateTrainingScreen extends StatefulWidget {
  const CreateTrainingScreen({super.key});

  @override
  State<CreateTrainingScreen> createState() => _CreateTrainingScreenState();
}

class _CreateTrainingScreenState extends State<CreateTrainingScreen>
    with CreateTrainingMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create training'),
        automaticallyImplyLeading: !localStorage.getFirstStart(),
        actions: [
          TextButton(
            onPressed: () async {
              if (bloc.state.exercises.isNotEmpty &&
                  nameController.text.isNotEmpty) {
                bloc.add(
                    CreateTrainingSaveEvent(trainingName: nameController.text));
              }
              if (localStorage.getFirstStart()) {
                await localStorage.setFirstStart(false);
                if (context.mounted) context.goNamed(Routes.home);
              } else {
                context.pop();
              }
            },
            child: Text(
              'Save',
              style: AppTypography.captionRegular.copyWith(
                color: AppColors.c2EA33A,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: BlocBuilder<CreateTrainingBloc, CreateTrainingState>(
          bloc: bloc,
          buildWhen: (p, c) => p != c,
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        title: 'Name',
                        hintText: 'Training name',
                        controller: nameController,
                        focusNode: nameFocusNode,
                      ),
                    ),
                    24.g,
                    Expanded(
                      child: ChangeNumbersWidget(
                        title: 'Number of cycles',
                        number: state.cycles.toString(),
                        onMinusTap: () =>
                            bloc.add(const CreateTrainingMinusCycleEvent()),
                        onPlusTap: () =>
                            bloc.add(const CreateTrainingPlusCycleEvent()),
                      ),
                    )
                  ],
                ),
                30.g,
                ...List.generate(
                  state.exercises.length,
                  (index) {
                    ExerciseModel exercise = state.exercises[index];
                    return Column(
                      children: [
                        ListTile(
                          tileColor: Colors.transparent,
                          contentPadding: EdgeInsets.zero,
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SvgPicture.asset(
                              exercise.icon ?? AppIcons.pushUp,
                              width: 32.w,
                            ),
                          ),
                          title: Text(
                            exercise.name ?? '',
                            style: AppTypography.captionSemiBold,
                          ),
                          trailing: Text(
                            '${exercise.minute} min',
                            style: AppTypography.footnoteRegular
                                .copyWith(color: Colors.white.withOpacity(0.5)),
                          ),
                        ),
                        const Divider(
                          color: AppColors.c081319,
                        )
                      ],
                    );
                  },
                ),
                24.g,
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: InkWell(
                    onTap: () {
                      bloc.add(const CreateTrainingResetEvent());
                      showCreateExerciseBSh(context: context, bloc: bloc);
                    },
                    borderRadius: BorderRadius.circular(6),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 52.w),
                      child: const Text(
                        'Add step',
                        style: AppTypography.captionRegular,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
