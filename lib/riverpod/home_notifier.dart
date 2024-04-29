import 'package:online_shopping_grocery/utils.dart/file_collection.dart';

final homePageNotifierProvider =
    AsyncNotifierProvider.autoDispose<HomePageNotifier, HomePageViewMode>(() {
  return HomePageNotifier();
});

class HomePageViewMode {
  final imgList = [
    Image.asset('assets/images/Norway.png', width: double.infinity),
    Image.asset('assets/images/Greece.png', width: double.infinity),
    Image.asset('assets/images/Sweden.png', width: double.infinity)
  ];
  bool setVisiblity = false;
  int initialAdd = 0;

  int currentIndex = 0;
}

class HomePageNotifier extends AutoDisposeAsyncNotifier<HomePageViewMode> {
  final HomePageViewMode _onHomePageMode = HomePageViewMode();

  void carosuelSlider(int index) {
    _onHomePageMode.currentIndex = index;
    state = AsyncData(_onHomePageMode);
  }

  // Add button show on cart add
  void setVisible(index) {
    add();
    _onHomePageMode.setVisiblity = true;
    state = AsyncData(_onHomePageMode);
  }

  // Add + 1
  void add() {
    _onHomePageMode.initialAdd = _onHomePageMode.initialAdd + 1;

    state = AsyncData(_onHomePageMode);
  }

  void substract() {
    _onHomePageMode.initialAdd = _onHomePageMode.initialAdd - 1;
    if (_onHomePageMode.initialAdd == 0) {
      _onHomePageMode.setVisiblity = false;
    }

    state = AsyncData(_onHomePageMode);
  }

  @override
  build() {
    return _onHomePageMode;
  }
}
