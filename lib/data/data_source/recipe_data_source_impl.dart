import 'package:recipe_app/data/data_source/recipe_data_source.dart';
import 'package:recipe_app/data/dto/recipe_dto.dart';

class RecipeDataSourceImpl implements RecipeDataSource {
  final List<RecipeDto> _mockRecipes = [
    RecipeDto(
      id: "recipe_001",
      name: "Traditional spare ribs baked",
      estimatedTime: 30,
      isFavorite: true,
      rate: 4.8,
      makeUserName: "최chef",
      makeUserImageUrl:
          "https://images.pexels.com/photos/3814446/pexels-photo-3814446.jpeg",
      videoUrl:
          "https://player.vimeo.com/external/414879105.sd.mp4?s=9ec2ec4a3f95584bba0a30b8c5c33232e79c6aee&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=11",
    ),

    RecipeDto(
      id: "recipe_002",
      name: "불고기",
      estimatedTime: 45,
      isFavorite: true,
      rate: 4.9,
      makeUserName: "한식마스터",
      makeUserImageUrl:
          "https://images.pexels.com/photos/3771807/pexels-photo-3771807.jpeg",
      videoUrl:
          "https://player.vimeo.com/external/371867463.sd.mp4?s=76edaeefdb9eb67734ca388c5889e202137dd11a&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=12",
    ),

    RecipeDto(
      id: "recipe_003",
      name: "파스타 카르보나라",
      estimatedTime: 20,
      isFavorite: false,
      rate: 4.5,
      makeUserName: "파스타장인",
      makeUserImageUrl:
          "https://images.pexels.com/photos/887827/pexels-photo-887827.jpeg",
      videoUrl: null,
      imageUrl: "https://picsum.photos/200?random=13",
    ),

    RecipeDto(
      id: "recipe_004",
      name: "베이컨 아보카도 샐러드",
      estimatedTime: 15,
      isFavorite: true,
      rate: 4.3,
      makeUserName: "건강식연구소",
      makeUserImageUrl:
          "https://images.pexels.com/photos/1197132/pexels-photo-1197132.jpeg",
      videoUrl:
          "https://player.vimeo.com/external/403283608.sd.mp4?s=e749a56d72da7809f57b6a865073b6b199326e19&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=14",
    ),

    RecipeDto(
      id: "recipe_005",
      name: "스팸 김치 볶음밥",
      estimatedTime: 25,
      isFavorite: false,
      rate: 4.7,
      makeUserName: "집밥요리사",
      makeUserImageUrl:
          "https://images.pexels.com/photos/3771089/pexels-photo-3771089.jpeg",
      videoUrl: null,
      imageUrl: "https://picsum.photos/200?random=15",
    ),

    RecipeDto(
      id: "recipe_006",
      name: "초코 머핀",
      estimatedTime: 60,
      isFavorite: true,
      rate: 4.6,
      makeUserName: "베이킹마스터",
      makeUserImageUrl:
          "https://images.pexels.com/photos/4148961/pexels-photo-4148961.jpeg",
      videoUrl:
          "https://player.vimeo.com/external/368767165.sd.mp4?s=0797a7c9b25ae2a1f192a1ded04a7f335774cb91&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=16",
    ),

    RecipeDto(
      id: "recipe_007",
      name: "닭갈비",
      estimatedTime: 40,
      isFavorite: false,
      rate: 4.4,
      makeUserName: "춘천요리사",
      makeUserImageUrl:
          "https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg",
      videoUrl:
          "https://player.vimeo.com/external/352320117.sd.mp4?s=81764d11ab83a6c46901e1054221fed80a26f073&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=17",
    ),
    RecipeDto(
      id: "recipe_001",
      name: "김치볶음밥",
      estimatedTime: 20,
      isFavorite: false,
      rate: 4.2,
      makeUserName: "한식달인",
      makeUserImageUrl: "https://randomuser.me/api/portraits/men/1.jpg",
      videoUrl:
          "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=1",
    ),
    RecipeDto(
      id: "recipe_002",
      name: "된장찌개",
      estimatedTime: 30,
      isFavorite: true,
      rate: 4.5,
      makeUserName: "시골할머니",
      makeUserImageUrl: "https://randomuser.me/api/portraits/women/2.jpg",
      videoUrl:
          "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=2",
    ),
    RecipeDto(
      id: "recipe_003",
      name: "비빔밥",
      estimatedTime: 25,
      isFavorite: true,
      rate: 4.8,
      makeUserName: "전주요리사",
      makeUserImageUrl: "https://randomuser.me/api/portraits/men/3.jpg",
      videoUrl:
          "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=3",
    ),
    RecipeDto(
      id: "recipe_004",
      name: "불고기",
      estimatedTime: 35,
      isFavorite: false,
      rate: 4.6,
      makeUserName: "서울셰프",
      makeUserImageUrl: "https://randomuser.me/api/portraits/men/4.jpg",
      videoUrl:
          "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=4",
    ),
    RecipeDto(
      id: "recipe_005",
      name: "잡채",
      estimatedTime: 40,
      isFavorite: false,
      rate: 4.3,
      makeUserName: "명절마스터",
      makeUserImageUrl: "https://randomuser.me/api/portraits/women/5.jpg",
      videoUrl:
          "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=5",
    ),
    RecipeDto(
      id: "recipe_006",
      name: "떡볶이",
      estimatedTime: 15,
      isFavorite: true,
      rate: 4.7,
      makeUserName: "분식왕",
      makeUserImageUrl: "https://randomuser.me/api/portraits/men/6.jpg",
      videoUrl:
          "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=6",
    ),
    RecipeDto(
      id: "recipe_007",
      name: "닭갈비",
      estimatedTime: 40,
      isFavorite: false,
      rate: 4.4,
      makeUserName: "춘천요리사",
      makeUserImageUrl:
          "https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg",
      videoUrl:
          "https://player.vimeo.com/external/352320117.sd.mp4?s=81764d11ab83a6c46901e1054221fed80a26f073&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=7",
    ),
    RecipeDto(
      id: "recipe_008",
      name: "갈비찜",
      estimatedTime: 50,
      isFavorite: false,
      rate: 4.9,
      makeUserName: "명절셰프",
      makeUserImageUrl: "https://randomuser.me/api/portraits/women/7.jpg",
      videoUrl:
          "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=8",
    ),
    RecipeDto(
      id: "recipe_009",
      name: "콩나물국밥",
      estimatedTime: 20,
      isFavorite: true,
      rate: 4.1,
      makeUserName: "해장국장인",
      makeUserImageUrl: "https://randomuser.me/api/portraits/men/9.jpg",
      videoUrl:
          "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=9",
    ),
    RecipeDto(
      id: "recipe_010",
      name: "오징어볶음",
      estimatedTime: 30,
      isFavorite: false,
      rate: 4.0,
      makeUserName: "해물셰프",
      makeUserImageUrl: "https://randomuser.me/api/portraits/men/10.jpg",
      videoUrl:
          "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=10",
    ),
  ];

  @override
  Future<List<RecipeDto>> fetchSavedRecipes({String query = ''}) async {
    final mockRecipesDto =
        _mockRecipes
            .where((e) => query.isNotEmpty ? e.name.contains(query) : true) // 서버 비즈니스 로직
            .toList();
    return await Future.value(mockRecipesDto);
  }

  @override
  Future<RecipeDto> toggleFavorite(String id) async {
    final recipesDto = await Future.value(_mockRecipes);

    // 서버 비즈니스 로직
    final recipeDto = recipesDto.firstWhere((e) => e.id == id);
    recipeDto.isFavorite = !recipeDto.isFavorite;
    final index = _mockRecipes.indexOf(recipeDto);
    _mockRecipes[index] = recipeDto;

    return await Future.value(recipeDto);
  }
}
