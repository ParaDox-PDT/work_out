class PersonalisationTextModel {
  final String title;
  final List<String> text;

  PersonalisationTextModel({
    required this.title,
    required this.text,
  });
}

List<PersonalisationTextModel> personalisationTexts = [
  PersonalisationTextModel(
    title: 'What is your fitness goal?',
    text: [
      'Lose weight',
      'Build muscle',
      'Improve endurance',
      'Increase flexibility',
    ],
  ),
  PersonalisationTextModel(
    title: 'How often do you plan to work out per week?',
    text: [
      '1-2 times',
      '3-4 times',
      '5-6 times',
      'Every day',
    ],
  ),
  PersonalisationTextModel(
    title: 'What type of workouts do you prefer?',
    text: [
      'Cardio',
      'Strength training',
      'HIIT',
      'Yoga',
    ],
  ),
  PersonalisationTextModel(
    title: 'What is your current fitness level?',
    text: [
      'Beginner',
      'Intermediate',
      'Advanced',
      'Professional',
    ],
  ),
  PersonalisationTextModel(
    title: 'How long do you prefer your workouts to be?',
    text: [
      '15-30 minutes',
      '30-45 minutes',
      '45-60 minutes',
      'Over 60 minutes',
    ],
  ),
  PersonalisationTextModel(
    title: 'Do you have any specific health concerns?',
    text: [
      'Joint issues',
      'Heart conditions',
      'Back problems',
      'None',
    ],
  ),
  PersonalisationTextModel(
    title: 'What equipment do you have access to?',
    text: [
      'Dumbbells',
      'Resistance bands',
      'Treadmill',
      'None',
    ],
  ),
];
