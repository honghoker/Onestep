import 'package:flutter/material.dart';

import 'myinfoNickNameChagnePage.dart';

class MyinfoSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Container(
                  child: Text(
                    "알림 설정",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "푸시 알림 설정",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      // Switch(
                      //   value: widget.myinfoProvider.hasPushSwitched,
                      //   onChanged: (value) {
                      //     print(
                      //         "db value 1 = ${snapshot.data.first.pushChecked}");
                      //     print("value = $value");

                      //     value == false
                      //         ? p.updatePushNotice(PushNoticeChk(
                      //             pushChecked: 'false',
                      //             firestoreid: FirebaseApi.getId(),
                      //             marketingChecked:
                      //                 snapshot.data.first.marketingChecked))
                      //         : p.updatePushNotice(PushNoticeChk(
                      //             pushChecked: 'true',
                      //             firestoreid: FirebaseApi.getId(),
                      //             marketingChecked:
                      //                 snapshot.data.first.marketingChecked));

                      //     widget.myinfoProvider.changedPushSwitchValue(value);
                      //   },
                      //   activeTrackColor: Colors.lightGreenAccent,
                      //   activeColor: Colors.green,
                      // ),
                      // IconButton(
                      //   icon: Icon(Icons.keyboard_arrow_right),
                      //   onPressed: () {},
                      // )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "마케팅 알림 설정",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      // Switch(
                      //   value: widget.myinfoProvider.hasMarketingSwitched,
                      //   onChanged: (value) {
                      //     print(
                      //         "db value 1 = ${snapshot.data.first.marketingChecked}");
                      //     print("value = $value");

                      //     value == false
                      //         ? p.updatePushNotice(PushNoticeChk(
                      //             pushChecked:
                      //                 snapshot.data.first.pushChecked,
                      //             firestoreid: FirebaseApi.getId(),
                      //             marketingChecked: 'false'))
                      //         : p.updatePushNotice(PushNoticeChk(
                      //             pushChecked:
                      //                 snapshot.data.first.pushChecked,
                      //             firestoreid: FirebaseApi.getId(),
                      //             marketingChecked: 'true'));

                      //     widget.myinfoProvider
                      //         .changedMarketingSwitchValue(value);
                      //   },
                      //   activeTrackColor: Colors.lightGreenAccent,
                      //   activeColor: Colors.green,
                      // ),
                      // IconButton(
                      //   icon: Icon(Icons.keyboard_arrow_right),
                      //   onPressed: () {},
                      // )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Container(
                  child: Text(
                    "사용자 설정",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => provider.Consumer<MyinfoProvider>(
                  //           builder: (context, myinfoProvider, _) =>
                  //               MyinfoNickNameChangePage(
                  //             myinfoProvider: widget.myinfoProvider,
                  //           ),
                  //         )));

                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //       builder: (context) => MyinfoNickNameChangePage(
                  //             myinfoProvider: widget.myinfoProvider,
                  //           )),
                  // );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "닉네임 변경",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: () {
                          // // Navigator.of(context).push(MaterialPageRoute(
                          // //           builder: (context) =>
                          // //               Consumer<MyinfoProvider>(
                          // //                 builder:
                          // //                     (context, myinfoProvider, _) =>
                          // //                         MyinfoNickNameChangePage(
                          // //                   myinfoProvider: myinfoProvider,
                          // //                 ),
                          // //               )));

                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyinfoNickNameChangePage()),
                          );

                          // // Navigator.of(context).push(MaterialPageRoute(
                          // //     builder: (context) =>
                          // //         MyinfoNickNameChangePage()));
                        },
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Container(
                  child: Text(
                    "기타",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "언어설정",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "로그아웃",
                          style:
                              TextStyle(fontSize: 15, color: Colors.red[200]),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
