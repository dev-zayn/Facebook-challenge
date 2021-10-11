import 'package:facebook_clone/style/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  bool _ischecked = true;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)), // radius of 10
              color: ConstColors.cardDark),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/profile.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      '   ¿Qué estas pensando, Mao?',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Flexible(child: Container()),
                    Image.asset('images/emoji1.png'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 40,
                      decoration: BoxDecoration(
                          color: ConstColors.shadowDark,
                          borderRadius: BorderRadius.circular(8)),
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/camera.svg',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                          const FittedBox(
                            child: Text(
                              'Fotos',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Segoe UI',
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: 40,
                      decoration: BoxDecoration(
                          color: ConstColors.shadowDark,
                          borderRadius: BorderRadius.circular(8)),
                      width: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/video.svg',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                          const FittedBox(
                            child: Text(
                              'En vivo',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Segoe UI',
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: 40,
                      decoration: BoxDecoration(
                          color: ConstColors.shadowDark,
                          borderRadius: BorderRadius.circular(8)),
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/view.svg',
                            width: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const FittedBox(
                            child: Text(
                              'Video cort',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Segoe UI',
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
            color: ConstColors.cardDark,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    const Text(
                      'Menú',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Segoe UI',
                          fontSize: 25,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                          decoration: const BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SvgPicture.asset(
                              'assets/moon.svg',
                              width: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Modo oscuro',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Segoe UI',
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: 32,
                          height: 32,
                          child: FittedBox(
                            child: CupertinoSwitch(
                              onChanged: (x) {
                                setState(() {
                                  _ischecked = x;
                                });
                              },
                              value: _ischecked,
                              activeColor: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        height: 30,
                        decoration: BoxDecoration(
                            color: ConstColors.shadowDark,
                            borderRadius: BorderRadius.circular(10)),
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/qmark.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const FittedBox(
                              child: Text(
                                'Ayuda y soporte',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Segoe UI',
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        height: 30,
                        decoration: BoxDecoration(
                            color: ConstColors.shadowDark,
                            borderRadius: BorderRadius.circular(10)),
                        width: 210,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/setting.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const FittedBox(
                              child: Text(
                                'Configuración y privacidad',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Segoe UI',
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 130,
                        width: 225,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('images/women.png')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      Positioned(
                          top: 14,
                          left: 14,
                          child: Container(
                            height: 28,
                            width: 28,
                            child: Image.asset(
                              'images/time.png',
                            ),
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          )),
                      Positioned(
                          bottom: 14,
                          right: 14,
                          child: Container(
                            height: 28,
                            // width: 28,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Center(
                                child: Text(
                                  'Hace 3 años',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    color: Colors.black87,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              )
            ],
          ),
        ))
      ],
    );
  }
}
