import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _firestore = FirebaseFirestore.instance;
late User signedInUser;

class ChatScreen extends StatefulWidget {
  static const String screenRoute = 'chat_screen';
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  String? messageText;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        print(signedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  // void getMessages() async{
  //   final messages = await _firestore.collection('messages').get();
  //   for(var message in messages.docs){
  //     print(message.data());
  //   }
  // }

  // void messagesStreams() async{
  //  await for(var snapshot in _firestore.collection('messages').snapshots()){
  //    for(var message in snapshot.docs){
  //      print(message.data());
  //    }
  //  }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          children: [

            Image.asset('assets/images/message_logo.png', height: 25,),
            SizedBox(width: 10,),
            Text('MessageMe'),
          ],

        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: ()
        {
          Navigator.pop(context,);
        }),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MessageStreamBuilder(),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.deepPurple,
                    width: 2.w,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextField(
                        controller: messageTextController,
                        onChanged: (value){
                          messageText = value ;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10.sp,
                            horizontal: 20.sp,
                          ),
                          hintText: 'Write your message here...',
                          border: InputBorder.none,
                        ),
                      ),

                    ),
                  TextButton(
                    onPressed: () {
                      messageTextController.clear();
                      _firestore.collection('messages').add({
                        'text' : messageText,
                        'sender' : signedInUser.email,
                        'time' : FieldValue.serverTimestamp(),
                      });
                    },
                    child: Text(
                      'send',
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 100,
            // ),
          ],
        ),
      ),
    );
  }
}

class MessageStreamBuilder extends StatelessWidget {
  const MessageStreamBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('messages').orderBy('time').snapshots(),
      builder: (context , snapshot){
        List<MessageLine> messageWidgets = [];

        if(!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.blue,
            ),
          );
        }

        final messages = snapshot.data!.docs.reversed;
        for (var message in messages){
          final messagesText = message.get('text');
          final messagesSender = message.get('sender');
          final currentUser = signedInUser.email;


          final messageWidget = MessageLine(
            sender: messagesSender,
            text: messagesText,
            isMe: currentUser == messagesSender,
          );
          messageWidgets.add(messageWidget);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 20.sp,),
            children: messageWidgets,
          ),
        );
      },
    );
  }
}


class MessageLine extends StatelessWidget {
  const MessageLine({this.text , this.sender,required this.isMe, Key? key}) : super(key: key);

  final String? sender;
  final String? text;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.0.sp),
      child: Column(
        crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            '$sender',
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.deepPurple,
            ),
          ),
          Material(
            elevation: 5.sp,
            borderRadius: isMe ? BorderRadius.only(
              topLeft: Radius.circular(30.sp),
              bottomLeft: Radius.circular(30.sp),
              bottomRight: Radius.circular(30.sp),
            ) : BorderRadius.only(
              topRight: Radius.circular(30.sp),
              bottomLeft: Radius.circular(30.sp),
              bottomRight: Radius.circular(30.sp),
            ),
            color: isMe ?  Colors.blue[800] : Colors.white,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.sp , vertical: 10.sp,),
              child: Text(
              '$text' ,
              style: TextStyle(
                fontSize: 15.sp,
               color:  isMe ? Colors.white : Colors.black ,
              ),
          ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  MyButton({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.sp),
      child: Material(
        elevation: 5.sp,
        color: color,
        borderRadius: BorderRadius.circular(10.sp),
        child: MaterialButton(
          onPressed:  onPressed,
          minWidth: 200.w,
          height: 42.h,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

