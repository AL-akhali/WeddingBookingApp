import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/constants/sizes.dart';
import 'package:bookingweddingapp/src/constants/text_string.dart';
import 'package:bookingweddingapp/src/features/core/screen/profile/update_profile_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/profile/widget/profile_menu.dart';
import 'package:bookingweddingapp/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: ()
            {
              Navigator.of(context).pop();
            },
            icon: Icon(LineAwesomeIcons.angle_right_solid)),
        title: Text(
          anProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
              onPressed: ()
              {
                TAppTheme().changeTheme();
              },
              icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
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
                          onPressed: () {  }, icon: Icon(LineAwesomeIcons.pencil_alt_solid,color: Colors.black,size: 20),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                anProfileHeading,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                anProfileSubHeading,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => UpdateProfileScreen());
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
                height: 30,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                title: anMenu1,
                icon: LineAwesomeIcons.cog_solid,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: anMenu2,
                icon: LineAwesomeIcons.wallet_solid,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: anMenu3,
                icon: LineAwesomeIcons.user_check_solid,
                onPress: () {},
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                title: anMenu4,
                icon: LineAwesomeIcons.info_solid,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: anLogOut,
                icon: LineAwesomeIcons.sign_out_alt_solid,
                textColor: Colors.red,
                endIcon: false,
                onPress: () 
                {
                  showModalBottomSheet(
                      context: context,
                      builder: (context)
                      {
                        return Container(
                          color: anPrimaryColor,
                          height: 150.0,
                            padding: EdgeInsets.symmetric(horizontal: 32.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: 
                              [
                                Text("هل انت متاكد من مغادرة التطبيق ؟",
                                  style: TextStyle(
                                    color: anDarkColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0,
                                  ),
                                ),
                                Row(
                                  children:
                                  [
                                    Expanded(
                                      child: MaterialButton(
                                          onPressed: ()
                                          {
                                            Navigator.of(context).pop();
                                          },
                                        color: anWhiteColor,
                                        child: Text("تسجيل الخروج",
                                          style:TextStyle(
                                            color: anPrimaryColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ) ,),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: ()
                                        {
                                          Navigator.of(context).pop();
                                        },
                                        color: anPrimaryColor,
                                        child: Text("الغـــاء",
                                          style:TextStyle(
                                            color: anWhiteColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ) ,),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                        );
                      }
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
