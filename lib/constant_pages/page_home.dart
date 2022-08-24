import 'package:flutter/material.dart';
import 'package:my_blog_stable/components/components.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double sizeMultiplier = width / 1200;
    double titPad = 0;
    double profPad = 150;
    double contentPadding = 120;
    double topMargin = 160;
    double profMargin = 10;
    double socialButtonsDistance = 100;

    if (width <= 480) {
      titPad = 7;
      profPad = 10;
      contentPadding = 0;
      topMargin = 45;
      profMargin = 0;
      socialButtonsDistance = topMargin;
    } else if (width <= 800) {
      titPad = 5;
      profPad = 20;
      contentPadding = 20;
      topMargin = 90;
      profMargin = 10;
      socialButtonsDistance = topMargin;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: <Widget>[
              const MenuBar(),

              Container(margin: EdgeInsets.only(bottom: topMargin)),

              Align(
                alignment: Alignment.center,
                child: Row(children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.fromLTRB(profPad, profMargin, 20, 0),
                          alignment: Alignment.center,
                          child: const ProfileImage(
                            image: "assets/images/profile.jpg",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /*2*/
                        Container(
                          padding: EdgeInsets.fromLTRB(titPad, 0, 0, 0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Hola!',
                            style: GoogleFonts.montserrat(
                              fontSize: 89 * sizeMultiplier,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.all(7.7),
                          child: Text(
                            'I am Chris Morang,',
                            style: GoogleFonts.montserrat(
                              fontSize: 34,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.all(8.5),
                          child: Text(
                            'A Machine-Learning | Blockchain | Cybersecurity | Embeded | IOT | Cross-Platform \nDeveloper, Enthusiast & Writer',
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),

              Container(margin: EdgeInsets.only(bottom: socialButtonsDistance)),
//
//
//
//
////
              Align(
                  alignment: Alignment.center,
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 0),
                        child: Row(children: <Widget>[
                          Flexible(
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Wrap(children: const <Widget>[
                                    HyperlinkbuttonRound(
                                      image: "assets/images/medium.png",
                                      url: "https://medium.com/@chris_81616",
                                    ),
                                    HyperlinkbuttonBox(
                                      image: "assets/images/dev.png",
                                      url: "https://dev.to/chrismorang",
                                    ),
                                    HyperlinkbuttonRound(
                                      image: "assets/images/github.png",
                                      url: "https://github.com/CHRISmorang",
                                    ),
                                    HyperlinkbuttonBox(
                                      image: "assets/images/stack-overflow.png",
                                      url:
                                          "https://stackoverflow.com/users/17219229/chriss-py-chicken",
                                    ),
                                    HyperlinkbuttonBox(
                                      image: "assets/images/linkedin.png",
                                      url:
                                          "https://www.linkedin.com/in/chris-morang-51a77b1ab/",
                                    ),
                                    HyperlinkbuttonRound(
                                      image: "assets/images/discord.png",
                                      url:
                                          "https://discord.com/users/598575091294666763",
                                    ),
                                    HyperlinkbuttonBox(
                                      image: "assets/images/gmail.png",
                                      url:
                                          "https://mail.google.com/mail/u/0/#inbox?compose=CllgCJvkXVHrvbzFRVSfSMWkFSTdxzqJcJXrChdSBSTFstQSqXNXKpJPvLWrmhnFJMqXWTjjlDV",
                                    ),
                                  ]))),
                        ]))
                  ])),
//
//
//
//
//

              Container(margin: EdgeInsets.only(bottom: socialButtonsDistance)),

              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: marginBottom12,
                  child: Text("“Don't Wait for Opportunity, Create it”",
                      style: headlineSecondaryTextStyle),
                ),
              ),
              Container(
                margin: marginBottom12,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(contentPadding, 0, contentPadding, 0),
                  margin: marginBottom24,
                  child: Text(
                    "College student with a strong computer science background and experience in exploratory data analysis, machine learning, and statistics. Passionate about learning new topics in data science, visualizing data, and doing research. I like sharing valuable insights and making an impact that helps others learn through code, visualizations, and narratives",
                    style: subtitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: topMargin)),
//
//
//
//
//
//Skills section
              dividerMedium,
              Container(margin: EdgeInsets.only(bottom: topMargin)),
              Align(
                alignment: Alignment.center,
                child: Text("SKILLS", style: headlineTextStyle),
              ),
              Container(
                margin: marginforcards,
              ),
//
//
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text("Syntax", style: headlineSecondaryTextStyle),
                ),
              ),
              dividerSmall,
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      contentPadding, 5, contentPadding, 40),
                  child: Text(
                    "Python | C | C++ | C# | JavaScript | Java | Assembly | Dart | MATLAB | SQL | Bash | Lua | HTML | TeX | MarkDown | Scratch",
                    style: bodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
//
//
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text("Technology", style: headlineSecondaryTextStyle),
                ),
              ),
              dividerSmall,
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      contentPadding, 5, contentPadding, 40),
                  child: Text(
                    "TensorFlow | PyTorch | SciPi | OpenCV | RestAPI | Flutter | Docker | FireBase | Heroku | Git",
                    style: bodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
//
//
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text("Soft skills", style: headlineSecondaryTextStyle),
                ),
              ),
              dividerSmall,
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      contentPadding, 5, contentPadding, 40),
                  child: Text(
                    "Communication | Leadership | Brainstorming | Critical Observation | Strategic Thinking",
                    style: bodyTextStyle,
                    textAlign: TextAlign.center,
                  ), // Content Creation | Team Woralignment: Center,child: Wrap(children: <WidgHyperlinkbuttonBox: image, url: url)et>[],)k |Video Editing
                ),
              ),
//
//
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Text("Side hustle", style: headlineSecondaryTextStyle),
                ),
              ),
              dividerSmall,
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(contentPadding, 5, contentPadding, 0),
                  child: Text(
                    "Techincal Content Creator | Video Production | Digital Marketing | Digital Asset Management | Chess | Cross Fit",
                    style: bodyTextStyle,
                    textAlign: TextAlign.center,
                  ), // Content Creation | Team Work |Video Editing
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: topMargin)),
              dividerMedium,
//
//
//
//
//
//Projects section
              Container(margin: EdgeInsets.only(bottom: topMargin)),

              Align(
                alignment: Alignment.center,
                child: Text("PROJECTS", style: headlineTextStyle),
              ),
              Container(
                margin: marginforcards,
              ),

              const Align(
                  alignment: Alignment.center,
                  child: FeedBarCard(
                    image: "assets/images/ml1.jpg",
                    url: "https://twitter.com",
                    mytitle:
                        "Titanic Survival Prediction | Machine Learning From Disaster",
                    mydescription:
                        "• Survival Prediction: Analyzed survival ratio of people who were in titanic. Applied feature engineering, data imputation, data exploration, R programming, and machine learning classification algorithm to predict which passengers survived the tragedy.",
                  )),
              Container(margin: marginforcards),

//
              const Align(
                  alignment: Alignment.center,
                  child: FeedBarCard(
                    image: "assets/images/ml2.jpg",
                    url: "https://twitter.com",
                    mytitle:
                        "Titanic Survival Prediction | Machine Learning From Disaster",
                    mydescription:
                        "• Survival Prediction: Analyzed survival ratio of people who were in titanic. Applied feature engineering, data imputation, data exploration, R programming, and machine learning classification algorithm to predict which passengers survived the tragedy.",
                  )),
              Container(margin: marginforcards),

              const Align(
                  alignment: Alignment.center,
                  child: FeedBarCard(
                    image: "assets/images/ml3.jpg",
                    url: "https://twitter.com",
                    mytitle:
                        "Titanic Survival Prediction | Machine Learning From Disaster",
                    mydescription:
                        "• Survival Prediction: Analyzed survival ratio of people who were in titanic. Applied feature engineering, data imputation, data exploration, R programming, and machine learning classification algorithm to predict which passengers survived the tragedy.",
                  )),
              Container(margin: marginforcards),

              const Align(
                  alignment: Alignment.center,
                  child: FeedBarCard(
                    image: "assets/images/ml4.jpg",
                    url: "https://twitter.com",
                    mytitle:
                        "Titanic Survival Prediction | Machine Learning From Disaster",
                    mydescription:
                        "• Survival Prediction: Analyzed survival ratio of people who were in titanic. Applied feature engineering, data imputation, data exploration, R programming, and machine learning classification algorithm to predict which passengers survived the tragedy.",
                  )),
              Container(
                margin: marginforcards,
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () =>
                      {}, //Navigator.pushNamed(context, Routes.myproj),
                  style: menuButtonStyle,
                  child: Text(
                    "Find More Projects",
                    style: headlineSecondaryTextStyle,
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: topMargin)),
              dividerMedium,
//
//
//
//
//
//
//Blog section
              Container(margin: EdgeInsets.only(bottom: topMargin)),

              Align(
                alignment: Alignment.center,
                child: Text("BLOGS", style: headlineTextStyle),
              ),
              Container(
                margin: marginforcards,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: FeedBarCard(
                    image: "assets/images/bl1.jpg",
                    url: "https://twitter.com",
                    mytitle: "Life of Data | Data Science is OSEMN",
                    mydescription:
                        "• Survival Prediction: Analyzed survival ratio of people who were in titanic. Applied feature engineering, data imputation, data exploration, R programming, and machine learning classification algorithm to predict which passengers survived the tragedy.",
                  )),

              Container(margin: marginforcards),

              const Align(
                  alignment: Alignment.center,
                  child: FeedBarCard(
                    image: "assets/images/bl2.jpg",
                    url: "https://twitter.com",
                    mytitle: "Life of Data | Data Science is OSEMN",
                    mydescription:
                        "• Survival Prediction: Analyzed survival ratio of people who were in titanic. Applied feature engineering, data imputation, data exploration, R programming, and machine learning classification algorithm to predict which passengers survived the tragedy.",
                  )),
              Container(margin: marginforcards),

              const Align(
                  alignment: Alignment.center,
                  child: FeedBarCard(
                    image: "assets/images/bl3.jpg",
                    url: "https://twitter.com",
                    mytitle: "Life of Data | Data Science is OSEMN",
                    mydescription:
                        "• Survival Prediction: Analyzed survival ratio of people who were in titanic. Applied feature engineering, data imputation, data exploration, R programming, and machine learning classification algorithm to predict which passengers survived the tragedy.",
                  )),
              Container(margin: marginforcards),

              const Align(
                  alignment: Alignment.center,
                  child: FeedBarCard(
                    image: "assets/images/bl4.jpg",
                    url: "https://twitter.com",
                    mytitle: "Life of Data | Data Science is OSEMN",
                    mydescription:
                        "• Survival Prediction: Analyzed survival ratio of people who were in titanic. Applied feature engineering, data imputation, data exploration, R programming, and machine learning classification algorithm to predict which passengers survived the tragedy.",
                  )),
              Container(
                margin: marginforcards,
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () =>
                      {}, //Navigator.pushNamed(context, Routes.myproj),
                  style: menuButtonStyle,
                  child: Text(
                    "Discover More Blogs",
                    style: headlineSecondaryTextStyle,
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: topMargin)),
              dividerMedium,
//
//
//
//
//
//Accomplishments section
              Container(margin: EdgeInsets.only(bottom: topMargin)),

              Align(
                alignment: Alignment.center,
                child: Text("Accomplishments", style: headlineTextStyle),
              ),

              Container(
                margin: marginforDoubleFeedTit,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: DoubleFeedBarCard(
                  image1: "assets/images/cer1.jpg",
                  image2: "assets/images/cer2.jpg",
                  mytitle1: "Achievement One",
                  mytitle2: "Achievement Two",
                  mydescription1: "Description One",
                  mydescription2: "Description Two",
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: DoubleFeedBarCard(
                  image1: "assets/images/cer3.jpg",
                  image2: "assets/images/cer4.jpg",
                  mytitle1: "Achievement One",
                  mytitle2: "Achievement Two",
                  mydescription1: "Description One",
                  mydescription2: "Description Two",
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: topMargin - (55 / 2))),
//
//
//
              dividerMedium,
//
//
//Experience
              Container(margin: EdgeInsets.only(bottom: topMargin - (55 / 2))),

              Align(
                alignment: Alignment.center,
                child: Text("Experience", style: headlineTextStyle),
              ),

              Container(
                margin: marginforDoubleFeedTit,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: DoubleFeedBarCard(
                  image1: "assets/images/ex1.jpg",
                  image2: "assets/images/ex2.jpg",
                  mytitle1: "Achievement One",
                  mytitle2: "Achievement Two",
                  mydescription1: "Description One",
                  mydescription2: "Description Two",
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: DoubleFeedBarCard(
                  image1: "assets/images/ex3.jpg",
                  image2: "assets/images/ex4.jpg",
                  mytitle1: "Achievement One",
                  mytitle2: "Achievement Two",
                  mydescription1: "Description One",
                  mydescription2: "Description Two",
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: topMargin - (55 / 2))),
//
//
//
              dividerMedium,
//
//
//Academics
              Container(margin: EdgeInsets.only(bottom: topMargin - (55 / 2))),

              Align(
                alignment: Alignment.center,
                child: Text("Academics", style: headlineTextStyle),
              ),

              Container(
                margin: marginforDoubleFeedTit,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: DoubleFeedBarCard(
                  image1: "assets/images/ed1.jpg",
                  image2: "assets/images/ed1.jpg",
                  mytitle1: "Achievement One",
                  mytitle2: "Achievement Two",
                  mydescription1: "Description One",
                  mydescription2: "Description Two",
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: DoubleFeedBarCard(
                  image1: "assets/images/ed1.jpg",
                  image2: "assets/images/ed1.jpg",
                  mytitle1: "Achievement One",
                  mytitle2: "Achievement Two",
                  mydescription1: "Description One",
                  mydescription2: "Description Two",
                ),
              ),
              Container(margin: EdgeInsets.only(bottom: topMargin - (55 / 2))),
//
//
//
//
//
////
              dividerMedium,
//
//
//
//
//connect section
              Container(
                margin: marginforcards,
              ),

              Align(
                alignment: Alignment.center,
                child: Text("Let's Connect", style: headlineTextStyle),
              ),
              Container(margin: marginforcards),
              Align(
                  alignment: Alignment.center,
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(children: <Widget>[
                          Flexible(
                              child: Container(
                                  alignment: Alignment.center,
                                  child: Wrap(children: const <Widget>[
                                    HyperlinkbuttonRound(
                                      image: "assets/images/medium.png",
                                      url: "https://medium.com/@chris_81616",
                                    ),
                                    HyperlinkbuttonBox(
                                      image: "assets/images/dev.png",
                                      url: "https://dev.to/chrismorang",
                                    ),
                                    HyperlinkbuttonRound(
                                      image: "assets/images/github.png",
                                      url: "https://github.com/CHRISmorang",
                                    ),
                                    HyperlinkbuttonBox(
                                      image: "assets/images/stack-overflow.png",
                                      url:
                                          "https://stackoverflow.com/users/17219229/chriss-py-chicken",
                                    ),
                                    HyperlinkbuttonBox(
                                      image: "assets/images/linkedin.png",
                                      url:
                                          "https://www.linkedin.com/in/chris-morang-51a77b1ab/",
                                    ),
                                    HyperlinkbuttonRound(
                                      image: "assets/images/discord.png",
                                      url:
                                          "https://discord.com/users/598575091294666763",
                                    ),
                                    HyperlinkbuttonBox(
                                      image: "assets/images/gmail.png",
                                      url:
                                          "https://mail.google.com/mail/u/0/#inbox?compose=CllgCJvkXVHrvbzFRVSfSMWkFSTdxzqJcJXrChdSBSTFstQSqXNXKpJPvLWrmhnFJMqXWTjjlDV",
                                    ),
                                  ]))),
                        ]))
                  ])),
//
//
//
//
////
              Container(
                margin: marginforcards,
              ),
              divider,
              const Footer(),
              Container(
                margin: marginforcards,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
