import 'package:do_it_church/components/NoticeSnackBar.dart';
import 'package:do_it_church/screens/counselling_edit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CounsellingEditButton extends StatelessWidget {
  const CounsellingEditButton({
    Key? key,
    required this.docId,
    required this.title,
  }) : super(key: key);

  final docId;
  final title;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
      icon: Icon(Icons.more_horiz, color: Colors.black),
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.create_rounded),
                    title: Text('수정하기'),
                    onTap: () =>
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CounsellingEditRoute(counsellingId: docId)),),
                  ),
                  ListTile(
                    leading: Icon(Icons.refresh_rounded),
                    title: Text('공유하기'),
                  ),
                  ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('삭제하기'),
                    onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text("삭제 안내 창"),
                          content: Text('정말로 "$title"를 삭제하시겠습니까?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context, 'OK');
                                FirebaseFirestore.instance
                                    .collection("Counselling")
                                    .doc(docId)
                                    .delete()
                                    .then((value) {});
                                Navigator.pop(context);
                                NoticeSnackBar.show(context, '게시물이 삭제 되었습니다.');
                              },
                              child: Text('OK'),
                            ),
                          ],
                        )),
                  ),
                ],
              );
            });
      },
    );
  }
}