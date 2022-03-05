import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:scroll_app/shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String imagenet='https://pbs.twimg.com/profile_images/504602305426378752/XesqYLeJ_400x400.jpeg';

    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarDesign(),
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 4,
                      //color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.grey.shade300,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 16,
                                top: 0,
                                bottom: 0,
                              ),
                              child: GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.search,
                                  size: 35,
                                ),
                              ),
                            ),
                            hintText: 'search',
                            // errorText:
                            // snapshot.data ? null : context.translate('search_error'),
                            contentPadding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                              top: 10,
                              bottom: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      'search',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // card Item
            Card(
              elevation: 10,
              child: Container(
                width: mq.width * 0.98,
                child: Column(
                  children: [
                    SizedBox(
                      height: mq.height * 0.40,
                      width: mq.width * 0.94,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            width: mq.width * 0.46,
                            height: mq.height * 0.37,
                            child: Card(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: mq.width * 0.49,
                                        height: mq.height * 0.2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(25),
                                            color: Colors.white,
                                            image: const DecorationImage(
                                                image: const NetworkImage(
                                                  'https://pbs.twimg.com/profile_images/504602305426378752/XesqYLeJ_400x400.jpeg',
                                                ))),
                                      ),
                                      Positioned(
                                        top: 10,
                                        right: 10,
                                        child: Container(
                                          height: 30,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(25),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                size: 25,
                                                color: Colors.amber,
                                              ),
                                              Text('0.0')
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(
                                        Icons.check_circle_outline,
                                        color: Colors.grey,
                                      ),
                                      Expanded(child: Text('محلات الدهب ')),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  Row(
                                    children: [
                                      RatingBar(
                                        initialRating: 2.5,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemSize: 20,
                                        itemCount: 5,
                                        itemPadding:
                                        const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        ratingWidget: RatingWidget(
                                          full: const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          half: const Icon(
                                            Icons.star_half,
                                            color: Colors.amber,
                                          ),
                                          empty: const Icon(
                                            Icons.star_border,
                                            color: Colors.amber,
                                          ),
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  const Text(
                                    'محافظة القاهرة',
                                    style: const TextStyle(
                                        fontSize: 18, color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(25),
                                      color: Colors.deepOrange,
                                    ),
                                    child: const Center(
                                        child: const Text(
                                          'القاهرة',
                                          style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                    Card(
                      child: Column(
                        children: [
                          const Icon(Icons.arrow_drop_down_rounded),
                          SizedBox(
                            width: mq.width * 0.94,
                            height: mq.height * 0.075,
                            child: ListView.builder(
                                itemCount: 5,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                  width: mq.width * 0.45,
                                  height: mq.height * 0.37,
                                  child: Card(
                                    child: Container(
                                      clipBehavior: Clip.antiAlias,
                                      width: mq.width * 0.75,
                                      height: mq.height * 0.2,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(25),
                                        color: Colors.white,
                                        image: const DecorationImage(
                                            image: const NetworkImage(
                                              imagenet,
                                            ),
                                            fit: BoxFit.fitWidth),
                                      ),
                                      child: Container(
                                        color: Colors.black54,
                                        child: const Center(
                                          child: Text('القاهرة',
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('المزيد'),
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20),
                              primary: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            //Swiper
            Container(
              color: Colors.transparent,
              height: mq.height * 0.24,
              child: Swiper(
                pagination: SwiperPagination(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    alignment: Alignment.topCenter,
                    builder: SwiperCustomPagination(builder:
                        (BuildContext context, SwiperPluginConfig config) {
                      return ConstrainedBox(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          // ignore: avoid_unnecessary_containers
                          child: Container(
                            //color: Colors.white,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: const DotSwiperPaginationBuilder(
                                          color: Colors.grey,
                                          activeColor: Color(0xFF03317C),
                                          size: 6.0,
                                          activeSize: 10.0)
                                          .build(context, config),
                                    ),
                                  )
                                ],
                              )),
                        ),
                        constraints: const BoxConstraints.expand(height: 20.0),
                      );
                    })),
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0)),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 1,
                                color: Color(0xffe6e6e4),
                                blurRadius: 1,
                                offset: Offset(0, 2),
                              ),
                            ]),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 10, right: 10),
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(50.0)),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.3),
                                      width: 0.4,
                                    ),
                                  ),
                                  child: const CircleAvatar(
                                    radius: 60,
                                    backgroundImage: NetworkImage(
                                        imagenet
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.stretch,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Row(
                                              children: const [
                                                Expanded(
                                                    child: Text(
                                                      'bannerData.name',
                                                      style:
                                                      TextStyle(fontSize: 17.0),
                                                      //overflow: TextOverflow.ellipsis,
                                                    )),
                                                SizedBox(
                                                  width: 1,
                                                ),
                                                Icon(
                                                  Icons.check_circle_outline,
                                                  color: Colors.grey,
                                                  size: 18,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            children: [
                                              RatingBar(
                                                initialRating: 2.5,
                                                minRating: 0,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemSize: 19,
                                                itemCount: 5,
                                                itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 1.0),
                                                ratingWidget: RatingWidget(
                                                  full: const Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  half: const Icon(
                                                    Icons.star_half,
                                                    color: Colors.amber,
                                                  ),
                                                  empty: const Icon(
                                                    Icons.star_border,
                                                    color: Colors.amber,
                                                  ),
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                        '{bannerData.des}',
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ),
                      ));
                },
                itemCount: 5,
                itemWidth: 100.0,
                autoplayDelay: 2500,
                loop: true,
                layout: SwiperLayout.DEFAULT,
              ),
            ),
            // text_last_company
            Stack(
              children: [
                Positioned(
                  right: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          child: Text(
                            'text_last_company',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: mq.height * 0.28,
                  //width: Get.width,
                  child: Swiper(

                    pagination: SwiperPagination(
                        margin: const EdgeInsets.symmetric(
                            vertical: 1),
                        alignment: Alignment.topCenter,
                        builder: SwiperCustomPagination(
                            builder: (BuildContext context,
                                SwiperPluginConfig config) {
                              return ConstrainedBox(
                                child: Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                      horizontal: 35),
                                  // ignore: avoid_unnecessary_containers
                                  child: Container(
                                    //color: Colors.white,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment
                                                  .centerLeft,
                                              child: const DotSwiperPaginationBuilder(
                                                  color: Colors
                                                      .grey,
                                                  activeColor:
                                                  Color(0xFF03317C),
                                                  size: 6.0,
                                                  activeSize:
                                                  10.0)
                                                  .build(context,
                                                  config),
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                                constraints:
                                const BoxConstraints.expand(
                                    height: 20.0),
                              );
                            })),
                    autoplay: true,
                    itemBuilder:
                        (BuildContext context, int index) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1,
                                    color: Color(0xffe6e6e4),
                                    blurRadius: 1,
                                    offset: Offset(0, 2),
                                  ),
                                ]),
                            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10, right: 10),
                                          child: Container(
                                            width: 80,
                                            height: 80,
                                            decoration:  BoxDecoration(

                                              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                                              border: Border.all(
                                                color: Colors.grey.withOpacity(0.3),
                                                width: 0.4,
                                              ),

                                            ),
                                            child: const CircleAvatar(
                                              radius: 60,
                                              backgroundImage: const NetworkImage(

                                                imagenet,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 5,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                    const EdgeInsets.symmetric(horizontal: 5),
                                                    child: Row(
                                                      children: const [

                                                        Expanded(
                                                          child: Text(
                                                            'latestCompaniesData.name',
                                                            style: TextStyle(fontSize: 18.0),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 2,
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                ),


                                              ],
                                            ),

                                            const Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 5),
                                              child: Text(
                                                ' latestCompaniesData.desc',
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),

                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 5),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          width: 50,
                                                          height: 20,
                                                          decoration: const BoxDecoration(
                                                            color: Color(0xff848DFF),
                                                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                                          ),
                                                          child: Center(
                                                              child: Text(
                                                                'latestCompaniesData.distance',
                                                                style: const TextStyle(fontSize: 10, color: Colors.white),
                                                              )),
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        Container(
                                                          width: 50,
                                                          height: 20,
                                                          decoration: const BoxDecoration(

                                                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                                          ),
                                                          child:  Center(
                                                              child: Text(
                                                                ' latestCompaniesData.city.name',
                                                                style: const TextStyle(fontSize: 10, color: Colors.white),
                                                              )),
                                                        ),
                                                        const SizedBox(
                                                          width: 15,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.symmetric(horizontal: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: [
                                                        RatingBar(
                                                          initialRating: 2.5,
                                                          minRating: 0,
                                                          direction: Axis.horizontal,
                                                          allowHalfRating: true,
                                                          itemSize: 19,
                                                          itemCount: 5,
                                                          itemPadding:
                                                          const EdgeInsets.symmetric(
                                                              horizontal: 1.0),
                                                          ratingWidget: RatingWidget(
                                                            full: const Icon(
                                                              Icons.star,
                                                              color: Colors.amber,
                                                            ),
                                                            half: const Icon(
                                                              Icons.star_half,
                                                              color: Colors.amber,
                                                            ),
                                                            empty: const Icon(
                                                              Icons.star_border,
                                                              color: Colors.amber,
                                                            ),
                                                          ),
                                                          onRatingUpdate: (rating) {
                                                            print(rating);
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),
                          )
                      );
                    },
                    itemCount: 6,
                    //itemWidth: 100.0,
                    autoplayDelay: 3000,
                    onTap: (int index) {

                    },

                    loop: true,
                    layout: SwiperLayout.DEFAULT,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _image(String asset) {
    return Image.asset(
      asset,
      height: 30.0,
      width: 30.0,
      color: Colors.amber,
    );
  }
}