import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/user/profile/view/updateprofile.dart';
import 'package:guide/user/profile/view/widget/getprofileblockbuilder.dart';
import 'package:guide/view/screens/splashscreen.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileUserScreen extends StatelessWidget {
  const ProfileUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   CustomAppBar(
        text: const Text(
          'Profile',
          style: TextStyle(color: white),
        ),
     actions: [
          ActionIcon(
            icon: Icons.edit_note_rounded,
            onPressed: () {
              Navigator.of(context).pushNamed(updateProfileScreen);
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           GetProfileBlockBuilder() ,
            const Divider(height:25 ,color: gray5,),
            // const SizedBox(height: 10),
            Container(
              
              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: white,
                boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black12,
                        offset: Offset(0, 15))
                  ]
              ),
              child:Column(
              children: [
                ProfileMenuWidget(
                title: "Settings",
                icon: LineAwesomeIcons.cog,
                onPress: () {}),
                 const SizedBox(height: 10),
            ProfileMenuWidget(
                title: "Help & Support",
                icon: Icons.help_outline_outlined,
                onPress: () {}),
                const SizedBox(height: 10),
            ProfileMenuWidget(
                title: "About App",
                icon: LineAwesomeIcons.info,
                onPress: () {}),
            // const Divider(),
            const SizedBox(height: 10),
            ProfileMenuWidget(
                title: "Logout",
                icon: LineAwesomeIcons.alternate_sign_out,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen()),
                  );             
                }),

              ],
            )),
            
          ],
        ),
      ),
    );
  }



//   Widget _buildEditImage() {
//     return Row(
//       children: [
//         SizedBox(
//                   width: 50,
//                   height: 50,
//                   child: ClipRRect(
//                       borderRadius: BorderRadius.circular(100),
//                       child: const CircleAvatar(
//                         backgroundColor: gray1,
//                       ))),
//       SizedBox(width: 20,),
//       Text('name'),
//       ],

      
//     );
//   }
}




class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData? icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {

    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDark ? gray1 : green2;

    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: iconColor.withOpacity(0.1),
        ),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge?.apply(color: textColor)),
      trailing: endIcon? Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: const Icon(LineAwesomeIcons.angle_right, size: 18.0, color: Colors.grey)) : null,
    );
  }
}