class Friend {
  final int id;
  final String name, imageURL, lastMessage, lastMessageTime;
  final bool isOnline;

  Friend(this.id, this.name, this.imageURL, this.lastMessage,
      this.lastMessageTime, this.isOnline);

  Friend.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        imageURL = json['image'],
        lastMessage = json['lastMessage'],
        lastMessageTime = json['lastMessageTime'],
        isOnline = json['isOnline'];
}
