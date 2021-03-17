import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testapp/myinfo/providers/providers.dart';

final myinfoProvider = StateNotifierProvider<MyinfoProvider>((_) {
  return MyinfoProvider(_);
});

class MyinfoNickNameChangePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    String tempNickName = "";
    final String resultNickName = "";
    final TextEditingController nicknameController =
        TextEditingController(text: "");
    final test = watch(myinfoProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '설정',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Center(
                child: Container(
                  child: Text(
                    "새로운 닉네임을 입력해주세요.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: TextField(
                  maxLength: 8,
                  controller: nicknameController,
                  onChanged: (text) {
                    tempNickName = text;
                    context.read(myinfoProvider).setResultNickName(text);
                    print(
                        "@@@@@@@@@@@11111 ${context.read(myinfoProvider).hasResultNickName}");
                    print("@@@@@@@@@@222222 ${test}");
                    // widget.myinfoProvider.setResultNickName(text);
                  },
                  // decoration: InputDecoration(
                  //   counterText: "",
                  //   hintText: "닉네임",
                  //   enabledBorder: UnderlineInputBorder(
                  //       borderSide: BorderSide(
                  //           color: widget.myinfoProvider.hasNickNameUnderLine ==
                  //                   true
                  //               ? Colors.grey
                  //               : Colors.red)),
                  //   focusedBorder: UnderlineInputBorder(
                  //       borderSide: BorderSide(
                  //           color: widget.myinfoProvider.hasNickNameUnderLine ==
                  //                   true
                  //               ? Colors.grey
                  //               : Colors.red)),
                  //   suffix: widget.myinfoProvider.hasNickNameChecked
                  //       ? GestureDetector(
                  //           child: Text("확인완료"),
                  //           onTap: () {
                  //             authEmailNickNameCheck(nicknameController.text);
                  //           },
                  //         )
                  //       : GestureDetector(
                  //           child: Text("중복확인"),
                  //           onTap: () {
                  //             authEmailNickNameCheck(nicknameController.text);
                  //           },
                  //         ),
                  // ),
                ),
              ),
            ),
            Offstage(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 200, 0),
                child: Text(
                  "닉네임이 중복입니다.",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              // offstage: widget.myinfoProvider.hasNickNameUnderLine == true
              //     ? true
              //     : false,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: ElevatedButton(
                  child: Text("변경하기"),
                  onPressed: () {
                    // widget.myinfoProvider.hasNickNameChecked == false
                    //     ? flutterDialog()
                    //     :
                    //     // FirebaseFirestore.instance
                    //     //     .collection("users")
                    //     //     .doc(FirebaseApi.getId())
                    //     //     .update({"nickName": resultNickName});
                    //     Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
