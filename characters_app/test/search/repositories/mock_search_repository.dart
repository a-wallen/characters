import 'package:characters_app/search/domain/models/result.dart';
import 'package:characters_app/search/domain/repositories/search_repository.dart';

class MockSearchRepository implements SearchRepository {
  static const _results = [
    Result(
      image: 'https://duckduckgo.com/Alma_Gutierrez',
      title: 'Alma Gutierrez',
      description:
          'Alma Gutierrez - Alma M. Gutierrez is a fictional character on the HBO drama The Wire, played by actress Michelle Paress. Gutierrez is a dedicated and idealistic young reporter on the city desk of The Baltimore Sun.',
    ),
    Result(
      image: 'https://duckduckgo.com/Avon_Barksdale',
      title: 'Avon Barksdale',
      description:
          'Avon Barksdale - Avon Randolph Barksdale is a fictional character in the American television series The Wire, played by Wood Harris. Barksdale is one of the most powerful drug dealers in Baltimore, Maryland, and runs the Barksdale Organization.',
    ),
    Result(
      image: 'https://duckduckgo.com/Barksdale_Organization',
      title: 'Barksdale_Organization',
      description:
          'Barksdale Organization - The Barksdale Organization is a fictional drug-dealing gang on the television series The Wire. Many of the characters featured in season one of The Wire belong to this organization.',
    ),
    Result(
      image: 'https://duckduckgo.com/Beadie_Russell',
      title: 'Beadie Russell',
      description:
          'Beadie Russell - Beatrice \"Beadie\" Russell is a fictional character on the HBO drama The Wire, played by actress Amy Ryan. She was featured prominently in the second season, after she discovered thirteen corpses in a container on the Baltimore docks.',
    ),
    Result(
      image: 'https://duckduckgo.com/Bodie_Broadus',
      title: 'Bodie Broadus',
      description:
          'Bodie Broadus - Alma M. Gutierrez is a fictional character on the HBO drama The Wire, played by actress Michelle Paress. Gutierrez is a dedicated and idealistic young reporter on the city desk of The Baltimore Sun.',
    ),
  ];
  @override
  Future<Iterable<Result>> search(String query) async {
    return _results.where(
      (result) => result.title.toLowerCase().contains(
            query.toLowerCase(),
          ),
    );
  }
}
