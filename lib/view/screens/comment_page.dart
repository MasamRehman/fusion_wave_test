import 'package:flutter/material.dart';

import 'package:fusionwave_test_masam/models/controller/comment_controller';
import 'package:fusionwave_test_masam/models/widgets/commet_widget.dart';

import 'package:get/get.dart';

class CommentsPage extends StatelessWidget {
  final CommentController commentController = Get.put(CommentController());

   CommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: GetBuilder<CommentController>(
        builder: (controller) {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else {
            
            return ListView.separated(
            shrinkWrap: true,
            primary: false,
                itemBuilder: (context, index) {
             
             return     CommentWidget(
                    model: controller.comments[index],
                
                    
                
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: controller.comments.length);
          }
        },
      ),
    );
  }
}
