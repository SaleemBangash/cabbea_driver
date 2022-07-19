// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cabbea_driver/driver/driver_rating.dart';
import 'package:cabbea_driver/driver/new_chat/daily.dart';
import 'package:cabbea_driver/driver/new_chat/rides.dart';
import 'package:cabbea_driver/driver/new_chat/sendEmail.dart';
import 'package:cabbea_driver/driver/new_chat/weekly.dart';
import 'package:cabbea_driver/widgets/app_bar.dart';
import 'package:flutter/material.dart';

import 'main_screen_online.dart';

// import 'dashboard.dart';
// import 'set_destination.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
        backgroundColor: Color(0xff272525),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScreenOnline()));
            }
            //onPressed: () => Navigator.of(context).pop(),
            ),
        data: Text(
          'Terms And Condition',
          style: TextStyle(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Container(
            // margin: EdgeInsets.only(top: 20),
            color: Color(0xffEBEBEB),
            child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "PLEASE READ AND ACCEPT OUR TERMS AND CONDITIONS CAREFULLY BEFORE USING THE CABBEA"
                        "APP ON BOTH MOBILE AND WEB BASED PLATFORMS (THE “SERVICES”) OPERATED BY"
                        " CABBEA (SMC-PVT) LIMITED. (“US”, “WE” OR “OUR’ ).",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Your access and use of the app constitutes your agreement to the terms and conditions which establishes a contractual relationship between you and Cabbea. If you do not agree to these Terms, you may not access or use the Services. These Terms expressly supersede prior agreements or arrangements with you. Cabbea reserves the right to terminate the agreement in case of any non-compliance by temporary suspension of access to the app.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "•	Cabbea may amend this agreement from time to time. Users shall be notified of the amendment wherein which the amendments will be effective upon Cabbea posting of the updated agreement in the platform. Your continued access of the platform is automatically considered as consent to the agreement."
                        "\n•	You acknowledge that Cabbea does not function as a transportation service provider or own any vehicles for transportation and all transportation services are provided by independent third party contractors who are not employed by Cabbea."
                        "\n•	Cabbea platform may be subject to access to third party content which includes advertising that Cabbea does not control. Your use of the service acknowledges the different terms of use and privacy policies that are aligned with your use of third party services and content. CABBEA does not endorse nor is it responsible for the services and content of third party providers. "
                        "\n•	The third party providers are in turn not responsible for the provision and support of the CABBEA platform in any manner. Your access to the CABBEA platform using these services or applications is subject to terms set forth in the applicable third party beneficiary’s terms of service.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Disclaimer",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "except as provided in this agreement, cabbea is provided as-is and as-available. cabbea makes no representations or warranties of any kind, express or implied, concerning the operation of cabbea, the content, information, and/or services available on or through cabbea."
                        "\nthe company does not guarantee the accuracy, adequacy or completeness of any information provided at or through cabbea (by link or otherwise) and is not responsible for any errors or omissions, or for the results obtained from use of such information."
                        "\nyou agree that cabbea is not responsible for and cannot guarantee against the introduction of viruses or worms, or unauthorized users attempting to access, or obtaining access to cabbea or your computer or other systems from or through cabbea."
                        "\ncabbea may temporarily or permanently suspend access to or discontinue cabbea or any page of cabbea at its discretion, at any time, without notice."
                        "\nyou agree to visit cabbea solely at your own risk. you agree that your use of cabbea, and any content, information and/or services available through cabbea is solely at your own risk."
                        "\nwe do not warrant that cabbea will be available at all times or that a visitor’s use will be continuous and/or error free. we do not make any warranties that the content, information and/or services available through cabbea are accurate, reliable, or current."
                        "\nthe company disclaims, to the maximum extent permissible, all warranties and conditions, express or implied, including, but not limited to the implied warranties and conditions of satisfactory quality, performance, fitness for a particular purpose, merchantability and non-infringement in relation to the content, information, service or products provided at, through or in connection with cabbea."
                        "\nyou agree that cabbea may send communication to you via email, sms, or phone calls to the email addresses and phone numbers you're provided at any time.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Don’ts for The Cabbeans:",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "With respect to your use of CABBEA platform and your enrollment as a Cabbean with Cabbea, you agree that you will not:"
                        "\n•	Impersonate any person or entity"
                        "\n•	Stalk, threaten or harass any person"
                        "\n•	Carry any illegal substances (drugs of any kind) and alcohol."
                        "\n•	Carrying any kind of weapons is strictly prohibited."
                        "\n•	Violate any rule, law, ordinances or regulation of any kind with respect to all the governing boards and the company Cabbea"
                        "\n•	Post or interact with the platform or Cabbea in a manner which is false or misleading, defamatory, abusive or obscene in any manner, which is offensive, threatening or illegal"
                        "\n•	Use the CABBEA platform in any way that could disrupt the services or rights of any third party, including but not limited to: intellectual property rights, copyright, patent, trademark, or rights of publicity or privacy"
                        "\n•	Transfer or sell your account to anyone"
                        "\n•	Discriminate against anyone on the basis of race, religion, country of origin, gender, sexuality, physical or mental disability, medical condition, age, marital status"
                        "\n•	Cause any third party to engage in the restricted activities mentioned above.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Do’s for The Cabbeans:",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	Always ensure usage of only one vehicle that was entered during registration while providing services for Cabbea"
                        "\n•	Adheres to all policies and rules put forward by the service as well as other regulatory bodies. These may include, maintaining a professional attitude and keeping the car clean according to standard procedures."
                        "\n•	Vehicle Insurance is the Cabbean’s sole responsibility, however Cabbea will assist you in future to acquire Vehicle Insurance."
                        "\n•	Comply with all road safety laws when Driving the vehicle."
                        "\n•	Do not violate Traffic Laws at any point of time while Driving."
                        "\n•	All of the Cabbean registration requirements must be followed."
                        "\n•	Items left in the vehicle must be reported immediately to the concerned authorities. Please check the Return Policies"
                        "\n•	Ensure that you use only one vehicle, entered during registration, while providing services for Cabbea and it’s Customers."
                        "\n•	This agreement constitutes the understanding between Cabbea and the Cabbean. Once enrolled via Mobile App or website, no changes or waiver to the agreement can be done. By registering for Cabbea, you agree to all terms and conditions listed on the agreement."
                        "\n•	Your use of the CABBEA platform requires you to submit your current and updated information which includes your personal information such as name, email, phone number, Vehicle Registration, Driving License and any other document deemed necessary. Your failure to maintain accurate and complete information will result in limited access to the platform as well as the option to opt out of marketing preferences.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Rigestering With Cabbea",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "• Cabbea requires all Cabbeans to have the necessary requirements and qualifications ready before registering themselves."
                        "\n•	The Cabbean must adhere to the terms of the agreement and provide adequate services to the user accordingly."
                        "\n•	Cabbea should be notified immediately of any updates made to your Cabbeans license and vehicle registration or CNIC. Cabbea needs to update your records as soon as possible to avoid any unforeseen. Failing to provide said changes may lead to termination of services as Cabbean",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "COVID 19:",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Currently, the Government is making all-out efforts to deal with a rapidly evolving situation which is a challenge, not only for Pakistan but the whole world – and ensuring that we take proactive, comprehensive, and coordinated steps even when are Not In Ride."
                        "\nAs Customer or A Cabbean, it is our duty to keep Us and everyone Safe from Corona Virus and it’s Variants. For that, we need to make sure:"
                        "\n•	We Wear A mask throughout the Ride"
                        "\n•	Use of Hand Sanitizer. Please share with one another if and when required."
                        "\n•	If weather permits than keep the Car windows down for ventilation"
                        "\n•	Use AC when it’s hot to circulate air within the Car"
                        "\n•	Try to keep passengers’ numbers to 3."
                        "\n•	Do not shake hands"
                        "\n•	Do not Drive or Take Ride, while you are having Fever, Flu or Cough."
                        "\n•	Keep a fair distance while conversing",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Anti-Discrimination Policies:",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cabbea strictly discourages any sort of Discrimination either from a Cabbean or from the Customer’s end. Any such incident reported to Cabbea can lead to Account Deactivation:"
                        "\n•	Age"
                        "\n•	Race"
                        "\n•	Color"
                        "\n•	Religion or Sect"
                        "\n•	Gender: Male or Female"
                        "\n•	Unnecessary talks that may flare up the other person."
                        "\n•	Physical or Mental disability"
                        "\n•	Marital Status"
                        "\nAnd any other such discrimination that can lead to a dispute amongst the Cabbean and the Customer.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cancellation Policy",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "In case of breach of Cancellation Policy, Cabbeans can be reprimanded off of their IDs with Cabbea. However, on such instance, Cabbeans are allowed to connect with support or help center for further investigations."
                        "\n•	Cabbeans can Skip any Ride which they deemed not feasible to Accept. This will not have an impact on your Ratings."
                        "\n•	Cabbeans are allowed to Cancel 2 Rides in a Day."
                        "\n•	On 3rd Cancellation, whichever the reason may be, their ID will be blocked till further Notice.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Confidentiality",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "By creating an online account and/or accepting referrals with Cabbea, you hereby agree to keep confidential all Customer referral information, including but not limited to names, addresses, contact information, vehicle information, insurance information and any other information gathered as a result of your relationship with Cabbea."
                        "\nYou shall not use or disclose, in any manner or to any person, any fact or occurrence that resulted from a referral related to your relationship with Cabbea.  You are prohibited from publishing to any person any information regarding referrals that may be of a personal or confidential nature, including but not limited to personal observations which, if disclosed, would be embarrassing or humiliating, or cause any individual to be held in lower esteem in their community or the community in which the information is published.    This term does not apply where disclosure is required (i) by law; (ii) to otherwise comply with legal process; (iii) to comply with the terms and conditions set forth in this Agreement; or (iv) to protect any individual from immediate risk of serious physical or financial harm."
                        "\nThe foregoing restriction shall continue in effect indefinitely, and shall survive the expiration or termination of your status as a registered Cabbean for Cabbea."
                        "\nIf you violate this provision, Cabbea may, in its sole discretion and without notice (i) suspend or terminate you from current or future services through Cabbea; (ii) pursue any remedy necessary to enforce this provision in a court of law; and (iii) and recover damages related to enforcing this provision including but not limited to (a) damages in the amount that may be obtained were the Customer to pursue any related claim against you in a court of law; (b) moneys that are paid in settlement or award of a claim against Cabbea; (c) costs; (d) expenses; and (e) attorney fees.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "PROMOTIONS",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "•	Cabbea will be from time to time sending the users or potential users available promotions of the time. The promotions are in no relation to the agreement you have with Cabbea. Promotions will be available with codes saying “ PROMO CODES”. Cabbea reserves the right to withhold or deduct credits obtained through the promotion in the event of the receipt of the credit obtained through the code was in error or through fraudulent means or in violation of the terms of the agreement."
                        "\n•	You agree that the promo codes would only be used for the intended purpose and will not be duplicated, sold or transferred in any manner or be made available to the general public, unless permitted by Cabbea. They are also not valid for cash and may expire prior to your use."
                        "\n•	As part of your account, Cabbea may provide you a referral code which is allowed to distribute among friends, family or other persons to become a new user or a new Cabbean."
                        "\n•	From time to time, incentives in the form of discounts will also be made available and Cabbea sets the amount, incentive type, terms and requirements in its sole discretion. You may not sell, trade or barter your codes as well as from advertising your codes in any public channels which includes all social media channels. Cabbea reserves the right to invalidate or disable the code any time in its own sole discretion",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Documents to Carry while Driving on Cabbea’s Platform",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "While you are logged in on Cabbea’s App, then you must keep the below mentioned documents with you all the times to avoid any unforeseen:"
                        "\n•	CNIC"
                        "\n•	Driving License"
                        "\n•	Vehicle’s Registration Book.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Termination of Contract",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Breach of any of this agreement between You and Cabbea, shall entitle Cabbea, in it’s sole discretion, to suspend or terminate your registration as a Cabbean.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cabbea as Delivery Partner",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "These Terms and Conditions applies to the Delivery services using Cabbea’s platform."
                        "\nCabbean’s Responsibilities"
                        "\n•	Cabbean shall make reasonable efforts under the circumstances to deliver the Goods according to the estimated time frame and schedule although it is noted that these estimates time frames are estimates and may not accurately factor in extraneous conditions such as accidents, traffic, weather, power outages, civic or civil disruptions."
                        "\n•	Cabbean shall, under the circumstances occurred during the process of delivery, take all reasonable precautions to prevent any loss or damage of the Goods beyond the wear and tear of ordinary transportation conditions or any unauthorized or illegal access to the Goods attempted by any parties."
                        "\n•	Cabbean is obligated to use suitable and appropriate vehicle for delivery of Goods which reasonably ensures safe delivery and prevent loss, damage, or injury to the Goods, any property, or person."
                        "\n•	Cabbean can make purchases of worth Rs. 1000/- on behalf of customers."
                        "\n•	The Cabbean is obligated to collect delivery fee, which shall be no more than the Ordinary Transport Fare, from the User upon completion of delivery."
                        "\n•	Cabbean shall bear the costs and expenses relating to delivery of Goods including but not limited to repair and maintenance of their vehicle, gasoline, parking, tolls, fines or citations."
                        "\nCabbean’s Limited Liability"
                        "\•	Cabbean shall not be liable for any loss or damage resulting from delays in delivering the Goods."
                        "\n•	Cabbeans shall not be liable for any loss or damage of the Goods which arises from or is in relation to the following act, failure, or circumstances:"
                        "\n•	Cabbeans shall not be liable for any loss or damage of the Goods which arises from or is in relation to the following act, failure, or circumstances:"
                        "\n•	The Cabbean’s failure to perform any of his obligations as a consequence of circumstances outside his control; or"
                        "\nAny acts, with intent or negligence, or omissions of any party other than the Cabbean."
                        "\n•	Under any circumstances, Cabbean shall not be held liable for any Indirect Loss or Damage."
                        "\n•	Cabbean shall not open and inspect the Goods and hence bear no responsibility for the legality of the Goods or their compliance with any laws or regulations."
                        "\nCabbean’s Prohibition"
                        "\n•	Cabbean shall not accept User’s booking for delivery of Goods for other Cabbean and shall not forward the booking he/she has accepted to other Cabbean or person under any circumstances."
                        "\n•	Cabbean shall not perform any other delivery, or provide any other services from any person, or accept any User’s booking for delivery of Goods which may cause delay to the delivery that he/she has already accepted and in the process of performing the delivery."
                        "\n•	Cabbean shall, by no means, use the Services or Software to commit, cause, induce, promote, or support any illegal acts or violate any legal rights or privacy of any person including tracking, stalking, and harassing any person."
                        "\n•	Cabbean shall, by no means, use the Services or Software to produce or disseminate advertisements, spam, or any kind of messages which may cause annoyance to any parties."
                        "\n•	Cabbean shall not take any action that may cause delay, damage, or destruction of the operation of the Services or Software or the servers and network those are linked to the Software."
                        "\n•	Cabbean shall make no attempts to undermine, impair, or damage Cabbea’s Service or business, for example, attempting to circumvent the Service or Software by contacting the User directly, or discouraging the User to use the Service or Software. Cabbea reserves the full right to make its own determination of which action shall be recognized as such detrimental act."
                        "\n•	Cabbean shall not commit any misrepresentation in the use of the Services or Software including acts of using the Services or Software in the name of another party. Cabbean shall also refrain from using the Software stored on device of any other person without permission."
                        "\nNote: Please feel free to contact at info@cabbea.com or support@cabbea.com",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ))),
          ),
        ));
  }
}
