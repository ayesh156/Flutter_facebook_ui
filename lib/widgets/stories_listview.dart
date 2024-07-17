import 'package:facebook_ui/models/story_model.dart';
import 'package:flutter/material.dart';

class StoriesListView extends StatelessWidget {
  StoriesListView({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  List<StoryModel> stories = [
    StoryModel(story: "https://images.pexels.com/photos/1496373/pexels-photo-1496373.jpeg?auto=compress&cs=tinysrgb&w=600",
     uid: "100",
      userImage: "https://z-p3-scontent.fcmb9-1.fna.fbcdn.net/v/t1.6435-9/165611323_299100994906134_5457851176850627837_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEbFpD9sVlm81fXPmkSFYBBvVwdYOe_HIG9XB1g578cgSVElsLhKHH8pASPUh9C3hIPDBCt0iOdsV3AminM_JoF&_nc_ohc=DotE3Pm-acgAX9jFojT&_nc_ht=z-p3-scontent.fcmb9-1.fna&oh=00_AfAmBDM5_gZiU7fBgrERyRhiZRbGPsXUr4Z87Gm4PLJ1ew&oe=64EB30B3",
       userName: "Ayesh Chathuranga"),
    StoryModel(story: "https://images.pexels.com/photos/1545743/pexels-photo-1545743.jpeg?auto=compress&cs=tinysrgb&w=600",
     uid: "100",
      userImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMmGr48GTolZpjOkABB8Y-8Hf3lU-j1hQUslhVO2y40aBT-rOir1_pzmtkwHeE40Mo8_E&usqp=CAU",
       userName: "Thisara Lakshan"),
    StoryModel(story: "https://images.pexels.com/photos/3593922/pexels-photo-3593922.jpeg?auto=compress&cs=tinysrgb&w=600",
     uid: "100",
      userImage: "https://hips.hearstapps.com/hmg-prod/images/tom-holland-attends-the-los-angeles-premiere-of-sony-news-photo-1683915930.jpg?crop=0.611xw:0.916xh;0.218xw,0.0842xh&resize=1200:*",
       userName: "Eshara Ranaveera"),
    StoryModel(story: "https://images.pexels.com/photos/775203/pexels-photo-775203.jpeg?auto=compress&cs=tinysrgb&w=600",
     uid: "100",
      userImage: "https://flxt.tmsimg.com/assets/43389_v9_bc.jpg",
       userName: "Sachira Jayawardana"),
    StoryModel(story: "https://images.pexels.com/photos/719396/pexels-photo-719396.jpeg?auto=compress&cs=tinysrgb&w=600",
     uid: "100",
      userImage: "https://hips.hearstapps.com/hmg-prod/images/gettyimages-931925994-square.jpg",
       userName: "Sachindu Thathsara"),
    StoryModel(story: "https://images.pexels.com/photos/775203/pexels-photo-775203.jpeg?auto=compress&cs=tinysrgb&w=600",
     uid: "100",
      userImage: "https://s.yimg.com/ny/api/res/1.2/CnmB6cHXIaEPMwk3p5wu6w--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTY0MA--/https://media.zenfs.com/en/shefinds_255/456c9e2c7ba3bd68f9a93596c76487c2",
       userName: "Sachini Bagya"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 176,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: (context, i) {
          int index = i - 1;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(15)),
              child: i == 0 ? Stack(
                children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      image: DecorationImage(
                          image: NetworkImage(profilePic),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  bottom: 45,
                  left: 1,
                  right: 1,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.blue, shape: BoxShape.circle
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Create\nStory",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                )
              ]) : Stack(
                children: [
                  Container(
                    width: 100,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage(stories[index].story),fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken))
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 2)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(stories[index].userImage),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: Text(stories[index].userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
