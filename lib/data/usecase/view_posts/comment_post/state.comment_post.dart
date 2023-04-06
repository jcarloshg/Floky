import 'package:flutter/material.dart';

class CommentPostChangeNotifier extends ChangeNotifier {
  //

  final CommentPostData _commentPostData = CommentPostData.getEmpty();
  CommentPostData getCommentPostData() => _commentPostData;

  String _messageError = '';
  String getMessageErro() => _messageError;
  void setMessageErro(String messageErroLogIn) {
    _messageError = messageErroLogIn;
    notifyListeners();
  }

  bool _isLoading = false;
  bool getIsLoading() => _isLoading;
  void setIsLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}

//============================================================
//============================================================
//============================================================
//============================================================
//============================================================

class CommentPostData {
  bool isValidData;
  String comment;
  CommentPostFormController? formController;

  CommentPostData({
    required this.isValidData,
    required this.comment,
    this.formController,
  });

  static CommentPostData getEmpty() =>
      CommentPostData(isValidData: false, comment: '');

  void updateWithFormController() {
    isValidData = formController?.formKey.currentState?.validate() ?? false;
    comment = formController?.comment.text ?? '';
  }

  CommentPostFormController getNewFormControl() {
    final CommentPostFormController formController = CommentPostFormController(
      commentString: comment,
    );
    this.formController = formController;
    return this.formController!;
  }
}

class CommentPostFormController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController comment = TextEditingController();

  CommentPostFormController({required String commentString}) {
    comment.text = commentString;
  }
}
