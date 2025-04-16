import 'package:recipe_app/data/data_source/recipe_data_source.dart';
import 'package:recipe_app/data/dto/ingredient_dto.dart';
import 'package:recipe_app/data/dto/procedure_dto.dart';
import 'package:recipe_app/data/dto/recipe_dto.dart';
import 'package:recipe_app/data/dto/recipe_info_dto.dart';


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
  final List<RecipeInfoDto> _mockRecipesInfo = [
    RecipeInfoDto(
      id: "recipe_001",
      name: "Traditional spare ribs baked",
      estimatedTime: 30,
      isFavorite: true,
      rate: 4.8,
      makeUserName: "최chef",
      makeUserImageUrl: "https://images.pexels.com/photos/3814446/pexels-photo-3814446.jpeg",
      videoUrl: "https://player.vimeo.com/external/414879105.sd.mp4?s=9ec2ec4a3f95584bba0a30b8c5c33232e79c6aee&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=11",
      reviewCount: 128,
      ingredient: [
        IngredientDto(
          name: "돼지갈비",
          weight: "500g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "간장",
          weight: "3큰술",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "설탕",
          weight: "2큰술",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
      ],
      procedure: [
        ProcedureDto(
          descriptions: [
            "갈비는 찬물에 1시간 정도 담가 핏물을 빼주세요.",
            "양념 재료를 모두 섞어 양념장을 만듭니다.",
            "핏물 뺀 갈비에 양념장을 골고루 발라 30분간 재워둡니다.",
            "오븐을 180°C로 예열합니다.",
            "양념한 갈비를 오븐에 넣고 20분간 굽습니다."
          ],
        ),
      ],
      makeUserLocation: "서울, 한국",
      isFollow: false,
      recipeDeepLink: "recipe://detail/recipe_001",
    ),

    RecipeInfoDto(
      id: "recipe_002",
      name: "불고기",
      estimatedTime: 45,
      isFavorite: true,
      rate: 4.9,
      makeUserName: "한식마스터",
      makeUserImageUrl: "https://images.pexels.com/photos/3771807/pexels-photo-3771807.jpeg",
      videoUrl: "https://player.vimeo.com/external/371867463.sd.mp4?s=76edaeefdb9eb67734ca388c5889e202137dd11a&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=12",
      reviewCount: 256,
      ingredient: [
        IngredientDto(
          name: "소고기 (등심)",
          weight: "400g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "양파",
          weight: "1개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "배",
          weight: "1/2개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "간장",
          weight: "4큰술",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
      ],
      procedure: [
        ProcedureDto(
          descriptions: [
            "소고기는 얇게 썰어 준비합니다.",
            "양파와 배는 곱게 갈아 체에 걸러 즙을 냅니다.",
            "간장, 설탕, 참기름, 다진 마늘, 양파와 배즙을 섞어 양념장을 만듭니다.",
            "소고기에 양념장을 넣고 30분간 재워둡니다.",
            "팬을 뜨겁게 달군 후 재운 고기를 볶아줍니다.",
            "양파를 넣고 함께 볶다가 고기가 익으면 완성입니다."
          ],
        ),
      ],
      makeUserLocation: "전주, 한국",
      isFollow: true,
      recipeDeepLink: "recipe://detail/recipe_002",
    ),

    RecipeInfoDto(
      id: "recipe_003",
      name: "파스타 카르보나라",
      estimatedTime: 20,
      isFavorite: false,
      rate: 4.5,
      makeUserName: "파스타장인",
      makeUserImageUrl: "https://images.pexels.com/photos/887827/pexels-photo-887827.jpeg",
      videoUrl: null,
      imageUrl: "https://picsum.photos/200?random=13",
      reviewCount: 89,
      ingredient: [
        IngredientDto(
          name: "스파게티 면",
          weight: "200g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "베이컨",
          weight: "100g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "달걀",
          weight: "2개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "파마산 치즈",
          weight: "50g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
      ],
      procedure: [
        ProcedureDto(
          descriptions: [
            "넉넉한 양의 물에 소금을 넣고 스파게티를 삶습니다.",
            "베이컨은 작게 썰어 팬에 볶아 바삭하게 만듭니다.",
            "달걀과 파마산 치즈를 잘 섞어 소스를 만듭니다.",
            "삶은 면을 베이컨 팬에 넣고 달걀 소스를 부어 빠르게 섞습니다.",
            "불을 끄고 남은 치즈를 뿌려 완성합니다."
          ],
        ),
      ],
      makeUserLocation: "밀라노, 이탈리아",
      isFollow: false,
      recipeDeepLink: "recipe://detail/recipe_003",
    ),

    RecipeInfoDto(
      id: "recipe_004",
      name: "베이컨 아보카도 샐러드",
      estimatedTime: 15,
      isFavorite: true,
      rate: 4.3,
      makeUserName: "건강식연구소",
      makeUserImageUrl: "https://images.pexels.com/photos/1197132/pexels-photo-1197132.jpeg",
      videoUrl: "https://player.vimeo.com/external/403283608.sd.mp4?s=e749a56d72da7809f57b6a865073b6b199326e19&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=14",
      reviewCount: 67,
      ingredient: [
        IngredientDto(
          name: "아보카도",
          weight: "1개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "베이컨",
          weight: "50g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "양상추",
          weight: "100g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "올리브 오일",
          weight: "1큰술",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
      ],
      procedure: [
        ProcedureDto(
          descriptions: [
            "베이컨을 바삭하게 구워 잘게 부숩니다.",
            "아보카도는 반으로 갈라 씨를 제거하고 주사위 모양으로 자릅니다.",
            "양상추는 깨끗이 씻어 손으로 잘게 찢습니다.",
            "올리브 오일, 레몬즙, 소금, 후추를 섞어 드레싱을 만듭니다.",
            "모든 재료를 그릇에 담고 드레싱을 뿌려 가볍게 섞어줍니다."
          ],
        ),
      ],
      makeUserLocation: "LA, 미국",
      isFollow: true,
      recipeDeepLink: "recipe://detail/recipe_004",
    ),

    RecipeInfoDto(
      id: "recipe_005",
      name: "스팸 김치 볶음밥",
      estimatedTime: 25,
      isFavorite: false,
      rate: 4.7,
      makeUserName: "집밥요리사",
      makeUserImageUrl: "https://images.pexels.com/photos/3771089/pexels-photo-3771089.jpeg",
      videoUrl: null,
      imageUrl: "https://picsum.photos/200?random=15",
      reviewCount: 112,
      ingredient: [
        IngredientDto(
          name: "밥",
          weight: "1공기",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "스팸",
          weight: "1/2캔",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "김치",
          weight: "1/2컵",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "계란",
          weight: "1개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
      ],
      procedure: [
        ProcedureDto(
          descriptions: [
            "스팸은 작은 주사위 모양으로 썰어 팬에 볶아 바삭하게 만듭니다.",
            "김치는 잘게 썰어 스팸이 있는 팬에 넣고 볶습니다.",
            "김치가 볶아지면 찬밥을 넣고 잘 섞어가며 볶습니다.",
            "밥알이 잘 풀어지면 계란을 풀어 넣고 재빨리 섞어줍니다.",
            "참기름을 두르고 통깨를 뿌려 완성합니다."
          ],
        ),
      ],
      makeUserLocation: "부산, 한국",
      isFollow: false,
      recipeDeepLink: "recipe://detail/recipe_005",
    ),

    RecipeInfoDto(
      id: "recipe_006",
      name: "초코 머핀",
      estimatedTime: 60,
      isFavorite: true,
      rate: 4.6,
      makeUserName: "베이킹마스터",
      makeUserImageUrl: "https://images.pexels.com/photos/4148961/pexels-photo-4148961.jpeg",
      videoUrl: "https://player.vimeo.com/external/368767165.sd.mp4?s=0797a7c9b25ae2a1f192a1ded04a7f335774cb91&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=16",
      reviewCount: 94,
      ingredient: [
        IngredientDto(
          name: "밀가루",
          weight: "200g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "코코아 파우더",
          weight: "30g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "설탕",
          weight: "150g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "버터",
          weight: "100g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "계란",
          weight: "2개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "초콜릿 칩",
          weight: "50g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
      ],
      procedure: [
        ProcedureDto(
          descriptions: [
            "오븐을 180°C로 예열합니다.",
            "밀가루, 코코아 파우더, 베이킹파우더를 체쳐서 섞어둡니다.",
            "버터와 설탕을 크림화하여 부드럽게 만듭니다.",
            "계란을 하나씩 넣어가며 잘 섞어줍니다.",
            "체친 가루 재료를 넣고 주걱으로 살살 섞어줍니다.",
            "초콜릿 칩을 넣고 가볍게 섞습니다.",
            "머핀 틀에 반죽을 2/3 정도 채웁니다.",
            "예열된 오븐에서 20-25분간 구워줍니다."
          ],
        ),
      ],
      makeUserLocation: "파리, 프랑스",
      isFollow: true,
      recipeDeepLink: "recipe://detail/recipe_006",
    ),

    RecipeInfoDto(
      id: "recipe_007",
      name: "닭갈비",
      estimatedTime: 40,
      isFavorite: false,
      rate: 4.4,
      makeUserName: "춘천요리사",
      makeUserImageUrl: "https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg",
      videoUrl: "https://player.vimeo.com/external/352320117.sd.mp4?s=81764d11ab83a6c46901e1054221fed80a26f073&profile_id=139&oauth2_token_id=57447761",
      imageUrl: "https://picsum.photos/200?random=17",
      reviewCount: 75,
      ingredient: [
        IngredientDto(
          name: "닭다리살",
          weight: "500g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "양배추",
          weight: "1/4개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "떡",
          weight: "200g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "고추장",
          weight: "3큰술",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "고춧가루",
          weight: "1큰술",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
      ],
      procedure: [
        ProcedureDto(
          descriptions: [
            "닭다리살은 먹기 좋은 크기로 자릅니다.",
            "양배추는 한입 크기로 썰고, 떡은 물에 살짝 불려줍니다.",
            "고추장, 고춧가루, 간장, 다진 마늘, 설탕, 매실청을 섞어 양념장을 만듭니다.",
            "닭고기에 양념장을 넣고, 손으로 잘 무쳐 30분간 재워둡니다.",
            "팬을 뜨겁게 달군 후 양념된 닭고기를 볶다가 양배추와 떡을 넣고 함께 볶습니다.",
            "모든 재료가 익으면 완성입니다."
          ],
        ),
      ],
      makeUserLocation: "춘천, 한국",
      isFollow: false,
      recipeDeepLink: "recipe://detail/recipe_007",
    ),

    RecipeInfoDto(
      id: "recipe_008",
      name: "갈비찜",
      estimatedTime: 50,
      isFavorite: false,
      rate: 4.9,
      makeUserName: "명절셰프",
      makeUserImageUrl: "https://randomuser.me/api/portraits/women/7.jpg",
      videoUrl: "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=8",
      reviewCount: 115,
      ingredient: [
        IngredientDto(
          name: "소갈비",
          weight: "1kg",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "간장",
          weight: "6큰술",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "배",
          weight: "1개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "무",
          weight: "1/4개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
      ],
      procedure: [
        ProcedureDto(
          descriptions: [
            "갈비는 찬물에 1시간 정도 담가 핏물을 뺍니다.",
            "배는 갈아서 즙을 냅니다.",
            "냄비에 물, 간장, 설탕, 배즙, 다진 마늘, L.A갈비를 넣고 중간 불에서 끓입니다.",
            "무는 큼직하게 썰어 갈비가 반쯤 익었을 때 함께 넣습니다.",
            "갈비가 부드러워질 때까지 조려줍니다."
          ],
        ),
      ],
      makeUserLocation: "대구, 한국",
      isFollow: false,
      recipeDeepLink: "recipe://detail/recipe_008",
    ),

    RecipeInfoDto(
      id: "recipe_009",
      name: "콩나물국밥",
      estimatedTime: 20,
      isFavorite: true,
      rate: 4.1,
      makeUserName: "해장국장인",
      makeUserImageUrl: "https://randomuser.me/api/portraits/men/9.jpg",
      videoUrl: "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=9",
      reviewCount: 55,
      ingredient: [
        IngredientDto(
          name: "콩나물",
          weight: "200g",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "밥",
          weight: "1공기",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "파",
          weight: "1대",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "마늘",
          weight: "2쪽",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
      ],
      procedure: [
        ProcedureDto(
          descriptions: [
            "냄비에 물을 붓고 다진 마늘을 넣고 끓입니다.",
            "물이 끓으면 콩나물을 넣고 5분간 더 끓입니다.",
            "콩나물이 익으면 소금으로 간을 합니다.",
            "그릇에 밥을 담고 끓인 콩나물국을 부어줍니다.",
            "다진 파를 올려 완성합니다."
          ],
        ),
      ],
      makeUserLocation: "전라도, 한국",
      isFollow: true,
      recipeDeepLink: "recipe://detail/recipe_009",
    ),

    RecipeInfoDto(
      id: "recipe_010",
      name: "오징어볶음",
      estimatedTime: 30,
      isFavorite: false,
      rate: 4.0,
      makeUserName: "해물셰프",
      makeUserImageUrl: "https://randomuser.me/api/portraits/men/10.jpg",
      videoUrl: "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
      imageUrl: "https://picsum.photos/200?random=10",
      reviewCount: 48,
      ingredient: [
        IngredientDto(
          name: "오징어",
          weight: "1마리",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "양파",
          weight: "1개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "당근",
          weight: "1/2개",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
        IngredientDto(
          name: "고추장",
          weight: "2큰술",
          imageUrl: "https://w7.pngwing.com/pngs/891/45/png-transparent-tomato-tomato-fresh-fruits-thumbnail.png",
        ),
      ],
      procedure: [
        ProcedureDto(
          descriptions: [
            "오징어는 내장을 제거하고 깨끗이 씻어 적당한 크기로 썰어줍니다.",
            "양파와 당근은 채썰어 준비합니다.",
            "고추장, 고춧가루, 간장, 설탕을 섞어 양념장을 만듭니다.",
            "팬을 달군 후 오징어를 볶다가 양파와 당근을 넣고 함께 볶습니다.",
            "재료가 어느 정도 익으면 양념장을 넣고 골고루 볶아줍니다."
          ],
        ),
      ],
      makeUserLocation: "부산, 한국",
      isFollow: false,
      recipeDeepLink: "recipe://detail/recipe_010",
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

  @override
  Future<RecipeInfoDto> fetchRecipeInfo({required String id}) async {
    // 서버 비즈니스 로직
    final mockRecipeInfoDto = await Future.value(_mockRecipesInfo.firstWhere((e) => e.id == id));

    return mockRecipeInfoDto;
  }
}
