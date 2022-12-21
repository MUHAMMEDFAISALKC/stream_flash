import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stream_flash/core/constants.dart';
import 'package:stream_flash/presentation/search/widgets/search_idle.dart';
import 'package:stream_flash/presentation/search/widgets/search_result.dart';
import 'package:stream_flash/presentation/widgets/app_bar_common.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({super.key});

  final searchTextController = TextEditingController();
  final bottomContents = [
    SearchIdle(),
    SearchResultWidget(),
  ];

  ValueNotifier<Widget> bottomDisplay = ValueNotifier(SearchIdle());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50), child: AppBarCommon()),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                onTap: () {
                  if (searchTextController.value != null) {
                    bottomDisplay.value = bottomContents[1];
                    bottomDisplay.notifyListeners();
                  }
                },
                controller: searchTextController,
                autofocus: true,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    //border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadiusDirectional.circular(20)),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 20, left: 10),
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                ),
                placeholder: 'Search for your favourate movie',
                style: TextStyle(color: Colors.white),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
              ),
              heightBox,
              Expanded(
                child: ValueListenableBuilder(
                    valueListenable: bottomDisplay,
                    builder: (context, newValue, child) {
                      return newValue;
                    }),
              )
            ],
          ),
        )));
  }
}
