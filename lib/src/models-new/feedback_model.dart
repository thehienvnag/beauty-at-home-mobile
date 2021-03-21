import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'feedback_model.g.dart';

@JsonSerializable()
class FeedbackModel {
  String username;
  double rateScore;
  String userImage;
  List<String> imageUrl;
  String feedback;
  String commentedDate;

  FeedbackModel({
    this.username,
    this.rateScore,
    this.userImage,
    this.imageUrl,
    this.feedback,
    this.commentedDate,
  });

  factory FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackModelFromJson(json);

  Map<String, dynamic> toJson() => _$FeedbackModelToJson(this);
}
