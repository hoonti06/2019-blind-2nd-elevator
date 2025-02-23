# 2019 카카오 블라인드 공채 2차 오프라인 - Elevator
2019 카카오 블라인드 공채 2차 오프라인 문제에서 사용한 Elevator 서버 코드를 공개합니다.



## Directories

```
    .
    ├── dataset                # problem sets
    ├── docs                   # documentation files
    ├── elevator               # source files
    ├── example                # example
    ├── logs                   # elevator logs
    ├── LICENSE
    ├── CONTRIBUTING.md 
    ├── NOTICE.md 
    └── README.md
```



## Elevator System

[Elevator system design 문서 바로가기](docs/DESIGN.md)



## Elevator Control API

[Elevator control API 문서 바로가기](docs/API.md)



## Elevator Game 문제

[Elevator Game 문제보기](docs/QUESTIONS.md)



## Getting Started

### Installation Prerequisites

- [ ] [golang:1.9.1(docker official image)](https://hub.docker.com/_/golang)

##### 다음의 경우 example 코드를 수행하기 위해 필요합니다.

- [ ] [Python 2.7(docker official image)](https://hub.docker/com/_/python)
- [ ] Python Requests

### Install and Run

우선, docker-golang:1.9.1을 설치합나다.
```bash
$ docker pull golang:1.9.1
```

Repository를 Clone하고 shell script를 통해 서버를 실행합니다.
```bash
$ git clone https://github.com/hoonti06/2019-blind-2nd-elevator.git
$ cd 2019-blind-2nd-elevator
$ ./run-docker.sh
```


### Elevator Control

example 코드로 어피치 맨션 문제를 풀어봅니다. 

python:2.7(docker official image)로 실행하기 위해 먼저 docker image를 설치합니다.
```bash
$ docker pull python:2.7
```

shell script를 실행하면 docker run을 통해 example 코드가 실행됩니다.
```bash
$ ./run-py-example.sh
```

### Elevator Viewer

elevator 제어 코드를 실행하면 ./logs 경로에 로그가 기록됩니다.

http://localhost:8000/viewer 로 접속하면 지금까지 서버에서 수행한 token 목록이 나오고, 이를 클릭하면 elevator simulation 결과를 확인할 수 있습니다.

![viewer](http://t1.kakaocdn.net/welcome/2019/round2/viewer.png)

## 만든 사람들

- 김동주(jude.traveller@kakaocorp.com)
- 송신형(lucid.s@kakaocorp.com)
- 안건(kyen.a@kakaocorp.com)
- 유승원(cree.yoo@kakaocorp.com)
- 이진환(root.lee@kakaocorp.com)
- 하광성(jesse.ha@kakaocorp.com)



## 문의

- 하광성 (jesse.ha@kakaocorp.com)
