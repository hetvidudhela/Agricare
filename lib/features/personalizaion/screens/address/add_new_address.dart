import 'package:demo/common/widgets/appbar/appbar.dart';
import 'package:demo/utils/constans/colors.dart';
import 'package:demo/utils/constans/size.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 35, 35, 35),
                              width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 15, 14, 14),
                              width: 1)),
                      labelText: 'Name',
                      labelStyle:
                          const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                      prefixIcon: const Icon(Iconsax.user)),
                ),
                const SizedBox(
                  height: TSize.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 35, 35, 35),
                              width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 15, 14, 14),
                              width: 1)),
                      labelText: 'Phone no',
                      labelStyle:
                          const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                      prefixIcon: const Icon(Iconsax.mobile)),
                ),
                const SizedBox(
                  height: TSize.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 35, 35, 35),
                              width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 15, 14, 14),
                              width: 1)),
                      labelText: 'Street',
                      labelStyle:
                          const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                      prefixIcon: const Icon(Iconsax.building_31)),
                ),
                const SizedBox(
                  height: TSize.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 35, 35, 35),
                              width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 15, 14, 14),
                              width: 1)),
                      labelText: 'Postal code',
                      labelStyle:
                          const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                      prefixIcon: const Icon(Iconsax.code)),
                ),
                const SizedBox(
                  height: TSize.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 35, 35, 35),
                                    width: 1)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 15, 14, 14),
                                    width: 1)),
                            labelText: 'City',
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 12, 0, 0)),
                            prefixIcon: const Icon(Iconsax.buliding)),
                      ),
                    ),
                    const SizedBox(
                      width: TSize.spaceBtwInputFields,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 35, 35, 35),
                                    width: 1)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 15, 14, 14),
                                    width: 1)),
                            labelText: 'State',
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 12, 0, 0)),
                            prefixIcon: const Icon(Iconsax.activity)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSize.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 35, 35, 35),
                              width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 15, 14, 14),
                              width: 1)),
                      labelText: 'Country',
                      labelStyle:
                          const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                      prefixIcon: const Icon(Iconsax.global)),
                ),
                const SizedBox(
                  height: TSize.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: TColors.primary),
                      child: const Text('Save')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
