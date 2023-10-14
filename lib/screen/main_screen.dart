import 'package:english_words_project/component.dart';
import 'package:english_words_project/screen/correct_words_screen.dart';
import 'package:flutter/material.dart';

class MainScren extends StatefulWidget {
  const MainScren({Key? key}) : super(key: key);

  @override
  State<MainScren> createState() => _MainScrenState();
}

class _MainScrenState extends State<MainScren> {

  int _selectedIndex = 0;

  final List<Widget> _navIndex = [
    CorrectWordsScreen(),
    CorrectWordsScreen(),
    CorrectWordsScreen(),
  ];

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: renderAppbar(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: _navIndex.elementAt(_selectedIndex),
        ),
      ),bottomNavigationBar: BottomNavigationBar(
      fixedColor: Colors.blue,
      unselectedItemColor: Colors.blueGrey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: const [
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.home_filled),
        //   label: '홈',
        //   backgroundColor: Colors.white,
        // ),
        BottomNavigationBarItem(
          icon: Icon(Icons.my_library_books_outlined),
          label: '영어 단어',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.face),
          label: '영어 회화 문장',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: '내가 정리한 표현',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onNavTapped,
    ),
      
    );
  }
}
