import 'dart:convert';

StateData stateDataFromJson(String str) => StateData.fromJson(json.decode(str));

String stateDataToJson(StateData data) => json.encode(data.toJson());

class StateData {
  List<State>? states;

  StateData({
    this.states,
  });

  factory StateData.fromJson(Map<String, dynamic> json) => StateData(
        states: List<State>.from(json["states"].map((x) => State.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "states": List<dynamic>.from(states!.map((x) => x.toJson())),
      };
}

class State {
  String state;
  List<String> districts;

  State({
    required this.state,
    required this.districts,
  });

  factory State.fromJson(Map<String, dynamic> json) => State(
        state: json["state"],
        districts: List<String>.from(json["districts"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "state": state,
        "districts": List<dynamic>.from(districts.map((x) => x)),
      };
}
