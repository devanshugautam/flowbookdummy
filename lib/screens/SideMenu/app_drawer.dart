import 'package:flutter/material.dart';

// Local import
import '../../services/get_images.dart';
// screens
import '../SideMenu/menu_items.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.imageObj,
  });

  final GetImage imageObj;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 120,
            child: DrawerHeader(
              decoration: BoxDecoration(
                // color: Colors.blue,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade400,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Image.asset(imageObj.getImage('ic_launcher')),
            ),
          ),
          MenuItem(
            itemName: 'Home',
            imageName: 'home',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'My Account',
            imageName: 'profile',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'Change Password',
            imageName: 'change_password',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'My Orders',
            imageName: 'my_orders',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'Feedback',
            imageName: 'feedback',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'About Us',
            imageName: 'about_us_dark',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'Student Companion Program',
            imageName: 'revision_mate',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'Logout',
            imageName: 'logout',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'Exit',
            imageName: 'cancellation',
            imageObj: imageObj,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade400,
            height: 1,
            child: null,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 18, left: 20),
            // color: Colors.grey.shade400,
            // height: 1.5,
            child: Text(
              "Contact Us",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          ),
          MenuItem(
            itemName: 'Free Counselling',
            imageName: 'counselling',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'info@dev.in',
            imageName: 'email',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: '+91-8619523216',
            imageName: 'mobile',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'Whatsapp Us',
            imageName: 'whatsapp_us',
            imageObj: imageObj,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade400,
            height: 1,
            child: null,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 18, left: 20),
            // color: Colors.grey.shade400,
            // height: 1.5,
            child: Text(
              "General",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          ),
          MenuItem(
            itemName: 'Terms & Conditions',
            imageName: 'terms_and_conditions',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'Privacy Policy',
            imageName: 'privacy_policy',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'Shipping Policy',
            imageName: 'shipping_policy',
            imageObj: imageObj,
          ),
          MenuItem(
            itemName: 'Cancellation Policy',
            imageName: 'cancellation_policy',
            imageObj: imageObj,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: 5),
            // color: Colors.grey.shade400,
            height: 1,
            child: null,
          ),
        ],
      ),
    );
  }
}
