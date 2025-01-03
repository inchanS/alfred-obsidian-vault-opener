## Alfred workflow - Obsidian Vault Opener
여러개의 vault를 필요에 따라 사용할 때마다 번거로워 간단하게 구현하였습니다.  

Obsidian에서 여러 vault 사용시 알프레드 호출창에서 **vault를 선택하여 열수 있습니다.**   

![preview](/assets/obsidian-vault-opener.gif)  

> 만약 앱 종료 이후, 최초 실행시에는 Obsidian 앱 특성상 마지막에 열었던 vault와 함께 선택한 vault가 열리게 됩니다.  
> 이는 Electron 앱 특성으로 인한 제약사항입니다. 

### 다운로드
https://github.com/inchanS/alfred-obsidian-vault-opener/releases/latest  

### 사용방법
1. 알프레드 호출창에서 `ob`라고 입력 후, 스페이스 바를 누르면 모든 vault 목록이 나타납니다.
2. 이후 사용하고자 하는 vault 이름을 타이핑하여 입력하면 필터링되어 목록 중 해당볼트가 추려져 나타납니다.
   (vault 목록에서 화살표 키를 이용하여 이동, 선택할 수도 있습니다.)


### 볼트 목록 설정
![Configure Workflow...](/assets/SCR-20250104-iabx.png)

1. 알프레드 워크플로우 설정에서 `Configure Workflow...`를 누른다.
2. `vault_list`의 값으로 사용중인 vault 이름들을 입력한다.

#### 주의사항
configure의 vault_list에 사용하는 vault 이름을 입력할 때 주의사항은 다음 2가지입니다.
1. 쉼표로만 구분할 것
2. 빈칸을 두지 말것

```
personal,work,study,familyLog      => O
personal, work, study, familyLog   => X
```
