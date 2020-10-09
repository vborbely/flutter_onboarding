
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding/config/router.gr.dart';
import 'package:flutter_onboarding/widgets/full_page_widget.dart';

class OnBoardingPage extends StatelessWidget {
  PageController _controller = PageController(initialPage: 0, viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: PageView(
        controller: _controller,
        children: _getPages(context),
      ),
    );
  }

  List<Widget> _getPages(BuildContext context) {
    return [
      FullPageWidget(
        gradient:
            LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.red, Colors.blue]),
        children: [
          Text("Page #1"),
          Text("Page content #1"),
          ElevatedButton(
              onPressed: () {
                _nextPageProgressing(context);
              },
              child: Text("Next"))
        ],
      ),
      FullPageWidget(
        gradient:
        LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Colors.orange, Colors.lightGreenAccent]),
        children: [
          Text("Page #2"),
          Text("Page content #2"),
          ElevatedButton(
              onPressed: () {
                _nextPageProgressing(context);
              },
              child: Text("Next"))
        ],
      ),
      FullPageWidget(
        backgroundColor: Colors.blue.shade100,
        children: [
          Text("Page #3"),
          Text("Page content #3"),
          OutlinedButton(
              onPressed: () {
                _nextPageProgressing(context);
              },
              child: Text("Done!"))
        ],
      )
    ];
  }

  void _nextPageProgressing(BuildContext context) {
    if (_controller.page + 1 < _getPages(context).length) {
      _controller.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeIn);
    } else {
      ExtendedNavigator.of(context).popAndPush(Routes.mainPage);
    }
  }
}
