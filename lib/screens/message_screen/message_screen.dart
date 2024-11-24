import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:marriage_management_app/screens/message_screen/models/message.dart';
import 'package:marriage_management_app/screens/message_screen/widgets/message_bubble.dart';
import 'package:marriage_management_app/utils/app_colors.dart';
import 'package:marriage_management_app/widgets/custom_text_form_field.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});

  final _messageController = TextEditingController();
  final messages = [
    Message(
        senderId: '2',
        receiverId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        content: 'Hello',
        sentTime: DateTime.now(),
        isMe: true,
        messageType: MessageType.text),
    Message(
        senderId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        receiverId: '2',
        content: 'How are you?',
        sentTime: DateTime.now(),
        isMe: true,
        messageType: MessageType.text),
    Message(
        senderId: '2',
        receiverId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        content: 'Fine',
        sentTime: DateTime.now(),
        isMe: false,
        messageType: MessageType.text),
    Message(
        senderId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        receiverId: '2',
        content: 'What are you doing?',
        sentTime: DateTime.now(),
        isMe: true,
        messageType: MessageType.text),
    Message(
        senderId: '2',
        receiverId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        content: 'Nothing',
        sentTime: DateTime.now(),
        isMe: false,
        messageType: MessageType.text),
    Message(
        senderId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        receiverId: '2',
        content: 'Can you help me?',
        sentTime: DateTime.now(),
        isMe: false,
        messageType: MessageType.text),
    Message(
        senderId: '2',
        receiverId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        content:
            'https://images.unsplash.com/photo-1669992755631-3c46eccbeb7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
        sentTime: DateTime.now(),
        isMe: false,
        messageType: MessageType.image),
    Message(
        senderId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        receiverId: '2',
        content: 'Thank you',
        sentTime: DateTime.now(),
        isMe: true,
        messageType: MessageType.text),
    Message(
      senderId: '2',
      receiverId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
      content: 'You are welcome',
      sentTime: DateTime.now(),
      isMe: true,
      messageType: MessageType.text,
    ),
    Message(
        senderId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        receiverId: '2',
        content: 'Bye',
        sentTime: DateTime.now(),
        isMe: false,
        messageType: MessageType.text),
    Message(
        senderId: '2',
        receiverId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        content: 'Bye',
        sentTime: DateTime.now(),
        isMe: true,
        messageType: MessageType.text),
    Message(
        senderId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        receiverId: '2',
        content: 'See you later',
        sentTime: DateTime.now(),
        isMe: false,
        messageType: MessageType.text),
    Message(
        senderId: '2',
        receiverId: 'gNfEHSQZ5ZUcY6JG5AarK8O0SVw1',
        content: 'See you later',
        sentTime: DateTime.now(),
        isMe: true,
        messageType: MessageType.text)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        padding: EdgeInsets.only(bottom: 16.h, left: 16.w, right: 16.w),
        height: double.infinity.h,
        width: double.infinity.w,
        child: Column(
          children: [
            _buildMessageList(),
            _buildChatTextField(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 70.h,
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(CupertinoIcons.arrow_left_circle_fill)),
      title: Row(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: const CircleAvatar(backgroundColor: Colors.red),
              ),
              Positioned(
                bottom: 3,
                right: 3,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 5.r,
                ),
              ),
            ],
          ),
          Gap(16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Saymon Islam',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Gap(4.h),
              Text(
                'Online',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: context.isDarkMode
                        ? AppColors.lightGreyClr
                        : AppColors.darkGreyClr),
              )
            ],
          )
        ],
      ),
    );
  }

  Row _buildChatTextField() {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
              hintText: 'Type your message', controller: _messageController),
        ),
        Gap(8.w),
        CircleAvatar(
          backgroundColor: AppColors.primaryClr,
          radius: 25.r,
          child: IconButton(
            icon: Icon(Icons.send, size: 25.sp),
            onPressed: () {},
          ),
        ),
        Gap(8.w),
        CircleAvatar(
          backgroundColor: AppColors.primaryClr,
          radius: 25.r,
          child: IconButton(
            icon: Icon(Icons.camera_alt, size: 25.sp),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget _buildMessageList() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) =>
            MessageBubble(message: messages[index]),
        itemCount: messages.length,
      ),
    );
  }
}
