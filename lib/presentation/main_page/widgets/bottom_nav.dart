import 'package:flutter/material.dart';
import 'package:stream_flash/core/colors/colors.dart';

ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (context, newIndex, _) {
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndexNotifier.value,
              backgroundColor: backgroundcolor,
              //backgroundColor: Colors.grey,
              onTap: (value) {
                selectedIndexNotifier.value = value;
                selectedIndexNotifier.notifyListeners;
                print(value);
              },
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              selectedItemColor: Colors.white,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.video_library_outlined),
                  label: 'New & Hot',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions_outlined),
                  label: 'Fast Laughs',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.download),
                  label: 'Downloads',
                )
              ]);
        });
  }
}
