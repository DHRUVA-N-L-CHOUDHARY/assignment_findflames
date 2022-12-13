import 'package:findflames/src/utils/constants/strings.dart';

class Message {
  final String sender;
  final String avatar;
  final String time;
  final int unreadCount;
  final bool? isRead;
  final String text;
  final bool isauth;

  Message({
    required this.isauth,
    required this.sender,
    required this.avatar,
    required this.time,
    required this.unreadCount,
    required this.text,
    this.isRead,
  });
}

final List<Message> recentChats = [
  Message(
    sender: "Jordon",
    avatar: persona,
    time: '13:10',
    text: "Hii!",
    unreadCount: 1,
    isauth: true,
  ),
  Message(
      sender: "Tim",
      avatar: personb,
      time: '13:10',
      text: "Hii!",
      unreadCount: 0,
      isRead: true,
      isauth: true,
      ),
  Message(
    sender: "James",
    avatar: personc,
    time: '05:26',
    text: "Typing...",
    unreadCount: 10,
    isauth: false,
  ),
];
