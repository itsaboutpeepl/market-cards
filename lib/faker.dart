import 'package:faker/faker.dart';

class MyFaker {
  final Faker _faker = Faker();

  String getSentence() {
    return _faker.lorem.sentences(5).toString();
  }

  String getImage() {
    return _faker.image.image(
      width: 300,
      height: 500,
    );
  }
}
