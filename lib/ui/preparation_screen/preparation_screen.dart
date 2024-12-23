part of 'preparation_screen_part.dart';

class PreparationScreen extends StatefulWidget {
  const PreparationScreen({super.key});

  @override
  State<PreparationScreen> createState() => _PreparationScreenState();
}

class _PreparationScreenState extends State<PreparationScreen>
    with PreparationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preparation'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 61.h,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: 24,
              itemBuilder: (context, index) {
                String icon =
                    exerciseIconsGrey[index % exerciseIconsGrey.length];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SvgPicture.asset(icon),
                  ),
                );
              },
            ),
          ),
          20.g,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey.shade700,
              color: Colors.blue,
              value: value,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          24.g,
          const Text(
            "Please, wait",
            style: AppTypography.bodyRegular,
          ),
          8.g,
          Text(
            "We are making a preparation\n to personalize the app for you",
            textAlign: TextAlign.center,
            style: AppTypography.captionRegular
                .copyWith(color: Colors.white.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
