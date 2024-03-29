import 'package:flutter/material.dart';
import 'package:fusionwave_test_masam/models/comment_model';
import 'package:fusionwave_test_masam/models/controller/comment_controller';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CommentWidget extends StatelessWidget {
  final CommentModel model;

  CommentWidget({
    super.key,
    required this.model,
  });
  CommentController controller = Get.find<CommentController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: ListTile(
        title: Text(
          "title:    ${model.name} " ,
          style: const TextStyle(fontSize: 12),
        ),
        subtitle: Text(
          "body:    ${model.body}" ,
          style: const TextStyle(color: Colors.black, fontSize: 15),
        ),
        trailing: InkWell(
            onTap: () {
              controller.deleteComment(model);
            },
            child: const Icon(Icons.delete)),
      ),
    );
  }
}
