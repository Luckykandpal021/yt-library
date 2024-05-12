import 'package:flutter/material.dart';
import 'package:ytlibrary/resources/colors.dart';

class VideoTranscribe extends StatelessWidget {
  const VideoTranscribe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.5, color: appThemeColor)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/sample_thumbnail_1.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        const Center(
          child: Text(
            'Transcribe',
            style: TextStyle(
                inherit: false,
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: appThemeColor,
                decoration: TextDecoration.underline),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(width: 0.5, color: appThemeColor),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              children: [
                const Text(
                  'Zoom',
                  style: TextStyle(
                      inherit: false,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: appThemeColor,
                      decoration: TextDecoration.underline),
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: appThemeColor,
                ),
                Slider(
                  min: 0.0,
                  max: 100.0,
                  value: 40,
                  thumbColor: appThemeColor,
                  activeColor: appThemeColor,
                  onChanged: (value) {
                    // setState(() {
                    //   _value = value;
                    // });
                  },
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Text(
            'Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se  Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se  Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se  Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se Tujhse naaraz nahiin zindagi Hairaan hoon main O hairaan huun main Tere masum sawaalon se',
            style: TextStyle(wordSpacing: 7),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: appThemeColor)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PDF',
                  style: TextStyle(fontSize: 18, color: appThemeColor),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.download_for_offline_outlined,
                  color: appThemeColor,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
