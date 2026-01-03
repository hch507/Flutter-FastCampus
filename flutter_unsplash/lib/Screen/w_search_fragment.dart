import 'package:flutter/material.dart';
import 'package:flutter_unsplash/Screen/w_unsplash_fragment.dart';
import 'package:flutter_unsplash/common/search_status.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/Input_controller.dart';

class SearchFragment extends StatefulWidget {
  const SearchFragment({super.key});

  @override
  State<SearchFragment> createState() => _SearchFragmentState();
}

class _SearchFragmentState extends State<SearchFragment> {
  search _searh = search.picture;
  TextEditingController inputController = TextEditingController();
  InputController controller = Get.put(InputController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Icon(
              Icons.search,
              size: 120.0,
            ),
            SizedBox(
              height: 30,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                    value: search.picture,
                    groupValue: _searh,
                    onChanged: (value) {
                      setState(() {
                        _searh = value!;
                      });
                    }),
                Text("Picture"),
                Radio(
                  value: search.person,
                  groupValue: _searh,
                  onChanged: (value) {
                    setState(() {
                      _searh = value!;
                    });
                  },
                ),
                Text("Person"),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                labelText: _searh.name,
                hintText: "검색어를 입력해주세요.",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
              controller: inputController,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              // onPressed: () { Get.to(UnsplashFragment());},
              onPressed: () { Get.to(UnsplashFragment(),arguments: inputController.text);},
              // onPressed: () {controller.fetcchData(inputController.text);},
              child: Text("검색"),
            )
          ],
        ),
      ),
    );
  }
}
