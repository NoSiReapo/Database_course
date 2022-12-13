import 'package:databases_course/classes/info_page_card.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

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
                TextButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/getters');
                      },
                      child: const Text('Заявки',
                          style: TextStyle(color: Colors.white, fontSize: 22,
                              ))),

                const SizedBox(width: 30,),
            Container(
              height: 80,
              decoration: const BoxDecoration(
                  color: Color(0xff249956),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
              ),
                child: TextButton(onPressed: (){
                  Navigator.popAndPushNamed(context, '/info');
                }, child: const Text('Инфо',
                  style: TextStyle(fontSize: 22, color: Colors.white,
                  fontWeight: FontWeight.bold),))
            ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Text('FAQ',
            style: TextStyle(
              color: Color(0xff29AD62),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 40,),
            Container(
              width: 1400,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoPageCard(iconsstring: Icons.person_pin_outlined, text1: 'Регистрация',
                      text2: 'О том как зарегистрироваться и необходимая к этому информация'),
                  InfoPageCard(iconsstring: Icons.content_paste_search_outlined, text1: 'Точный поиск',
                      text2: 'Как правильно выбрать и найти интересующую вас работу или задания'),
                  InfoPageCard(iconsstring: Icons.document_scanner_outlined, text1: 'Пользователь',
                      text2: 'Как идет информация и безопасно ли вам её предоставлять, действия с документами и счетами')
                ],
              ),
            )
          ],
        ),
    ),
    ),
    );
  }
}
