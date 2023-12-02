import 'package:flutter/cupertino.dart';
import 'package:flutter_instagram_ui/screen/home_screen.dart';
import 'package:flutter_instagram_ui/screen/search_screen.dart';

class InstaBody extends StatelessWidget {
  final int index;
  const InstaBody({required this.index,super.key});

  @override
  Widget build(BuildContext context) {
    if(index==0){
      return HomeBody();
    }
    return SearchBody();
  }
}
