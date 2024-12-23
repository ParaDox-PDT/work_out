part of '../preparation_screen_part.dart';

mixin PreparationMixin on State<PreparationScreen> {
  final ScrollController _scrollController = ScrollController();
  Timer? _timer;
  double value = 0;

  Future<void> _init() async {
    _startAutoScroll();
    Future.delayed(
      const Duration(milliseconds: 5000),
      () async {
        await localStorage.setFirstStart(false);
        if (mounted) {
          context.goNamed(Routes.home);
        }
      },
    );
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        value += 1 / 50;
      });
      if (_scrollController.hasClients) {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.offset;

        if (currentScroll >= maxScroll) {
          _scrollController.jumpTo(0);
        } else {
          _scrollController.animateTo(
            currentScroll + 4,
            duration: const Duration(milliseconds: 50),
            curve: Curves.linear,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }
}
