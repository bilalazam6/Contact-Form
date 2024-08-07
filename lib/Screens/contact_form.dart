import 'package:flutter/material.dart';
import 'package:flutter_practice/Screens/responsive.dart';

class Textfield extends StatelessWidget {
  const Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Form"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        bottom: false,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Get in touch with us",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: Responsive.isMobile(context)
                      // If the device is mobile then it takes the 90% of it's total width of screen
                      ? Responsive.widthOfScreen(context) * 0.9
                      //Otherwise it takes the 80% of it's total width of screen
                      : Responsive.widthOfScreen(context) * 0.8,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFC4ACA1),
                          blurRadius: 4,
                          spreadRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          contactFormField("Name*", 1, "Your Name"),
                          contactFormField("Email*", 1, "Your Email"),
                          contactFormField("Phone Number", 1, "Your Phone Number"),
                          contactFormField("Message", 12, "Your Message"),
                          Row(
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(backgroundColor: Colors.blue),
                                  onPressed: (){},
                                   child: const Text(
                                    "Submit",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),                  
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  contactFormField(name,maxLine,hintText){
    return Padding(padding: const EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            maxLines: maxLine,
            decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            ),
          ),
        ),
      ],
    ),
    );
  }
}
