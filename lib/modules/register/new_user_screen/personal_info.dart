import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';

import '../../../shared/components/components.dart';

class PersonalInfo extends StatelessWidget {

  var FullNameController = TextEditingController();
  List<String> genderList = ['Male', 'Female']; // Option 2
  String? dropDownValue;
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0), color: Colors.blue),
              width: 150,
              height: 150,

              child: InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: CachedNetworkImage(
                    imageUrl: "https://www.seekpng.com/png/detail/428-4287240_no-avatar-user-circle-icon-png.png",
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            colorFilter:
                                ColorFilter.mode(Colors.transparent, BlendMode.colorBurn)),
                      ),
                    ),
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            defaultFormField(
                controller: FullNameController,
                type: TextInputType.text,
                validate: (String? value) {
                  if (value!.isEmpty)
                    return 'Please Enter Your Full Name';
                },
                label: 'Full Name *',
                prefix: Icons.person),
            SizedBox(
              height: 30.0,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(15.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Gender",
                  fillColor: Colors.white),
              value: dropDownValue,
              onChanged: (String? Value) {

              },
              items: genderList
                  .map((cityTitle) => DropdownMenuItem(
                  value: cityTitle, child: Text("$cityTitle")))
                  .toList(),
            ),
            SizedBox(
              height: 30.0,
            ),
            defaultFormField(
                controller: dateController,
                type: TextInputType.datetime,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.parse('2030-01-01'),
                  ).then((value) {
                    dateController.text =
                        DateFormat.yMMMd().format(value!);
                  });
                },
                validate: (value) {
                  if (value!.isEmpty) {
                    return ' this date must be not null';
                  }
                  return null;
                },
                label: 'Task Date',
                prefix: Icons.calendar_today),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',style: TextStyle(fontSize: 16.0),),
                defaultTextButton(function: (){},text: 'Login'),
              ],
            ),

            SizedBox(
              height: 30.0,
            ),
            defaultButton(function: (){}, text: 'Continue',radius: 15.0)


          ],
        ),
      ),
    );
  }
}
