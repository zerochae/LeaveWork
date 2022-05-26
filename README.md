# LeaveWork

> 터미널에 퇴근까지 남은 시간 출력

## Install

1. 프로젝트 클론

```
$ git clone this repo
```

2. 권한 부여

```
$ chmod 777 date.sh
```

3. alias 등록

- 클론한 repo에서 `pwd` 입력

```sh
$ vim ~/.zshrc
```

```vim
$ alias lw {repo path(pwd 복붙하기)}.date.sh

ex)
$ alias lw /Users/kwon-gray/Documents/workspace/LeaveWork/date.sh
```

## Usage

- default param
  - 출근 시간(go_work): 36000(10:00)
  - 퇴근 시간(leave_work): 68400(19:00)
  - 본인의 시간에 맞게 조정(1시간에 3600씩 더하거나 빼기)

```sh
$ lw
```

1. 출근 전 ( 현재시간 < 10:00 )

<img width="350" alt="before-work" src="https://user-images.githubusercontent.com/84373490/170549682-39479466-1436-4a7a-bb6c-18b8cacaaed3.png">
