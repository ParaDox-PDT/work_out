part of '../create_training_screen_part.dart';

class CreateExerciseWidget extends StatefulWidget {
  const CreateExerciseWidget({
    super.key,
    required this.bloc,
  });

  final CreateTrainingBloc bloc;

  @override
  State<CreateExerciseWidget> createState() => _CreateExerciseWidgetState();
}

class _CreateExerciseWidgetState extends State<CreateExerciseWidget> {
  final TextEditingController exerciseController = TextEditingController();
  final FocusNode exerciseFocusNode = FocusNode();

  @override
  void dispose() {
    exerciseController.dispose();
    exerciseFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: EdgeInsets.only(bottom: keyboardHeight),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: BlocBuilder<CreateTrainingBloc, CreateTrainingState>(
          bloc: widget.bloc,
          buildWhen: (p, c) => p != c,
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Add step',
                  style: AppTypography.captionRegular,
                ),
                24.g,
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        title: 'Exercise name',
                        hintText: 'Exercise name',
                        controller: exerciseController,
                        focusNode: exerciseFocusNode,
                      ),
                    ),
                    24.g,
                    Expanded(
                      child: ChangeNumbersWidget(
                        title: 'Time, minutes',
                        number: state.minutes.toString(),
                        onMinusTap: () => widget.bloc
                            .add(const CreateTrainingMinusMinuteEvent()),
                        onPlusTap: () => widget.bloc
                            .add(const CreateTrainingPlusMinuteEvent()),
                      ),
                    )
                  ],
                ),
                16.g,
                const Text(
                  'Exercise icons',
                  style: AppTypography.footnoteRegular,
                ),
                Row(
                  children: List.generate(
                    exerciseIcons.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: ZoomTapAnimation(
                          onTap: () {
                            widget.bloc.add(CreateTrainingChangeIconEvent(
                                iconIndex: index));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SvgPicture.asset(
                              state.iconIndex == index
                                  ? exerciseIcons[index]
                                  : exerciseIconsGrey[index],
                              width: 48.w,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                24.g,
                ElevatedButton(
                    onPressed: () {
                      if (exerciseController.text.isNotEmpty) {
                        widget.bloc.add(
                          CreateTrainingAddExerciseEvent(
                            exerciseName: exerciseController.text,
                          ),
                        );
                        context.pop();
                      }
                    },
                    child: const Text('Add step')),
                8.g,
                ElevatedButton(
                  onPressed: () {
                    context.pop();
                  },
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Colors.white.withOpacity(0.2))),
                  child: const Text('Cancel'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

void showCreateExerciseBSh({
  required BuildContext context,
  required CreateTrainingBloc bloc,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: AppColors.c243640,
    builder: (context) {
      return CreateExerciseWidget(bloc: bloc);
    },
  );
}
