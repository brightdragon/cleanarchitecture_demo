/*
{
"id": 1,
"name": "Leanne Graham",
"username": "Bret",
"email": "Sincere@april.biz",
"address": {
"street": "Kulas Light",
"suite": "Apt. 556",
"city": "Gwenborough",
"zipcode": "92998-3874",
"geo": {
"lat": "-37.3159",
"lng": "81.1496"
}
},
"phone": "1-770-736-8031 x56442",
"website": "hildegard.org",
"company": {
"name": "Romaguera-Crona",
"catchPhrase": "Multi-layered client-server neural-net",
"bs": "harness real-time e-markets"
}*/
/*@JsonSerializable()
class EventTab {

  @JsonKey(name: 'meta') MetaDataDto? meta;
  @JsonKey(name: 'data') Event? data;

  EventTab(
      this.meta,
      this.data
      );

  factory EventTab.fromJson(Map<String, dynamic> json) => _$EventTabFromJson(json);
  Map<String, dynamic> toJson() => _$EventTabToJson(this);

}*/

import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {

  final int? id;
  final String? name;

  UserDto({
    this.id,
    this.name
  });

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

}