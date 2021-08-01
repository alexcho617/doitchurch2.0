import 'package:do_it_church/screens/notice_add.dart';
import 'package:flutter/material.dart';
import 'notice_detail.dart';
import 'notice_list.dart';
import 'package:do_it_church/components/notice.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);
    // final size = mediaQuery.size.width;
    int screenIndex = 0;
    List<Widget> screenList = [Text('홈스크린'), Text('채팅'), Text('활동가이드화면'), Text('모아보기화면')];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          '',
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20),
          child: Text('Doitchurch',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xffA5A6F6),
            ),
          ),
        ),
        leadingWidth: 200,
        actions: [
          TextButton(onPressed: null, child: Text('my'))
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                TextButton(onPressed: null, child: Text('출결관리')),
                TextButton(onPressed: null, child: Text('교적관리'))
              ],
            ),
            Container(
              height: 50,
              color: Colors.yellow,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NoticeListRoute()),
                      );
                      setState(() {});
                    },
                    child: Text('공지사항')),
                TextButton(
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NoticeListRoute()),
                      );
                      setState(() {});
                    },
                  child: Row(
                    children: [
                      Text('더보기',
                        style: TextStyle(
                          fontSize: 15
                        ),),
                      Icon(Icons.arrow_forward_ios_rounded, size: 15,),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1,1),
                    blurRadius: 5.0
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NoticeDetail()),
                  );
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffE5E5E5),
                        width: 4.0,
                      ),
                    ),
                  ),
                  //width: size,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.notes_rounded,
                          color: Colors.black,),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '6월 생일잔치 세부사항',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        //날짜 + 작성자 서버에서 받아서 변수로 출력
                                        '2021년 6월 30일, 박강두 전도사',
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 15, bottom: 20),
                                        child: Text('6월 생일자: 김세희, 박효인, 최다운\n준비팀: 고은혜T, 고은미T, 박현동T\n'
                                            '준비 열심히 해서 재밌게 진행해봅시다! 각 반의 ',
                                        style: TextStyle(fontSize: 12, color: Colors.black),),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.remove_red_eye_outlined,
                          size: 12, color: Colors.grey,),
                          Text(' 10',
                          style: TextStyle(fontSize: 12, color: Colors.grey),),
                          Container(
                            width: 10,
                          ),
                          Icon(Icons.chat_outlined,
                          size: 12, color: Colors.grey),
                          Text(' 4',
                          style: TextStyle(fontSize: 12, color: Colors.grey),),
                          Container(
                            width: 10,
                          ),
                          Icon(Icons.favorite,
                              size: 12, color: Colors.red),
                          Text(' 10',
                            style: TextStyle(fontSize: 12, color: Colors.grey),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grass_rounded),
            label: '활동가이드',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: '모아보기',
          ),
        ],
        currentIndex: screenIndex,
        selectedItemColor: Color(0xff89A1F8),
        unselectedItemColor: Color(0xffE5E5E5),
        onTap: (value){
          setState(() {
            screenIndex = value;
          });
        },
      ),
    );
  }
}