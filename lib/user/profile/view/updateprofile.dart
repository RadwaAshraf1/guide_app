// // ignore_for_file: prefer_const_constructors

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ProfileData {
//   final int id;
//   final String name;
//   final String email;
//   final String phoneNumber;

//   ProfileData({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.phoneNumber,
//   });

//   factory ProfileData.fromJson(Map<String, dynamic> json) {
//     return ProfileData(
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       phoneNumber: json['phone_number'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'email': email,
//       'phone_number': phoneNumber,
//     };
//   }
// }

// Future<ProfileData> updateProfileData(ProfileData profileData) async {
//   final url = Uri.parse('http://smart-guidance-system.first-meeting.net/api/auth/profile/update');

//   try {
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: jsonEncode(profileData.toJson()),
//     );

//     if (response.statusCode == 200) {
//       final updatedProfileData = ProfileData.fromJson(json.decode(response.body));
//       return updatedProfileData;
//     } else {
//       throw Exception('Failed to update profile data');
//     }
//   } catch (e) {
//     rethrow;
//   }
// }

// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//    ProfileData? _profileData;
//   final _nameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _phoneController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _fetchProfileData();
//   }

//   Future<void> _fetchProfileData() async {
//     try {
//       _profileData = await updateProfileData(ProfileData(
//         id: 123, // Replace with the actual user ID
//         name: 'John Doe',
//         email: 'john@example.com',
//         phoneNumber: '123456789',
//       ));
//       _nameController.text = _profileData!.name;
//       _emailController.text = _profileData!.email;
//       _phoneController.text = _profileData!.phoneNumber;
//     } catch (e) {
//       print('Error fetching profile data: $e');
//     }
//   }

//   Future<void> _updateProfileData() async {
//     try {
//       final updatedProfileData = await updateProfileData(ProfileData(
//         id: _profileData!.id,
//         name: _nameController.text,
//         email: _emailController.text,
//         phoneNumber: _phoneController.text,
//       ));
//       setState(() {
//         _profileData = updatedProfileData;
//       });
//     } catch (e) {
//       print('Error updating profile data: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _phoneController,
//               decoration: InputDecoration(
//                 labelText: 'Phone Number',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: _updateProfileData,
//               child: Text('Update Profile'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/user/profile/logic/updateprofile_cubit.dart';
import 'package:guide/user/profile/view/widget/updateprofileblocklistner.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:guide/view/widgets/customtextformfield.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfileUserScreen extends StatefulWidget {
  const UpdateProfileUserScreen({super.key});

  @override
  State<UpdateProfileUserScreen> createState() => _UpdateProfileUserScreenState();
}

class _UpdateProfileUserScreenState extends State<UpdateProfileUserScreen> {
   bool isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: Text(
          'Edit Profile',
          style: TextStyle(color: white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const CircleAvatar(
                        backgroundColor: gray5,
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text('data'),
              ],
            ),
            const SizedBox(height: 50),
            Form(
              key: context.read<UpdateProfileCubit>().formKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'can not be empty';
                      }
                    },
                    controller:
                        context.read<UpdateProfileCubit>().nameController,
                    labelText: 'Full name',
                    prefixIcon: const Icon(
                      LineAwesomeIcons.user,
                      color: gray2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'can not be empty';
                      }
                    },
                    controller: context.read<UpdateProfileCubit>().phone,
                    labelText: 'Phone',
                    prefixIcon: const Icon(
                      LineAwesomeIcons.phone,
                      color: gray2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'can not be empty';
                      }
                    },
                    controller: context.read<UpdateProfileCubit>().email,
                    labelText: 'Email',
                    prefixIcon: const Icon(
                      Icons.mail,
                      color: gray2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'can not be empty';
                      }
                    },
                    isObscureText: isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,color: gray2
              ),
            ),
                    controller: context.read<UpdateProfileCubit>().password,
                    labelText: 'Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: gray2,
                    ),
                   
                  ),
                  const SizedBox(height: 30),
                  CustomButon(
                    text: 'Save Changes',
                    onPressed: () {
                      validate(context);
                    },
                  )
                ],
              ),
            ),
            UpdateProfileBlockListner()
          ],
        ),
      ),
    );
  }
void validate(BuildContext context) {
    if (context.read<UpdateProfileCubit>().formKey.currentState!.validate()) {
      context.read<UpdateProfileCubit>().emitUpdateStates();
    }
  }}
