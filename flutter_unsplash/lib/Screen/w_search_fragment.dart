import 'package:flutter/material.dart';
import 'package:flutter_unsplash/common/search_status.dart';

class SearchFragment extends StatefulWidget {
  const SearchFragment({super.key});

  @override
  State<SearchFragment> createState() => _SearchFragmentState();
}

class _SearchFragmentState extends State<SearchFragment> {
  search _searh = search.picture;

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
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("검색"),
            )
          ],
        ),
      ),
    );
  }
}
