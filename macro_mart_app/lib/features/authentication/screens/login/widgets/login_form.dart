import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
class MLoginForm extends StatelessWidget {
  const MLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: MSizes.spaceBtwSections),
          child: Column(
            children: [
              /// Email
              TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: MTexts.email),
              ),
              SizedBox(height: MSizes.spaceBtwInputFields,),
              /// Password
              TextFormField(
                decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check), labelText: MTexts.password,suffixIcon: Icon(Iconsax.eye_slash)),
              ),
              SizedBox(height: MSizes.spaceBtwInputFields / 2,),

              ///Remember Me & Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///Remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text(MTexts.rememberMe),
                    ],
                  ),

                  ///Forget Password
                  TextButton(onPressed: () {},
                      child: Text(MTexts.forgetPassword))
                ],
              ),
              SizedBox(height: MSizes.spaceBtwSections,),

              /// Sign In Button
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text(MTexts.signIn))),

              SizedBox(height: MSizes.spaceBtwItems,),

              /// Create Accept Button
              SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: Text(MTexts.createAccount)),),
            ],
          ),
        )
    );
  }
}