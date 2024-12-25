part of 'training_detail_screen_part.dart';

class TrainingDetailScreen extends StatefulWidget {
  const TrainingDetailScreen({super.key, required this.training});

  final TrainingModel training;

  @override
  State<TrainingDetailScreen> createState() => _TrainingDetailScreenState();
}

class _TrainingDetailScreenState extends State<TrainingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: AppColors.c236F38,
                  ),
                  child: SizedBox(
                    height: 210.h,
                    width: context.kSize.width,
                  ),
                ),
              ),
              SizedBox(
                height: 64.w,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 8),
                  children: [
                    ...List.generate(
                      widget.training.exercises!.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: DecoratedBox(
                              decoration: BoxDecoration(boxShadow: [
                                if (index != 0)
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 1,
                                    spreadRadius: 2,
                                    offset: const Offset(0, 2),
                                  ),
                              ]),
                              child: SvgPicture.asset(
                                index == 0
                                    ? AppIcons.pushUpGreenTD
                                    : AppIcons.pushUpTD,
                                width: 64.w,
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
