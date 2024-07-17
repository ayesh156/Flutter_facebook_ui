import 'package:facebook_ui/models/post_model.dart';
import 'package:flutter/material.dart';

class PostListView extends StatelessWidget {
  PostListView({
    super.key,
    required this.profilePic,
  });

  final String profilePic;
  List<PostModel> posts = [
    PostModel(
        post: "https://z-p3-scontent.fcmb9-1.fna.fbcdn.net/v/t1.6435-9/165611323_299100994906134_5457851176850627837_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEbFpD9sVlm81fXPmkSFYBBvVwdYOe_HIG9XB1g578cgSVElsLhKHH8pASPUh9C3hIPDBCt0iOdsV3AminM_JoF&_nc_ohc=DotE3Pm-acgAX9jFojT&_nc_ht=z-p3-scontent.fcmb9-1.fna&oh=00_AfAmBDM5_gZiU7fBgrERyRhiZRbGPsXUr4Z87Gm4PLJ1ew&oe=64EB30B3",
        time: "1h",
        caption: "My New Profile Photo",
        userImage: "https://z-p3-scontent.fcmb9-1.fna.fbcdn.net/v/t1.6435-9/165611323_299100994906134_5457851176850627837_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEbFpD9sVlm81fXPmkSFYBBvVwdYOe_HIG9XB1g578cgSVElsLhKHH8pASPUh9C3hIPDBCt0iOdsV3AminM_JoF&_nc_ohc=DotE3Pm-acgAX9jFojT&_nc_ht=z-p3-scontent.fcmb9-1.fna&oh=00_AfAmBDM5_gZiU7fBgrERyRhiZRbGPsXUr4Z87Gm4PLJ1ew&oe=64EB30B3",
        uid: "100",
        userName: "Ayesh Chathuranga",
        type: "Update Profile Photo",
        likes: "630",
        comments: "560",
        shares: "220"
        ),
    PostModel(
        post: "https://images.pexels.com/photos/2406395/pexels-photo-2406395.jpeg?auto=compress&cs=tinysrgb&w=600",
        time: "2d",
        caption: "Waterfall",
        userImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMmGr48GTolZpjOkABB8Y-8Hf3lU-j1hQUslhVO2y40aBT-rOir1_pzmtkwHeE40Mo8_E&usqp=CAU",
        uid: "200",
        userName: "Thisara Lakshan",
        type: "Added new photo",
        likes: "32",
        comments: "46",
        shares: "27"
        ),
    PostModel(
        post: "https://images.pexels.com/photos/3121979/pexels-photo-3121979.jpeg?auto=compress&cs=tinysrgb&w=600",
        time: "4d",
        caption: "Iphone camera quality",
        userImage: "https://hips.hearstapps.com/hmg-prod/images/tom-holland-attends-the-los-angeles-premiere-of-sony-news-photo-1683915930.jpg?crop=0.611xw:0.916xh;0.218xw,0.0842xh&resize=1200:*",
        uid: "300",
        userName: "Eshara Ranaveera",
        type: "Added new Pphoto",
        likes: "89",
        comments: "45",
        shares: "47"
        ),
    PostModel(
        post: "https://images.pexels.com/photos/1092644/pexels-photo-1092644.jpeg?auto=compress&cs=tinysrgb&w=600",
        time: "9h",
        caption: "New Iphone",
        userImage: "https://hips.hearstapps.com/hmg-prod/images/gettyimages-931925994-square.jpg",
        uid: "100",
        userName: "Sachindu Thathsara",
        type: "Added new photo",
        likes: "23",
        comments: "21",
        shares: "31"
        ),
    PostModel(
        post: "https://images.pexels.com/photos/196656/pexels-photo-196656.jpeg?auto=compress&cs=tinysrgb&w=600",
        time: "2h",
        caption: "Office time",
        userImage: "https://s.yimg.com/ny/api/res/1.2/CnmB6cHXIaEPMwk3p5wu6w--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTY0MA--/https://media.zenfs.com/en/shefinds_255/456c9e2c7ba3bd68f9a93596c76487c2",
        uid: "100",
        userName: "Sachini Bagya",
        type: "Added new photo",
        likes: "300",
        comments: "210",
        shares: "210"
        ),
    PostModel(
        post: "https://images.pexels.com/photos/842908/pexels-photo-842908.jpeg?auto=compress&cs=tinysrgb&w=600",
        time: "1d",
        caption: "Japan",
        userImage: "https://flxt.tmsimg.com/assets/43389_v9_bc.jpg",
        uid: "100",
        userName: "Sachira Jayawardana",
        type: "Added new photo",
        likes: "100",
        comments: "120",
        shares: "20"
        ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(posts[index].userImage,),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        posts[index].userName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            height: 0.8,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        posts[index].type,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            posts[index].time,
                            style: const TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.public,
                            color: Colors.grey.shade600,
                            size: 13,
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Text(
              posts[index].caption,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
            Image.network(
              posts[index].post,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  posts[index].likes,
                  style: const TextStyle(color: Colors.grey),
                ),
                Text(
                  "${posts[index].comments} Comments",
                  style: const TextStyle(color: Colors.grey),
                ),
                Text(
                  "${posts[index].shares} Shares",
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
            const Divider(
              thickness: 0.2,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionButton(
                  icon: Icons.thumb_up_alt_outlined,
                  text: "Like",
                ),
                ActionButton(
                  icon: Icons.comment,
                  text: "Comments",
                ),
                ActionButton(
                  icon: Icons.reply,
                  text: "Shares",
                ),
              ],
            ),
            Divider(height: 30,thickness: 5, color: Colors.grey.shade800,)
          ],
        );
      }
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}
