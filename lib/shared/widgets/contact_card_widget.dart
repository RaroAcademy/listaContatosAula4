import 'package:flutter/material.dart';
import 'package:lista_contatos/shared/models/chat_data_model.dart';

import 'online_widget.dart';
import 'widgets_export.dart';

class ContactCard extends StatelessWidget {
  final ChatData chatData;

  const ContactCard({
    Key? key,
    required this.chatData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child: Stack(
                    children: [
                      ProfileImage(
                        profileImageUrl: chatData.profileImage,
                      ),
                      if (chatData.isOnline)
                        Positioned(
                          bottom: 9.0,
                          right: 9.0,
                          child: OnlineWidget(),
                        ),
                      if (chatData.isFavorite)
                        Positioned(
                          top: 0.0,
                          left: 0.0,
                          child: FavoriteWidget(),
                        ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      chatData.name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      width: 200,
                      child: Flex(
                          direction: Axis.vertical,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                chatData.lastMessage,
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(chatData.dateToShow),
                  if (chatData.hasUnreadMessages) ...[
                    SizedBox(
                      height: 4.0,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "${chatData.unreadMessages}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      width: 24.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    )
                  ] else
                    SizedBox(height: 28),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
