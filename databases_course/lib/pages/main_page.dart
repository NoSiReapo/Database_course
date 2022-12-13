import 'package:databases_course/pages/getters_page.dart';
import 'package:flutter/material.dart';
import 'package:databases_course/classes/main_page_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
              Container(
                height: 80,
                decoration: const BoxDecoration(
                  color: Color(0xff249956),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                ),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Главная',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/getters');
                  },
                  child: const Text('Заявки',
                      style: TextStyle(color: Colors.white, fontSize: 22))),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/info');
                  },
                  child: const Text(
                    'Инфо',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ))
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
                children: [
                  Icon(
                    Icons.person_off,
                    size: 40,
                    color: Colors.white,
                  ),
                  Text(
                    'Профиль',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )
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
                Container(
                  width: 1920,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/job.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 200,
                      ),
                      const Text('Поиск работ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 42,
                            fontWeight: FontWeight.w800,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'требует народ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            height: 50,
                            child: const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    bottomLeft: Radius.circular(6),
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                labelText: 'Поиск...',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(0),
                                              bottomLeft: Radius.circular(0),
                                              bottomRight: Radius.circular(6),
                                              topRight: Radius.circular(6))))),
                              child: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Популярное',
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
                const SizedBox(
                  height: 120,
                ),
                Container(
                  width: 1200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CardPopular(
                          iconstring: Icons.add_call,
                          text1: 'Заказы',
                          text2: 'Со звонками'),
                      CardPopular(
                          iconstring: Icons.speed,
                          text1: 'Срочные заказы',
                          text2: 'С быстрым ответом'),
                      CardPopular(
                          iconstring: Icons.network_check,
                          text1: 'Дистанционно',
                          text2: 'Только в интернете'),
                      CardPopular(
                          iconstring: Icons.person_search_rounded,
                          text1: 'Специалисты',
                          text2: 'Нужда в проффесионалах'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                Container(
                  height: 600,
                  width: 1920,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/WhoIAm.jpg'),
                          fit: BoxFit.fill)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 150, bottom: 100, right: 100, left: 400),
                        width: 960,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Я РАБОТОДАТЕЛЬ!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            //SizedBox(height: 20,),
                            const Text(
                              'Мне нужно чтобы кто-то выполнил работу, которую я задам, ищу професионалов.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 29,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 2, color: Colors.white70),
                                    padding: const EdgeInsets.all(17)),
                                child: (const Text(
                                  'Разместить работу',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 29),
                                ))),
                          ],
                        ),
                      ),
                      Container(
                        width: 960,
                        padding: const EdgeInsets.only(
                            top: 150, bottom: 100, right: 400, left: 100),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(41, 173, 98, 0.5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Я ФРИЛАНСЕР!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            //SizedBox(height: 20,),
                            const Text(
                              'Мне нужно выполнить заказ или работу, за определенную плату.  Я в своём роде профессионал, готовый взяться за дело.',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 29,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 2, color: Colors.white70),
                                    padding: const EdgeInsets.all(17)),
                                child: (const Text(
                                  'Выполнить заказ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 29),
                                ))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1440,
                  height: 600,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
