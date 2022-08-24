import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_blog_stable/components/color.dart';

import 'package:my_blog_stable/components/text.dart';
import 'package:my_blog_stable/components/typography.dart';

import 'package:url_launcher/url_launcher_string.dart';

class ImageWrapper extends StatelessWidget {
  final String image;

  const ImageWrapper({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO Listen to inherited widget width updates.
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: Image.asset(
        image,
        width: width,
        //height: width / 1.618,
        height: width / 2.5,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  final String image;

  const ProfileImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO Listen to inherited widget width updates.
    //double width = MediaQuery.of(context).size.width;\
    double roundness = 20;
    double imageSize = 120;
    double imageBorder = 0;
    return Material(
        //color: Color.fromARGB(193, 0, 0, 0),
        //shadowColor: Color.fromARGB(199, 19, 19, 19),
        elevation: 11,
        shadowColor: const Color.fromARGB(197, 70, 70, 70),
        borderRadius: BorderRadius.circular(roundness),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(roundness), // Image border
          child: SizedBox.fromSize(
            size: Size.fromRadius(imageSize - imageBorder), // Image radius
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        ));
    // padding: EdgeInsets.fromLTRB(200.0, 0.0, 40.0, 0.0),
    // alignment: Alignment.center,
    //margin: const EdgeInsets.symmetric(vertical: 10),

    // child: Image.asset(
    //   image,
    //   width: 170,
    //   height: 170,
    // );
  }
}

class HyperlinkbuttonBox extends StatelessWidget {
  final String image;
  final String url;
  const HyperlinkbuttonBox({Key? key, required this.image, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO Listen to inherited widget width updates.
    double width = MediaQuery.of(context).size.width;
    double gap = width / 70;
    return Container(
      padding: EdgeInsets.fromLTRB(gap, 0.0, gap, 00.0),
      child: Material(
          //color: Color.fromARGB(193, 0, 0, 0),
          //shadowColor: Color.fromARGB(199, 19, 19, 19),
          elevation: 8,

          //borderRadius: BorderRadius.circular(50),
          child: InkWell(
            hoverColor: const Color.fromARGB(244, 218, 216, 216),
            splashColor: const Color.fromARGB(198, 121, 120, 120),
            onTap: () => launchUrlString(url),
            //width: width / 25,
            //margin: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              image,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
              //fit: BoxFit.cover,
            ),
          )),
    );
  }
}

class HyperlinkbuttonRound extends StatelessWidget {
  final String image;
  final String url;
  const HyperlinkbuttonRound({Key? key, required this.image, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO Listen to inherited widget width updates.
    double width = MediaQuery.of(context).size.width;
    double gap = width / 70;
    return Container(
        padding: EdgeInsets.fromLTRB(gap, 0.0, gap, 00.0),
        child: Material(
            //color: Color.fromARGB(193, 0, 0, 0),
            //shadowColor: Color.fromARGB(199, 19, 19, 19),
            elevation: 10,
            shadowColor: const Color.fromARGB(197, 70, 70, 70),
            borderRadius: BorderRadius.circular(28),
            child: InkWell(
              hoverColor: const Color.fromARGB(244, 218, 216, 216),
              splashColor: const Color.fromARGB(198, 121, 120, 120),
              onTap: () => launchUrlString(url),
              //width: width / 25,
              //margin: const EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                image,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                //fit: BoxFit.cover,
              ),
            )));
  }
}

class HyperlinkImageMediumSimple extends StatelessWidget {
  final String image;
  final String url;
  final double imageSize;

  const HyperlinkImageMediumSimple(
      {Key? key,
      required this.image,
      required this.url,
      required this.imageSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double roundness = 0;
    //double image_size = 150;
    return Material(
        //color: Color.fromARGB(193, 0, 0, 0),

        child: InkWell(
      hoverColor: const Color.fromARGB(0, 255, 255, 255),
      //borderRadius: BorderRadius.circular(roundness), // Image border
      onTap: () => launchUrlString(url),
      //width: width / 25,
      child: SizedBox.fromSize(
        size: Size.fromRadius(imageSize), // Image radius
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    ));
  }
}

class ImageMediumSimple extends StatelessWidget {
  final String image;
  final double imageSize;

  const ImageMediumSimple(
      {Key? key, required this.image, required this.imageSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double roundness = 0;
    //double image_size = 150;
    return Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          //backgroundBlendMode: BlendMode.color,
          borderRadius: BorderRadius.circular(20),
          // boxShadow: const [
          //   BoxShadow(
        ),
        //borderRadius: BorderRadius.circular(roundness),,
        child: Image.asset(image, fit: BoxFit.cover));
  }
}

const Widget divider =
    Divider(color: Color.fromARGB(124, 159, 157, 157), thickness: 1.5);
Widget dividerSmall = Container(
  width: 80,
  decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(124, 146, 146, 146),
        width: 1,
      ),
    ),
  ),
);
Widget dividerMedium = Container(
  width: 400,
  decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color.fromARGB(124, 146, 146, 146),
        width: 1,
      ),
    ),
  ),
);

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  // TODO Add additional footer components (i.e. about, links, logos).
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        "© 2022 all rights reserved\nSite by Chris Morang",
        style: GoogleFonts.montserrat(
          fontSize: 13,
          letterSpacing: 0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double navBarHeight = 48;
    String name = "   CHRIS Morang";
    if (width <= 590) {
      name = "   CHRIS";
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: navBarHeight,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(61, 53, 52, 52),
                blurRadius: 70.0,
                spreadRadius: 3, //New
                offset: Offset(
                  0,
                  0,
                ),
              )
            ],
          ),
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: <Widget>[
              InkWell(
                //hoverColor: Color.fromARGB(252, 193, 27, 27),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () => Navigator.popUntil(
                    context, ModalRoute.withName(Navigator.defaultRouteName)),
                child: Text(name,
                    style: GoogleFonts.montserrat(
                      color: textPrimary,
                      fontSize: 14,
                      letterSpacing: 1,

                      //fontWeight: FontWeight.w500
                    )),
              ),
              Flexible(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Wrap(
                    children: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.popUntil(context,
                            ModalRoute.withName(Navigator.defaultRouteName)),
                        style: menuButtonStyle,
                        child: const Text(
                          "HOME",
                        ),
                      ),
                      TextButton(
                        onPressed: () => {}, //
                        //Navigator.pushNamed(context, Routes.myproj),
                        style: menuButtonStyle,
                        child: const Text(
                          "PROJECTS",
                        ),
                      ),
                      TextButton(
                        onPressed: () => {},
                        //Navigator.pushNamed(context, Routes.myblog),
                        style: menuButtonStyle,
                        child: const Text(
                          "BLOGS",
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () =>
                      //       Navigator.pushNamed(context, Routes.contact),
                      //   style: menuButtonStyle,
                      //   child: const Text(
                      //     "CONNECT",
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // Container(
        //     height: 1,
        //     margin: const EdgeInsets.only(bottom: 30),
        //     color: Color.fromARGB(255, 255, 255, 255)),
      ],
    );
  }
}

//
//

class FeedBarCard extends StatelessWidget {
  final String image;
  final String url;
  final String mytitle;
  final String mydescription;

  const FeedBarCard(
      {Key? key,
      required this.image,
      required this.mydescription,
      required this.url,
      required this.mytitle})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    double feedBarHeight = 233; //250;
    double widthOfDisplay = MediaQuery.of(context).size.width;
    double imageSizeReponsive = widthOfDisplay / 6.5;
    double imageSizeReponsive2 = 0;
    double roundness = 0;
    //double gap = width / 70;
    if (widthOfDisplay <= 590) {
      imageSizeReponsive = 0;
      roundness = 20;
      imageSizeReponsive2 = widthOfDisplay / 2.2;
      feedBarHeight = 695;
    } else {
      imageSizeReponsive2 = 0;
      roundness = 0;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 987, //750,
          height: feedBarHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            //borderRadius: BorderRadius.circular(20),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(roundness),
                topRight: Radius.circular(roundness),
                bottomLeft: Radius.circular(roundness),
                bottomRight: Radius.circular(roundness)),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(43, 70, 70, 70),
                //color: Color.fromARGB(61, 53, 52, 52),
                blurRadius: 10,
                spreadRadius: 3.3, //New
                offset: Offset(
                  0,
                  6,
                ),
              )
            ],
          ),
          //argin: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: <Widget>[
              Material(
                  child: HyperlinkImageMediumSimple(
                image: image,
                url: url,
                imageSize: imageSizeReponsive,
              )),
              Flexible(
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Wrap(
                    children: <Widget>[
                      Material(
                          child: HyperlinkImageMediumSimple(
                        image: image,
                        url: url,
                        imageSize: imageSizeReponsive2, //for mobile
                      )),
                      TextButton(
                        onPressed: () => launchUrlString(url),
                        style: menuButtonStyle,
                        child: Text(
                          mytitle,
                          style: headlineSecondaryTextStyle,
                        ),
                      ),
                      TextButton(
                        onPressed: () => launchUrlString(url),
                        style: menuButtonStyle,
                        child: Text(
                          mydescription,
                          style: subtitleTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // Container(
        //     height: 1,
        //     margin: const EdgeInsets.only(bottom: 30),
        //     color: Color.fromARGB(255, 255, 255, 255)),
      ],
    );
  }
}

//
//
//
//
//
//
//
//
//
class DoubleFeedBarCard extends StatelessWidget {
  final String image1;
  //final String url1;
  final String mytitle1;
  final String mydescription1;

  final String image2;
  //final String url2;
  final String mytitle2;
  final String mydescription2;

  const DoubleFeedBarCard(
      {Key? key,
      required this.image1,
      required this.mydescription1,
      //required this.url1,
      required this.mytitle1,
      required this.image2,
      required this.mydescription2,
      //required this.url2,
      required this.mytitle2})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
//
    double heightOfChildContainer = 144;
    double widthOfChildContainer = 377;
//
    double imageTextGap = 21;
    double gapBtwnCards = 55;
//

    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Container(
        margin: const EdgeInsets.symmetric(vertical: 0),
//
//
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
//
//
//
////
            Flexible(
              child: Container(
                //color: Colors.blue,
                alignment: Alignment.center,
                child: Wrap(
                  children: <Widget>[
//
//
//for lef side card
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            gapBtwnCards / 2,
                            gapBtwnCards / 2,
                            gapBtwnCards / 2,
                            gapBtwnCards / 2),
                        //color: Colors.black,
                        child: Container(
                            width: widthOfChildContainer,
                            height: heightOfChildContainer,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //backgroundBlendMode: BlendMode.color,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(43, 70, 70, 70),
                                  //color: Color.fromARGB(61, 53, 52, 52),
                                  blurRadius: 10,
                                  spreadRadius: 3.3, //New
                                  offset: Offset(
                                    0,
                                    6,
                                  ),
                                )
                              ],
                            ),
                            child: Container(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                    ),
                                    ImageMediumSimple(
                                        image: image1, imageSize: 65),
                                    Container(
                                        padding: EdgeInsets.only(
                                            right: imageTextGap)),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          mytitle1,
                                          style: headlineSecondaryTextStyle,
                                        ),
                                        Text(
                                          mydescription1,
                                          style: subtitleTextStyle,
                                        )
                                      ],
                                    )
                                  ],
                                )))),
//
//
//for right side card
                    Container(
                        padding: EdgeInsets.fromLTRB(
                            gapBtwnCards / 2,
                            gapBtwnCards / 2,
                            gapBtwnCards / 2,
                            gapBtwnCards / 2),
                        //color: Colors.green,
                        child: Container(
                            width: widthOfChildContainer,
                            height: heightOfChildContainer,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //backgroundBlendMode: BlendMode.color,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(43, 70, 70, 70),
                                  //color: Color.fromARGB(61, 53, 52, 52),
                                  blurRadius: 10,
                                  spreadRadius: 3.3, //New
                                  offset: Offset(
                                    0,
                                    6,
                                  ),
                                )
                              ],
                            ),
                            child: Container(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                    ),
                                    ImageMediumSimple(
                                        image: image2, imageSize: 65),
                                    Container(
                                        padding: EdgeInsets.only(
                                            right: imageTextGap)),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          mytitle2,
                                          style: headlineSecondaryTextStyle,
                                        ),
                                        Text(
                                          mydescription2,
                                          style: subtitleTextStyle,
                                        )
                                      ],
                                    )
                                  ],
                                )))),
                    // ImageMediumSimple(
                    //     image: "assets/images/dev.png", image_size: 80),
                    // ImageMediumSimple(
                    //     image: "assets/images/dev.png", image_size: 80),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
