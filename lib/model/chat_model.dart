






class ChatModel{

 final String name;

 ChatModel({    required this.name, });
 factory ChatModel.fromJson(  json ){


   return ChatModel(name: json['name'], );
 }
}