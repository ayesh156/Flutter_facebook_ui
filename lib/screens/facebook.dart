import 'package:facebook_ui/widgets/icon_bar.dart';
import 'package:facebook_ui/widgets/new_post_bar.dart';
import 'package:facebook_ui/widgets/post_list_view.dart';
import 'package:facebook_ui/widgets/stories_listview.dart';
import 'package:facebook_ui/widgets/tool_bar.dart';
import 'package:flutter/material.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _FacebookState();
}

class _FacebookState extends State<FacebookHome> {
  final profilePic =
      "https://z-p3-scontent.fcmb9-1.fna.fbcdn.net/v/t1.6435-9/165611323_299100994906134_5457851176850627837_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEbFpD9sVlm81fXPmkSFYBBvVwdYOe_HIG9XB1g578cgSVElsLhKHH8pASPUh9C3hIPDBCt0iOdsV3AminM_JoF&_nc_ohc=DotE3Pm-acgAX9jFojT&_nc_ht=z-p3-scontent.fcmb9-1.fna&oh=00_AfAmBDM5_gZiU7fBgrERyRhiZRbGPsXUr4Z87Gm4PLJ1ew&oe=64EB30B3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          children: [
            const TooBar(),
            IconBar(profilePic: profilePic),
            const Divider(
              thickness: 0.5,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    NewPostBar(profilePic: profilePic),
                const Divider(
                  color: Colors.black38,
                  thickness: 10,
                ),
                StoriesListView(profilePic: profilePic),
                const Divider(
                  color: Colors.black38,
                  thickness: 10,
                ),
                PostListView(profilePic: profilePic)
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

