import 'package:flutter/material.dart';

class GettersPage extends StatelessWidget {
  const GettersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xff29AD62),
        title: Container(
          width: 1440,
          margin: const EdgeInsets.all(20),
          child: Row(
            children: [
              const SizedBox(
                width: 100,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/main');
                  },
                  child: const Text(
                    'Главная',
                    style: TextStyle(color: Colors.white, fontSize: 22,
                    ),
                  )),
              const SizedBox(
                width: 30,
              ),
              Container(
                height: 80,
                decoration: const BoxDecoration(
                    color: Color(0xff249956),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                ),
                child: TextButton(
                    onPressed: () {},
                    child: const Text('Заявки',
                        style: TextStyle(color: Colors.white, fontSize: 22,
                        fontWeight: FontWeight.bold))),
              ),
              const SizedBox(width: 30,),
              TextButton(onPressed: (){
                Navigator.popAndPushNamed(context, '/info');
              }, child: const Text('Инфо', style: TextStyle(fontSize: 22, color: Colors.white),))

            ],
          ),
        ),
        actions: [
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 0, color: Color(0xff29AD62)),
              ),
              child: Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.person_off,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text(
                        'Профиль',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      SizedBox()
                    ],
                  )))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 1920,
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                Text('Заявки пользователя',style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
                SizedBox(height: 50,),
                Container(
                  width: 1000,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xfff4f5fa),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 0.5, color: Colors.grey)
                  ),
                  child: Center(
                    child: Text('У вас пока нет заявок...',
                    style: TextStyle(
                      color: Color(0xff29AD62),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
