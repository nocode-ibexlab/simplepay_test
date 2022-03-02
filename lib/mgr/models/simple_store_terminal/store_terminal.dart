import 'package:json_annotation/json_annotation.dart';

part 'store_terminal.g.dart';

@JsonSerializable()
class StoreTerminal {
  String id;
  String name;

  @override
  StoreTerminal({
    required this.id,
    required this.name,
  });

  factory StoreTerminal.fromJson(Map<String, dynamic> json) =>
      _$StoreTerminalFromJson(json);

  Map<String, dynamic> toJson() => _$StoreTerminalToJson(this);
}
