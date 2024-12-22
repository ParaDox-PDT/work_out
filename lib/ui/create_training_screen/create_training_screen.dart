part of 'create_training_screen_part.dart';

class CreateTrainingScreen extends StatefulWidget {
  const CreateTrainingScreen({super.key});

  @override
  State<CreateTrainingScreen> createState() => _CreateTrainingScreenState();
}

class _CreateTrainingScreenState extends State<CreateTrainingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create training'),
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: AppTypography.captionRegular.copyWith(
                color: AppColors.c2EA33A,
              ),
            ),
          )
        ],
      ),
    );
  }
}
