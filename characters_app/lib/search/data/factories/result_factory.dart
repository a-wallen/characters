import 'package:characters_app/search/data/models/result.dart' as data;
import 'package:characters_app/search/domain/models/result.dart' as domain;

class ResultFactory {
  static domain.Result fromData(data.Topic topic) {
    return domain.Result(
      title: topic.text.split(' - ').first,
      description: topic.text.split(' - ').last,
      image: "https://duckduckgo.com/" + topic.icon.url,
    );
  }
}
