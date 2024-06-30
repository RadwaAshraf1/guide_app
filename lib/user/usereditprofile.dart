// import 'package:flutter/material.dart';
// import 'package:guide/constants/colots.dart';
// import 'package:guide/view/widgets/customappbar.dart';
// import 'package:guide/view/widgets/custombutton.dart';
// import 'package:guide/view/widgets/customtextformfield.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';


// class UpdateProfileUserScreen extends StatefulWidget {
//   const UpdateProfileUserScreen({Key? key}) : super(key: key);

//   @override
//   State<UpdateProfileUserScreen> createState() => _UpdateProfileUserScreenState();
// }

// class _UpdateProfileUserScreenState extends State<UpdateProfileUserScreen> {
//   @override
//   Widget build(BuildContext context) {
//   bool isObscureText = true;

//     final GlobalKey<FormState> formKey = GlobalKey();
//     TextEditingController email = TextEditingController();
//     TextEditingController password = TextEditingController();
//     TextEditingController fullName = TextEditingController();
//     TextEditingController phone = TextEditingController();

//     return Scaffold(
//       appBar:  const CustomAppBar(
//         text: Text(
//           'Edit Profile',
//           style: TextStyle(color: white),
//         ),
//     leadingIcon: LeadingIcon(),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             _buildEditImage(),
//             const SizedBox(height: 50),
//             _buildForm(formKey, fullName, phone, email, password, context),
//           ],
//         ),
//       ),
//     );
//   }

//   Form _buildForm(GlobalKey<FormState> formKey, TextEditingController fullName, TextEditingController phone, TextEditingController email, TextEditingController password, BuildContext context) {
//     return Form(
//             key: formKey,
//             child: Column(
//               children: [
//                 CustomTextFormField(
                    
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please enter a valid password';
//               }
//             },
//                   // keyboardType: TextInputType.name,
//                   controller: fullName,
//                   labelText: 'Full name',
//                   prefixIcon: const Icon(
//                     LineAwesomeIcons.user,
//                     color: gray2,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 CustomTextFormField(
                    
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please enter a valid password';
//               }
//             },
//                   // keyboardType: TextInputType.phone,
//                   controller: phone,
//                   labelText: 'Phone',
//                   prefixIcon: const Icon(
//                     LineAwesomeIcons.phone,
//                     color: gray2,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 CustomTextFormField(
                    
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please enter a valid password';
//               }
//             },
//                   // keyboardType: TextInputType.emailAddress,
//                   controller: email,
//                   labelText: 'Email',
//                   prefixIcon: const Icon(
//                     Icons.mail,
//                     color: gray2,
//                   ),
//                 ),
//                 const SizedBox(height: 20),

//                 CustomTextFormField(
//                     // isObscureText: isObscureText,
//             suffixIcon: Icons.visibility_off  ,
//               ),
//             ),
            
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please enter a valid password';
//               }
//             },
//                   controller: password,
//                   labelText: 'Password',
//                   prefixIcon: const Icon(
//                     Icons.lock,
//                     color: gray2,
//                   ),
//                   suffixIcon: const Icon(
//                     Icons.visibility_off,
//                     color: gray2,
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//                 _buildFormSubmit(email, password, formKey, context),
//               ],
//             ),
//           );
//   }

//   SizedBox _buildFormSubmit(TextEditingController email, TextEditingController password, GlobalKey<FormState> formKey, BuildContext context) {
//     return SizedBox(
//                     width: double.infinity,
//                     child: CustomButon(
//                       text: 'Save Changes',
//                       // onPressed: () {
//                       //   {
//                       //     Map creds = {
//                       //       'email': email.text,
//                       //       'password': password.text,
//                       //       'device': 'mobile'
//                       //     };
//                       //     if (formKey.currentState!.validate()) {
//                       //       Provider.of<Auth>(context, listen: false)
//                       //           .login(creds: creds);
//                       //       Navigator.push(
//                       //         context,
//                       //         MaterialPageRoute(
//                       //             builder: (context) =>
//                       //                 const ProfileUserScreen()),
//                       //       );
//                       //     }
//                       //   }
//                       // },
//                     ));
//   }

//   SizedBox _buildEditImage() {
//     return SizedBox(
//             width: 120,
//             height: 120,
//             child: ClipRRect(
//                 borderRadius: BorderRadius.circular(100),
//                 child: const CircleAvatar(
//                   backgroundColor: gray5,
//                 )),
//           );
//   }
// }




import 'dart:convert';
import 'package:http/http.dart' as http;


class ProfileData {
  final int id;
  final String name;
  final String email;
  final String phoneNumber;

  ProfileData({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) {
    return ProfileData(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phone_number'],
    );
  }
}

Future<ProfileData> fetchProfileData() async {
  final url = Uri.parse('http://smart-guidance-system.first-meeting.net/api/auth/profile');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final profileData = ProfileData.fromJson(json.decode(response.body));
      return profileData;
    } else {
      throw Exception('Failed to fetch profile data');
    }
  } catch (e) {
    rethrow;
  }
}

Future<void> _getProfileData() async {
  try {
    final profileData = await fetchProfileData();
    print('Name: ${profileData.name}');
    print('Email: ${profileData.email}');
    print('Phone Number: ${profileData.phoneNumber}');
  } catch (e) {
    print('Error fetching profile data: $e');
  }
}
// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   List <dynamic>_profileData = [];
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     _fetchProfileData();
//   }

//   Future<void> _fetchProfileData() async {
//     final url = Uri.parse('http://smart-guidance-system.first-meeting.net/api/auth/profile');
//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       setState(() {
//         _profileData = jsonDecode(response.body);
//         _isLoading = false;
//       });
//     } else {
//       setState(() {
//         _isLoading = false;
//       });
//       // Handle the error, e.g., display an error message to the user
//       print('Error fetching profile data: ${response.statusCode}');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body: _isLoading
//           ? Center(
//               child: CircularProgressIndicator(),
//             )
//           : Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Name: ${_profileData['name']}',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Email: ${_profileData['type']}',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Phone: ${_profileData['phone']}',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   // Add more profile data as needed
//                 ],
//               ),
//             ),
//     );
//   }
// }