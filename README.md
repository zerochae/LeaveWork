# LeaveWork

> 퇴근까지 몇 시간 남았는지 알고싶어서 만들었습니다.

## Install

1. 프로젝트 클론

```
$ git clone this repo
```

2. 권한 부여

```
$ sudo chmod 777 ./lw.sh
```

3. alias 등록

- 클론한 repo에서 `pwd` 입력

```sh
$ vim ~/.zshrc
```

```vim
$ alias lw {repo path(pwd 복붙하기)}.lw.sh

" example
" alias lw /Users/kwon-gray/Documents/workspace/LeaveWork/lw.sh
```

## Usage

- default param
  - 출근 시간(go_work): 36000(10:00)
  - 퇴근 시간(leave_work): 68400(19:00)
  - 본인의 시간에 맞게 조정(1시간에 3600씩 더하거나 빼기)

```sh
$ lw
```

1. 출근 전 ( 현재시간 < 출근시간 )

<img width="350" alt="before-work" src="https://user-images.githubusercontent.com/84373490/170549682-39479466-1436-4a7a-bb6c-18b8cacaaed3.png">

2. 근무 중 ( 현재시간 < 퇴근시간 )

<img width="350" alt="스크린샷 2022-05-27 10 17 06" src="https://user-images.githubusercontent.com/84373490/170609205-29d05650-de14-489c-9448-0aa8471e5d41.png">


