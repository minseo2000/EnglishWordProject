import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class CorrectWordsScreen extends StatefulWidget {
  const CorrectWordsScreen({Key? key}) : super(key: key);

  @override
  State<CorrectWordsScreen> createState() => _CorrectWordsScreenState();
}

class _CorrectWordsScreenState extends State<CorrectWordsScreen> {

  late Future loadWordsFromServer;
  
  // 현재 영어 단어 cursor
  int current_cursor = 0;
  //영어 단어 개수
  int words_cnt = 0;
  
  // 영단어 리스트와 4지 선다 정답 리스트
  List<String> word_list = [];
  List<String> answer_list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: loadWordsFromServer,
          builder: (context, snapshot){
            if(snapshot.hasData){

              word_list = snapshot.data[0];
              words_cnt = word_list.length;

              return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 20.0,
                              left: 80.0,
                              right: 80.0
                          ),
                          child: Container(

                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: Center(
                                        child: Text('9 / 10', style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: Container(
                                        child: Text('Commit', style: TextStyle(fontSize: 50.0),textAlign: TextAlign.center,)
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          padding: EdgeInsets.only(left: 80.0, right: 80.0),
                          color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                        color: Colors.blue,
                                        width: MediaQuery.of(context).size.width,
                                        child: Center(
                                          child: Text('1. ~~~'),
                                        )
                                    ),
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                        color: Colors.blue,
                                        width: MediaQuery.of(context).size.width,
                                        child: Center(
                                          child: Text('1. ~~~'),
                                        )
                                    ),
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                        color: Colors.blue,
                                        width: MediaQuery.of(context).size.width,
                                        child: Center(
                                          child: Text('1. ~~~'),
                                        )
                                    ),
                                  )
                              ),
                              Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){},
                                    child: Container(
                                        color: Colors.blue,
                                        width: MediaQuery.of(context).size.width,
                                        child: Center(
                                          child: Text('1. ~~~'),
                                        )
                                    ),
                                  )
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              );
            }else{
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Text('서버에서 데이터 로딩 중'),
                ),
              );
            }
          },
        )
      ),
    );
  }
  
  
  @override
  void initState(){
    loadWordsFromServer = loadFromServer();
  }



  // load function
  Future<List<dynamic>> loadFromServer() async{
      Dio dio = Dio();

      Response res = await dio.get('');


      dio.close();
      return res.data;

  }
}
