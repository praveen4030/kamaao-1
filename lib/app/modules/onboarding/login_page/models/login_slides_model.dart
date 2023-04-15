class LoginSlidesModel {
  String title;
  String subTitle;
  String image;

  LoginSlidesModel({
    required this.title,
    required this.image,
    required this.subTitle,
  });

  factory LoginSlidesModel.fromDocument(LoginSlidesModel document) {
    return LoginSlidesModel(
      title: document.title,
      subTitle: document.subTitle,
      image: document.image,
    );
  }
}
