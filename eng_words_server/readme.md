

# DB.py
<hr>

# function Description

## connecting function
1. connect_to_database() : 데이터베이스에 접속하는 함수
2. connect_to_english_database() : english_db에 접속하는 함수



<hr>

# Description API (main.py)
<hr>
### Router List

- GET
  1. ping : 서버 테스트 라우터
  2. getWord  : 영어 단어를 반환하는 라우터
  3. getWrongWord : 틀린 단어 조회하는 라우터
- POST
  1. insertWord : 영어 단어 넣는 라우터
  2. deleteWord : 영어 단어 삭제하는 라우터
  3. insertWrongWord : 틀린 단어 넣는 라우터
  4. deleteWrongWord : 틀린 단어 삭제하는 라우터
- PUT
- DELETE


<hr>

## Get Section
#### ping Router

| Method Tyoe | Query Parameters | Return Value         |
|-------------|------------------|----------------------|
| GET         | None             | Str: 'server working' |

#### getWord Router

| Method Tyoe | Query Parameters | Return Value                                     |
|-------------|------------------|--------------------------------------------------|
| GET         | cnt              | 성공 시 : 200, english_Word_Json_data<br/>실패 시: 500 |

#### getWrongWord Router

| Method Tyoe | Query Parameters | Return Value                                          |
|-------------|------------------|-------------------------------------------------------|
| GET         | cnt              | 성공 시 : 200, english_WrongWord_Json_data<br/>실패 시: 500 |

<hr>

## Post Section

#### insertWord Router

| Method Tyoe | Json Data         | Return Value             |
|-------------|-------------------|--------------------------|
| POST        | english<br/>korea | 성공 시 : 200<br/>실패 시: 500 |

#### deleteWord Router

| Method Tyoe | Json Data | Return Value             |
|-------------|-----------|--------------------------|
| POST        | id        | 성공 시 : 200<br/>실패 시: 500 |

#### insertWrongWord Router

| Method Tyoe | Json Data         | Return Value             |
|-------------|-------------------|--------------------------|
| POST        | english<br/>korea | 성공 시 : 200<br/>실패 시: 500 |

#### deleteWrongWord Router

| Method Tyoe | Json Data | Return Value             |
|-------------|-----------|--------------------------|
| POST        | id        | 성공 시 : 200<br/>실패 시: 500 |

<hr>