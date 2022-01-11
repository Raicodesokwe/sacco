import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saccoapp/welcome/signscreen.dart';

class LoanAgreement extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              'Dojo International Terms of Use and Loan Account Agreement - Kenya \nTerms and Conditions for the Opening and Use of a Loan Account with Dojo International\n\n Whereas',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                'This Agreement is a financial services and an end-user license agreement between you (“End-user” or “you”) and Dojo International Limited of a company duly incorporated under the laws of the Republic of Kenya with a company registration number CPR/2015/183658 (DIL, “us” or “we”) for the mobile application software, the data supplied with the software and the associated Services (defined below) (“App”).This Agreement (together with our Privacy Policy) sets out the complete terms and conditions (the “Terms and Conditions”) which shall be applicable to the Account (as hereinafter defined) opened by you with DIL.These Terms and Conditions and any amendments or variations thereto take effect on their date of publication.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              'IT IS AGREED AS FOLLOWS:\n\n1. DEFINITIONS AND INTERPRETATION\n1.1 Definitions',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                'For the purposes of this Agreement and the preamble above, unless the context requires otherwise:\nAcceptable Use Restrictions has the meaning given to it in clause 5;\nAgreement means this Agreement;\nAccount means your loan account with DIL;\nBusiness Day means a day other than a Saturday, Sunday or national or public holiday in the Republic of Kenya;\nCredentials means your personal credentials used to access the App and operate your Account;\nCredit Reference Bureau means a credit reference bureau duly licensed under the Banking Act pursuant to the Banking (Credit Reference Bureau) Regulations, 2013, as amended, revised or promulgated from time to time, to inter alia, collect and facilitate the sharing of customer credit information;\nE-Money means the electronic monetary value depicted in your Mobile Money Account representing an equal amount of cash;\nEquipment includes your mobile phone handset, SIM Card and/or other equipment which when used together enables you to access the Network;\nEvent of Default has the meaning given to it in clause 11.1;\nForce Majeure means events, circumstances or causes beyond its reasonable control of DIL making DIL\'s performance of its obligations inadvisable, commercially impracticable, illegal, or impossible, including but not limited to acts of God, war, strikes or labour disputes, embargoes or government orders;\nEncumbrance includes any mortgage or charge (whether legal or equitable), lien, option, security interest, restrictive covenant, pledge, assignment, title retention, trust arrangement or other restriction of any kind or other encumbrance securing or any right conferring a priority of payment in respect of any obligation of any person;\nLicense Restrictions has the meaning given to it in clause 4;\nLoan means the principal amount of the loan made or to be made by DIL to you under this Agreement from time to time through the App or (as the context requires) the principal amount outstanding for the time being of that loan;\nMobile Money Account means your mobile money store of value, being the record maintained by Mobile Money Providers in Kenya of the amount of E-Money from time to time held by you in the Mobile Money Provider’s System;\nMobile Money means the money transfer and payments service operated by the Mobile Money Providers in Kenya;\nMobile Network Operator means a mobile network operator in Kenya registered with the Communications Authority of Kenya;\nMobile Money Provider means a Mobile Network Operator that has been duly authorized by the Central Bank of Kenya under applicable law to offer Mobile Money Services in Kenya;\nMobile Money Service means the money transfer and payments service provided by the Mobile Money Providers through the Mobile Money System;\nMobile Money System means the system operated by the Mobile Money Providers in Kenya for the provision of the Mobile Money Service;\nNetwork means a mobile cellular network operated by a Mobile Network Operator;\nPrivacy Policy means the DIL privacy policy that sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us;\nRequest means a request or instruction received by DIL from you or purportedly from you through the Network and the System and upon which DIL is authorised to act;\nServices shall include any form of financial services or products that DIL may offer you pursuant to this Agreement and as you may from time to time subscribe to and “Service” shall be construed accordingly;\nSIM Card means the subscriber identity module which when used with the appropriate mobile phone handset enables you to access the Network and to use the Mobile Money Account;\nSMS means a short message service consisting of a text message transmitted from your mobile phone to another;\nSystem means DIL\'s electronic communications software enabling you to communicate with DIL for purposes of the Services. The System and the Services will for the purpose of this Agreement be accessed through a Mobile Network Operator’s System;\nTechnology has the meaning given to it in clause 3.1.4; and\nTransaction Fees includes any fees and charges payable for the use of the Services as published by DIL on DIL\'s website or by such other means as DIL shall in its sole discretion determine. Transaction Fees are subject to change at any time at DIL’s sole discretion'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '1.2 Interpretation',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '1.2.1 In addition to the definitions in clause 1.1, unless the context requires otherwise: the singular shall include the plural and vice versa;\n1.2.2 a reference to any one gender, whether masculine, feminine or neuter, includes the other two.\n1.2.3 All the headings and sub-headings in this Agreement are for convenience only and are not to be taken into account for the purposes of interpretation of this Agreement.\n1.2.4 The recitals and schedules shall be deemed to form part of this Agreement.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '2. ACCEPTANCE OF TERMS AND CONDITIONS',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '2.1 You must carefully read and understand the Terms and Conditions set out in this Agreement and as amended from time to time by DIL (the Terms and Conditions) before downloading or streaming the App or opening an account with DIL which will govern the use and operation of the App and the Account.\n2.2 After downloading the App, you will be deemed to accept the Terms and Conditions upon clicking the “Accept” option on DIL\'s System asking you to confirm that you have read, understood and agreed to abide by the Terms and Conditions. If you do not agree with the Terms and Conditions please click the “Decline” option in DIL\'s System. Please note that you will not be able to access the Services if you decline the Terms and Conditions. If you do not agree to the Terms and Conditions, we will not license the App to you.\n2.3 By downloading the App and opening an Account with DIL, you agree to comply with and be bound by the Terms and Conditions governing the operation of the Account and you affirm that the Terms and Conditions herein are without prejudice to any other right that DIL may have with respect to the Account in law or otherwise.\n2.4 These Terms and Conditions may be amended or varied by DIL from time to time and the continued use of the Services constitutes your agreement to be bound by the terms of any such amendment or variation. DIL will take all reasonable measures to notify you of any changes.\n2.5 From time to time updates to the App may be issued through the website. Depending on the update, you may not be able to use the Services until you have downloaded or streamed the latest version of the App and accepted any new terms and conditions.\n2.6 By using the App or any of the Services, you consent to us collecting and using technical information about the Equipment and related software, hardware and peripherals for Services that are internet-based or wireless to improve our products and to provide any Services to you. If you use these Services, you consent to us and our affiliates\' and licensees\' transmission, collection, retention, maintenance, processing and use of your data to determine our credit scoring services or to improve our Services and/or your experience while using the App.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '3. GRANT AND SCOPE OF LICENCE',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '3.1 In consideration of you agreeing to abide by the terms of this Agreement, we grant you a non-transferable, non-exclusive licence to use the App on your Equipment, subject to these Terms and Conditions. We reserve all other rights. Except as expressly set out in this Agreement or as permitted by any local law, you agree:\n3.1.1 not to rent, lease, sub-license, loan, translate, merge, adapt, vary or modify the App;\n3.1.2 not to make alterations to, or modifications of, the whole or any part of the App, or permit the App or any part of it to be combined with, or become incorporated in, any other programs;\n3.1.3 not to disassemble, decompile, reverse-engineer or create derivative works based on the whole or any part of the App or attempt to do any such thing except to the extent that such actions cannot be prohibited because they are essential for the purpose of achieving inter-operability of the App with another software program, and provided that:\n3.1.3.1 the information obtained by you during such activities is not unnecessarily disclosed or communicated without our prior written consent to any third party; and is not used to create any software that is substantially similar to the App;\n3.1.3.2 you include our copyright notice on all entire and partial copies you make of the App on any medium; not to provide or otherwise make available the App in whole or in part (including object and source code), in any form to any person without prior written consent from us; and\n3.1.4 to comply with all technology control or export laws and regulations that apply to the technology used or supported by the App or any Service (the Technology).'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '4. TOGETHER LICENCE RESTRICTIONS',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '4.1 You must:\n4.1.1 not use the App or any Service in any unlawful manner, for any unlawful purpose, or in any manner inconsistent with this Agreement, or act fraudulently or maliciously, for example, by hacking into or inserting malicious code, including viruses, or harmful data, into the App, any Service or any operating system;\n4.1.2 not infringe our intellectual property rights or those of any third party in relation to your use of the App or any Service, including the submission of any material (to the extent that such use is not licensed by this Agreement);\n4.1.3 not transmit any material that is defamatory, offensive or otherwise objectionable in relation to your use of the App or any Service;\n4.1.4 not use the App or any Service in a way that could damage, disable, overburden, impair or compromise our systems or security or interfere with other users; and\n4.1.5 not collect or harvest any information or data from any Service or our systems or attempt to decipher any transmissions to or from the servers running any Service.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '5. TOGETHER ACCEPTABLE USE RESTRICTIONS',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '5.1 INTELLECTUAL PROPERTY RIGHTS\n5.1.1 You acknowledge that all intellectual property rights in the App and the Technology anywhere in the world belong to us or our licensors, that rights in the App are licensed (not sold) to you, and that you have no rights in, or to, the App or the Technology other than the right to use each of them in accordance with the terms of this Agreement. You acknowledge that you have no right to have access to the App in source-code form.\n5.2 USE OF THE SERVICES\n5.2.1 The Services offered by DIL can only be utilized by persons over the age of 18. DIL reserves the right to verify the authenticity and status of your Mobile Money Account with the relevant Mobile Money Provider.\n5.2.2 DIL\'s acceptance of your application for an Account will be displayed on the App. You hereby acknowledge and accept that the acceptance by DIL of your application for an Account does not create any contractual relationship between you and the Mobile Money Providers beyond the terms and conditions that apply to your Mobile Money Account from time to time.\n5.2.3 DIL reserves the right to decline your application for a loan or to revoke the same at any stage at DIL’s sole and absolute discretion and without assigning any reason or giving any notice thereto.\n5.2.4 DIL reserves the right (in its sole and absolute discretion) to issue, decline to issue a loan and/or vary the terms of any loan depending on its assessment of the credit profile of each individual borrower from time to time. The terms of the loan and the interest rate payable in relation to each loan application will be displayed on the App.\n5.3 PERSONAL INFORMATION\n5.3.1 You hereby agree and authorise DIL to verify information provided by you to DIL against the information held by the Mobile Money Providers in relation to your Mobile Money Account pursuant to the agreement between you and the relevant Mobile Money Provider for the provision of its products and services and the Mobile Money Service.\n5.3.2 The information that DIL may verify against the information held by the Mobile Money Providers includes (without limitation): your phone number, name, date of birth, Identification Number (“ID”) or Passport Number and such other information that will enable DIL to identify you and comply with the regulatory “Know Your Customer” requirements (together the “Personal Information”).\n5.3.3 You hereby agree and authorise DIL to verify information including, but not limited to, data relating to your phone (including, without limitation, your phone’s history) from your Equipment, from any SMS sent to you by the Mobile Money Providers and any financial services providers relating to your use of the Mobile Money Service and such other information as DIL shall require for purposes of providing you the Services (the “Relevant Information”).\n5.3.4 You hereby consent to DIL verifying the Personal Information and the Relevant Information with the Mobile Money Providers and using of the Personal Information and the Relevant Information to the extent necessary in the opinion of DIL.\n5.3.5 You hereby agree and authorise DIL to obtain and procure your Personal Information and Relevant Information from your respective Mobile Money Provider and you further agree and consent to the disclosure and provision of such Personal Information by the Mobile Money Provider and further to indemnify and hold DIL and the Mobile Money Provider harmless with respect to any claims, losses, liabilities and expenses (including legal fees and expenses) that may arise as a result of the disclosure and reliance on such Personal Information and/or Relevant Information.\n5.3.6 You hereby agree and authorise DIL to obtain and procure your Personal Information from the Credit Reference Bureaus and you further agree and consent to the disclosure and provision of such Personal Information by the Credit Reference Bureaus.\n5.3.7 DIL reserves the right to request for further information from you pertaining to your application for an Account at any time. Failure to provide such information within the time required by DIL may result in DIL declining to accept your application for an Account.\n5.3.8 DIL reserves the right to supply consumer credit information to the Credit Reference Bureaus, and in this regard: you confirm that DIL may transmit to the Credit Reference Bureaus data about the App, opening and termination of an Account by you;\n5.3.9 you acknowledge that information on non-compliance with the Terms and Conditions of this Agreement is transferred to the Credit Reference Bureaus; and\n5.3.10 the Credit Reference Bureaus provide a credit profile and possibly credit scores on your creditworthiness, subject to the credit record.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '6. REQUESTS MADE BY THE BORROWER',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '6.1 You hereby irrevocably authorise DIL to act on all Requests received by DIL from you (or purportedly from you) through the System and to hold you liable in respect thereof. DIL may nevertheless refuse to carry out any Requests in its sole and absolute discretion.\n6.2 Subject to its discretion, DIL reserves the right to reject any Request in relation to a loan application from you even if you have previously been issued with a loan by DIL.\n6.3 DIL shall be entitled to accept and to act upon any Request, even if that Request is otherwise for any reason incomplete or ambiguous if, in its absolute discretion, DIL believes that it can correct the incomplete or ambiguous information in the Request without any reference to you being necessary.\n6.4 DIL shall be deemed to have acted properly and to have fully performed all the obligations owed to you notwithstanding that the Request may have been initiated, sent or otherwise communicated in error or fraudulently, and you shall be bound by any Requests on which DIL may act if DIL has in good faith acted in the belief that such instructions have been sent by you.\n6.5 DIL may, in its absolute discretion, decline to act on or in accordance with the whole or any part of your Request pending further enquiry or further confirmation (whether written or otherwise) from you.\n6.6 You agree to and shall release from and indemnify DIL against all claims, losses, damages, costs and expenses howsoever arising in consequence of, or in any way related to DIL having acted in accordance with the whole or any part of any of your Requests (or failed to exercise) the discretion conferred upon it.\n6.7 You acknowledge that to the full extent permitted by law DIL shall not be liable for any unauthorised drawing, transfer, remittance, disclosure, any activity or any incident on your account by the fact of the knowledge and/or use or manipulation of your Account PIN, password, ID or any means whether or not occasioned by your negligence.\n6.8 DIL is authorised to effect such orders in respect of your Account as may be required by any court order or competent authority or agency under the applicable laws.\n6.9 In the event of any conflict between any terms of any Request received by DIL from you and this Agreement, this Agreement shall prevail.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '7. INTEREST AND FEES',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '7.1 The interest payable by you to DIL in relation any Loan shall be displayed by DIL on the App. DIL shall be entitled to set and charge Transaction Fees, in connection with your use of the Services and from time to time amend or vary its Transaction Fees for the Services.. If DIL decides to start charging Transaction Fees or where already applicable, vary or amend its Transaction Fees, the Transaction Fees payable on any new application for Services will be displayed on the App. DIL will use reasonable endeavors to try notify you of any changes in relation to Transaction Fees within a reasonable period before such changes are implemented including displaying notices of the changes on the App or DIL website.\n7.2 All payments to be made by you under this Agreement shall be made in full without any set off or counter claim and save in so far as required by the law to the contrary, free and clear of and without any deduction or withholding whatsoever. If you are at any time required to make any deduction or withholding from any payment to DIL you shall immediately pay to DIL such additional amounts as will result in DIL receiving the full amount it would have received had no such deduction or withholding been required.\n7.3 If you fail to make any payments due to DIL at the due date for payment, DIL will be authorised to apply late fees on such amount loaned to you at a rate to be communicated to you.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '8. STATEMENTS',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '8.1 A statement and activity report in respect of your Account will be made available on Request. Requests shall be made via our e-mail address: support@dojo.co or via a contact link on the App.\n8.2 The statement on the App shall provide details of the last 4 (four) transactions (or such other number of transactions as determined by DIL) in your Account initiated from your Equipment.\n8.3 Your statement will show all amounts added or taken from your Account. You must check your statement carefully and notify DIL as soon as possible if it includes any transaction or other entry which appears to you to be wrong or not made in accordance with your instructions.\n8.4 DIL reserves the right to rectify discrepancies, add and/or alter the entries in your statements, without prior notice to you. DIL will however inform you of any rectification, additions and or alterations effected on your statements within a reasonable time after the changes are effected.\n8.5 You will be notified of all transactions on your Account by way of SMS and the charges for this service will be debited to your Account.\n8.6 Save for a manifest error, a statement issued to you in respect of your Dojo Account shall be conclusive evidence of the transactions carried out on your Dojo Account for the period covered in the statement.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '9. TAXES',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '9.1 All payments to be made by you in connection with these Terms and Conditions are calculated without regard to any taxes payable by you. If any taxes are payable in connection with the payment, you must pay DIL an additional amount equal to the payment multiplied by the appropriate rate of tax. You must do so at the same time as making the payment.\n9.2 You hereby consent and agree that DIL may withhold amounts in your Account if any tax authority requires DIL to do so, or DIL is otherwise required by law or pursuant to agreements with any tax authority to do so, or if DIL needs to comply with internal policies or with any applicable order or sanction of a tax authority.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '10. BORROWER’S RESPONSIBILITIES',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '10.1 You shall at your own expense provide and maintain in safe and efficient operating order your Equipment necessary for the purpose of accessing the System and the Services.\n10.2 You shall be responsible for ensuring the proper performance of your Equipment. DIL shall neither be responsible for any errors or failures caused by any malfunction of your Equipment, and nor shall DIL be responsible for any computer virus or related problems that may be associated with the use of the System, the Services and the Equipment. You shall be responsible for charges due to any service provider providing you with connection to the Network and DIL shall not be responsible for losses or delays caused by any such service provider.\n10.3 You shall follow all instructions, procedures and terms contained in this Agreement and any document provided by DIL concerning the use of the System and the Services.\n10.4 You hereby agree and acknowledge that you shall be solely responsible for the safekeeping and proper use of your Equipment and for keeping your Credentials secret and secure. You shall ensure that your Credentials do not become known or come into possession of any unauthorised person. DIL shall not be liable for any disclosure of your Credentials to any third party and you hereby agree to indemnify and hold DIL harmless from any losses resulting from any disclosure of your Credentials.\n10.5 You shall take all reasonable precautions to detect any unauthorised use of the System and the Services. To that end, you shall ensure that all communications from DIL are examined and checked by you or on your behalf as soon as practicable after receipt by you in such a way that any unauthorised use of and access to the System will be detected. You shall immediately inform DIL in the event that:\n10.5.1 You have reason to believe that your Credentials are or may be known to any person not authorised to know the same and/or have been compromised; and/or\n10.5.2 You have reason to believe that unauthorised use of the Services has or may have occurred or could occur and a transaction may have been fraudulently input or compromised.\n10.6 You shall at all times follow the security procedures notified to you by DIL from time to time or such other procedures as may be applicable to the Services from time to time. You acknowledge that any failure on your part to follow the recommended security procedures may result in a breach of your Account’s confidentiality. In particular, you shall ensure that the Services are not used or Requests are not issued or the relevant functions are not performed by anyone other than a person authorised to do so.\n10.7 You shall not at any time operate or use the Services in any manner that may be prejudicial to DIL.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '11. DEFAULT ON LOAN',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '11.1 An event of default (Event of Default) occurs when you:\n11.1.1 fail to pay any sum payable for a Loan granted under these Terms and Conditions for a period of ninety (90) consecutive days unless failure to pay is caused solely by an administrative error or technical problem; or are declared bankrupt.\n11.2 At any time after an Event of Default has occurred which is continuing, DIL may, without prejudice to any other right or remedy granted to it under any law:\n11.2.1 terminate this Agreement in accordance with clause 12 below;\n11.2.2 declare that the Loan (and all accrued interest and all other amounts outstanding under this Agreement is immediately due and payable, whereupon they shall become immediately due and payable; and\n11.2.3 supply information concerning the Event of Default to Credit Reference Bureaus. A copy of any adverse information concerning you sent to a Credit Reference Bureau shall be made available to you upon written request'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '12. VARIATION AND TERMINATION',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '12.1 DIL may at any time, upon notice to you, terminate or vary its business relationship with you and close your Account and in particular but without prejudice to the generality of the foregoing DIL may cancel credits which it has granted and require the repayment of outstanding debts resulting from such credits within such time as DIL may determine.\n12.2 Without prejudice to DIL’s rights under clause 14.1, DIL may at its sole discretion suspend or close your Account:\n12.2.1 if you use the Account for unauthorised purposes or where DIL detects any abuse/misuse, breach of content, fraud or attempted fraud relating to your use of the Services;\n12.2.2 if your Account or agreement with a Mobile Network Operator is terminated for whatever reason;\n12.2.3 if DIL is required or requested to comply with an order or instruction of or a recommendation from the government, court, regulator or other competent authority;\n12.2.4 if DIL reasonably suspects or believes that you are in breach of these Terms and Conditions (including non-payment of any Loan amount due from you where applicable) which you fail to remedy (if remediable) within 14 days after the service of notice by email, SMS or other electronic means requiring you to do so;\n12.2.5 where such a suspension or variation is necessary as a consequence of technical problems or for reasons of safety; to facilitate update or upgrade the contents or functionality of the Services from time to time; where your Account becomes inactive or dormant;\n12.2.6 if DIL decides to suspend or cease the provision of the Services for commercial reasons or for any other reason as it may determine in its absolute discretion; or\n12.2.7 if you breach any of the Licence Restrictions or the Acceptable Use Restrictions.\n12.3 If your Account has a credit balance at any time as a result of overpayment of your Loan, you may issue a Request to DIL for payment of such credit balance and DIL will return any such balance to you, less any applicable fees, provided that such amount falls above the minimum transfer amounts specified by the relevant Mobile Money Provider.\n12.4 Termination shall however not affect any accrued rights and liabilities of either party.\n12.5 If DIL receives notice of your demise, DIL will not be obliged to allow any operation or withdrawal from your Account by any person except upon production of administration letters from a competent authority or confirmed grant of letters of administration or confirmed grant of probate by your legal representatives duly appointed by a court of competent jurisdiction.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '13. EXCLUSION OF LIABILITY',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '13.1 DIL shall not be responsible for any loss suffered by you should the Services be interfered with or be unavailable by reason of the failure of any of your Equipment, or any other circumstances whatsoever not within DIL’s control including , without limitation, Force Majeure or error, interruption, delay or non- availability of the System, terrorist or any enemy action equipment failure, loss of power, adverse weather or atmospheric conditions, and failure of any public or private telecommunications system.\n13.2 You acknowledge that the App has not been developed to meet your individual requirements, and that it is therefore your responsibility to ensure that the facilities and functions of the App as described meet your requirements.\n13.3 We only supply the App for domestic and private use. You agree not to use the App and Documents for any commercial, business or resale purposes, and we have no liability to you for any loss of profit, loss of business, business interruption, or loss of business opportunity.\n13.4 DIL will not be liable for any losses or damage suffered by you as a result of or in connection with:\n13.4.1 any defect or fault in the App or any Service resulting from you having altered or modified the App;\n13.4.2 any defect or fault in the App resulting from you having used the App in breach of the terms of this Agreement;\n13.4.3 your breach of any of the Licence Restrictions or the Acceptable Use Restrictions;\n13.4.4 unavailability of sufficient funds in your Mobile Money Account;\n13.4.5 failure, malfunction, interruption or unavailability of the System, your Equipment, the Network or a Mobile Money System; the money in your Account being subject to legal process or other encumbrance restricting payments or transfers thereof; your failure to give proper or complete instructions for payments or transfers relating to your Account;\n13.4.6 any fraudulent or illegal use of the Services, the System and/or your Equipment; or\n13.4.7 your failure to comply with these Terms and Conditions and any document or information provided by DIL concerning the use of the System and the Services.\n13.5 If for any reason other than a reason mentioned in clauses 13.1 to 13.4, the Services are interfered with or unavailable,DIL’s sole liability under this Agreement in respect thereof shall be to re-establish the Services as soon as reasonably practicable.\n13.6 Save as provided in clause 13.5, DIL shall not be liable to you for any interference with or unavailability of the Services, howsoever caused.\n13.7 Under no circumstances shall DIL be liable to you for any loss of profit or anticipated savings or for any indirect or consequential loss or damage of whatever kind, howsoever caused, arising out of or in connection with the Services even where the possibility of such loss or damage is notified to DIL.\n13.8 All warranties and obligations implied by law are hereby excluded to the fullest extent permitted by law.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '14. INDEMNITY',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '14.1 In consideration of DIL complying with your instructions or Requests in relation your Account, you undertake to indemnify DIL and hold it harmless against any loss, charge, damage, expense, fee or claim which DIL suffers or incurs or sustains thereby and you absolve DIL from all liability for loss or damage which you may sustain from DIL acting on your instructions or requests or in accordance with these Terms and Conditions.\n14.2 The indemnity in clause 14.1 shall also cover the following:\n14.2.1 All demands, claims, actions, losses and damages of whatever nature which may be brought against DIL or which it may suffer or incur arising from its acting or not acting on any Request or arising from the malfunction or failure or unavailability of any hardware, software, or equipment, the loss or destruction of any data, power failures, corruption of storage media, natural phenomena, riots, acts of vandalism, sabotage, terrorism, any other event beyond DIL’s control, interruption or distortion of communication links or arising from reliance on any person or any incorrect, illegible, incomplete or inaccurate information or data contained in any Request received by DIL.\n14.2.2 Any loss or damage that may arise from your use, misuse, abuse or possession of any third party software, including without limitation, any operating system, browser software or any other software packages or programs.\n14.2.3 Any unauthorised access to your Account or any breach of security or any destruction or accessing of your data or any destruction or theft of or damage to any of your Equipment.\n14.2.4 Any loss or damage occasioned by the failure by you to adhere to these Terms and Conditions and/or by supplying of incorrect information or loss or damage occasioned by the failure or unavailability of third party facilities or systems or the inability of a third party to process a transaction or any loss which may be incurred by DIL as a consequence of any breach by these Terms and Conditions.\n14.2.5 Any damages and costs payable to DIL in respect of any claims against DIL for recompense for loss where the particular circumstance is within your control.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '15. COMMUNICATION BETWEEN US',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '15.1 If you wish to contact us in writing, or if any condition in these Terms and Conditions requires you to give us notice, you can send this to us by e-mail to support@dojo.co or to such e-mail address that may be communicated to you from time to time. We will confirm receipt of this by contacting you in writing by e-mail.\n15.2 If we have to contact you or give you notice in writing, we will do so by e-mail or by sms to the mobile phone number or email address you provide to us in your request for the App.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '16. GENERAL',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '16.1 Remedies Cumulative\n16.1.1 No failure on the part of any party to exercise, or delay on its part in exercising, any right, power or remedy provided by this Agreement or by law shall operate as a waiver thereof, nor shall any single or partial exercise of any such right, power or remedy preclude any further or other exercise of that, or any other, right, power or remedy.\n16.2 No waiver\n16.2.1 No failure by DIL to exercise, and no delay in exercising, any right or remedy in respect of any provision of this Agreement shall operate as a waiver of such right or remedy.\n16.3 Effect of invalidity\n16.3.1 If any provision or part of a provision of this Agreement shall be, or be found by any court of competent jurisdiction to be, invalid or unenforceable, such invalidity or unenforceability shall not affect the other provisions or parts of such provisions of this Agreement, all of which shall remain in full force and effect.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '17. ENTIRE AGREEMENT',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '17.1 These Terms and Conditions and our Privacy Policy constitute the entire agreement between you and us and supersede and extinguish all previous agreements, promises, assurances, warranties, representations and understandings between us, whether written or oral, relating to its subject matter.\n17.2 You acknowledge that in entering into this Agreement you do not rely on any statement, representation, assurance or warranty (whether made innocently or negligently) that is not set out in these Terms and Conditions or our Privacy Policy.\n17.3 You and we agree that neither of us shall have any claim for innocent or negligent misrepresentation or negligent misstatement based on any statement in this Agreement.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '18. DISPUTE RESOLUTION',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '18.1 Disputes\n18.1.1 The Parties shall use their good faith efforts to resolve any dispute, controversy or claim of any nature whatsoever arising out of or in relation to or in connection with this Agreement. To this end, the Parties in dispute shall each promptly appoint representatives of appropriate standing who shall meet and attempt to resolve any dispute between them. In the event that an amicable settlement has not been reached within thirty (30) days of the parties’ representatives meeting as aforesaid, the following provisions of this clause 20 shall apply.\n18.2 Arbitration\n18.2.1 Any dispute, difference or question whatsoever and howsoever arising out of or in connection with this Agreement, save as specifically provided herein, shall be referred for final determination to a single arbitrator to be appointed by agreement between the parties hereto or in default of any such agreement within seven (7) days of the notification of any dispute by either party to the other then, upon application by either party, by the Chairman for the time being of the Kenya Branch of the Chartered Institute of Arbitrators (“Institute”).\n18.2.2 Such arbitration shall take place in Nairobi and shall be conducted in accordance with the Rules of Arbitration of the Institute.\n18.2.3 To the extent permissible by law the determination of the arbitrator shall be final and binding upon the Parties and shall not be subject to any appeal.\n18.2.4 Nothing in this clause 20.2 shall restrict either Party’s freedom to commence legal proceedings of any nature for the purposes of seeking preliminary injunctive relief or interim or conservatory measures from any court of competent jurisdiction pending the final decision or award of any arbitrator.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '19. GOVERNING LAW',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '19.1 This Agreement shall be governed by and construed in accordance with the laws of Kenya.'),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              '20. DIL’s PRIVACY POLICY',
              style:
                  GoogleFonts.prompt(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
                '20.1 We only use your personal information in accordance with our Privacy Policy. Please take the time to read our Privacy Policy, as it includes important terms which apply to you.\n20.2 Upon downloading the App and clicking the “Accept” option with respect to these Terms and Conditions, you will be deemed to have accepted DIL’s Privacy Policy, a copy of which is available on the App.'),
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              width: size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 70,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                            color: const Color(0xFF5113AA),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.check,
                                color: Colors.white,
                                size: 17,
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Text('Accept',
                                  style: GoogleFonts.prompt(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white)),
                            ],
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await _auth.signOut();
                     Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) => SignScreen()));
                    },
                    child: Container(
                        height: 70,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                            color: const Color(0xFF5113AA),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.times,
                                color: Colors.white,
                                size: 17,
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Text('Reject',
                                  style: GoogleFonts.prompt(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white)),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }
}
