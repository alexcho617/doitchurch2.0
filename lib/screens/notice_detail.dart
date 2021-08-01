import 'package:flutter/material.dart';
import 'new_notice_route.dart';

class NoticeDetail extends StatefulWidget {
  const NoticeDetail({Key? key}) : super(key: key);

  @override
  NoticeDetailState createState() => NoticeDetailState();
}

class NoticeDetailState extends State<NoticeDetail> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'notice detail',
        home: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.white,
           title: Text('공지목록보기',
            style: TextStyle(
              fontSize: 15,
              color:Colors.black,
            ),
           ),
            leading: IconButton(
               icon: Icon(Icons.arrow_back_ios_rounded),
                color:Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {

                  });
                }),
            leadingWidth: 20,
            actions: [
              IconButton(
                 icon: Icon(
                   Icons.create_rounded,
                    color: Colors.blueAccent,
                  ),
                   onPressed: null),
          ],
         ),

          body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
               color: Colors.white,
                child: ListTile(
                    leading: Icon(Icons.menu),
                    title: Text(
                    '6월 생일잔치 세부사항',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '2021년 6월 30일, 박강두 전도사',
                    style: TextStyle(fontSize: 10),
                  )),
            ),

            Container(

              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Text(
                '6월 생일자 : 김세희, 박효인, 최다운 \n준비팀 : 고은혜T, 고은미T, 박한동T \n\n 준비 열심히 해서 재밌게 진행해봅시다! 각 반의 선생님들께서는 아이들에게 생일잔치에 대한 문자 메세지를 하루 전 날에 꼬옥 보내주세요!\n\n**공지를 확인하신 선생님들은 댓글창에 "확인완료" 혹은 "확인했습니다"라고 댓글 부탁드려요~',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.all(4.0),
              color: Colors.white38,
              child: OutlineButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.blueAccent,
                ),
                label: Text('공유하기'),
              ),
              margin: const EdgeInsets.only(left: 10),
            ),

              //구분선 만들기
              Container(
                height:1.0,
                width:500.0,
                color: Colors.black38,
              ),



            Container(
                color: Colors.white38,
              margin: EdgeInsets.all(10),
              child:Row(
                children: <Widget>[
                  Flexible(
              child:TextField(
                decoration: InputDecoration(
                  labelText: '댓글 작성',
                  hintText: 'Enter your comment.',
                  labelStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1, color: Colors.redAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1, color: Colors.black38),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                keyboardType: TextInputType.text,
              )
                  ),
           ]
            )
            ),


            Container(

              color: Colors.white38,
              child: ListTile(
                  //CircleAvatar() , use images from the images folder
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text(
                    '김은희(소망반)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    '확인완료했습니다! 이번에도 즐겁게!',
                    style: TextStyle(fontSize: 13),
                  )
              ),
            ),


            Container(
              color: Colors.white38,
              child: ListTile(
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text(
                    '박세미(다윗반)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
            ),


                Container(
                  color: Colors.white38,
                  child: ListTile(
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text('고은미(사랑반)',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                      subtitle: Text('확인완료했습니다! 늘 신경써주셔서 감사해요!',
                        style: TextStyle(fontSize: 13),)

                  ),

                ),

            Container(
              color: Colors.white38,

              child: ListTile(
                //CircleAvatar() , use images from the images folder
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text(
                    '김말희(믿음반)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    '늘 수고가 많으세요:) 화이팅!',
                    style: TextStyle(fontSize: 13),
                  )),
            ),
            
          ],
        ),
      ),
    ));

  }
}