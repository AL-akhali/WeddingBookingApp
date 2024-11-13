import 'package:bookingweddingapp/src/constants/text_string.dart';
import 'package:bookingweddingapp/src/features/core/screen/profile/widget/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () { Navigator.of(context).pop();},
            icon: Icon(LineAwesomeIcons.angle_right_solid)),
        title: Text(
          anEditProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(anDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(image: AssetImage(anProfileImage))),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: anPrimaryColor,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(LineAwesomeIcons.camera_retro_solid,
                            color: Colors.black, size: 20),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("الاسم كامل"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("البريد الاكتروني"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("رقم الهاتف"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  label: Text("كلمة المرور"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: anPrimaryColor,
                        side: BorderSide.none,
                        shape: StadiumBorder()),
                    child: Text(
                      anEditProfile,
                      style: TextStyle(color: anDarkColor),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
                [
                  Text.rich(TextSpan(
                    text: anJoined,
                    style: TextStyle(fontSize: 12),
                    children: [
                      TextSpan(text: anJoinedAt,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                      ),
                    ],
                  ),
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent.withOpacity(0.1),
                      elevation: 0,
                        foregroundColor: Colors.red,
                        shape: StadiumBorder(),
                        side: BorderSide.none,
                      ),
                      child: Text(anDelete),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
