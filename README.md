# Water Body Fish Mod

모든 물가에서 모든 종류의 물고기를 낚을 수 있도록 하고, 물고기 최대 개체 수를 직접 설정하는 RimWorld 1.7 모드입니다.

![Water Body Fish Mod 미리보기](https://raw.githubusercontent.com/RimWorldLilly/MaxFishPopulation/master/About/Preview.png)

## 주요 기능

- **모든 물고기 종류 출현**: 바이옴에 지정된 물고기 종류와 관계없이 게임에 등록된 모든 물고기를 물가의 낚시 대상에 포함합니다.
- **물고기 최대 개체 수 설정**: 모드 설정에서 물가의 최대 물고기 개체 수를 지정할 수 있습니다. 기본값은 1,000,000마리입니다.
- **기존 맵에 적용**: 설정 화면의 '모든 맵에 물고기 종류 추가' 항목에서 '적용'을 누르면 현재 존재하는 모든 맵의 물가에 설정을 다시 적용합니다.
- **세이브 로드 시 자동 적용**: 저장된 게임을 불러온 뒤 현재 맵들의 물가에 물고기 종류와 개체 수 설정을 적용합니다.
- **낚시 구역 무한 반복**: 새로 생성한 낚시 구역의 반복 모드를 '계속'으로 설정합니다.
- **물고기 Def 디버그 출력**: 문제 확인을 위해 등록된 물고기 Def 정보를 로그에 출력할 수 있습니다.

## 설정 방법

1. 게임에서 **모드 설정 → Water Body Fish Mod**를 엽니다.
2. **물고기 최대 개체수 설정**에 원하는 값을 입력합니다. 음수는 0으로 보정됩니다.
3. 기존 맵에 변경 사항을 적용하려면 **모든 맵에 물고기 종류 추가 → 적용**을 누릅니다.
4. 물고기 Def 목록을 확인하려면 **물고기 종류 출력 테스트 → 디버그 출력**을 누릅니다.

> 최대 개체 수 설정을 변경한 뒤 기존 물가에 즉시 반영하려면 '적용' 버튼을 눌러 주세요.

## 빌드 방법

1. **.NET 10 SDK**를 설치합니다.
2. 저장소 루트의 `Build.bat`을 실행합니다.
3. 빌드가 성공하면 `Assemblies/WaterBodyFishMod.dll`이 생성됩니다.

기본 경로는 다음과 같습니다.

- RimWorld: `Y:\SteamLibrary\steamapps\common\RimWorld`
- Harmony: `Y:\SteamLibrary\steamapps\workshop\content\294100\2009463077\1.7\Assemblies\0Harmony.dll`

설치 경로가 다르면 `RIMWORLD_DIR`, `HARMONY_DLL` 환경 변수로 경로를 지정할 수 있습니다.

## 설치 방법

1. 저장소 우측 상단의 **Code → Download ZIP**을 선택해 다운로드합니다.
2. 압축을 풉니다.
3. 모드 폴더를 RimWorld의 `Mods` 폴더에 넣습니다.
4. 게임 런처에서 **Water Body Fish Mod**를 활성화합니다.

설치 경로 예시:

```
RimWorld/
└─ Mods/
   └─ WaterBodyFishMod/
      ├─ About/
      └─ Assemblies/
```

## 요구 사항 및 호환성

- RimWorld **1.7**
- [Harmony](https://steamcommunity.com/sharedfiles/filedetails/?id=2009463077)

Harmony를 활성화하고 Water Body Fish Mod보다 먼저 로드되도록 해 주세요.

## 이미지

| 모드 아이콘 | 미리보기 |
|---|---|
| ![모드 아이콘](https://raw.githubusercontent.com/RimWorldLilly/MaxFishPopulation/master/About/ModIcon.png) | ![미리보기](https://raw.githubusercontent.com/RimWorldLilly/MaxFishPopulation/master/About/Preview.png) |

## 저장소

[WaterBodyFishMod GitHub](https://github.com/RimWorldLilly/WaterBodyFishMod)
