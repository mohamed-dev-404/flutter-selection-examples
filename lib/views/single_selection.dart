import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:selections_examples/widgets/custom_send_button.dart';

class SingleSelection extends StatefulWidget {
  const SingleSelection({super.key});

  @override
  State<SingleSelection> createState() => _SingleSelectionState();
}

class _SingleSelectionState extends State<SingleSelection> {
  final List<Map<String, String>> options = [
    {
      'optionName': 'Lion',
      'optionImage': 'assets/images/animals/lion.png',
    },
    {
      'optionName': 'Cow',
      'optionImage': 'assets/images/animals/cow.png',
    },
    {
      'optionName': 'Deer',
      'optionImage': 'assets/images/animals/deer.png',
    },
    {
      'optionName': 'Giraffe',
      'optionImage': 'assets/images/animals/giraffe.png',
    },
    {
      'optionName': 'Pigeon',
      'optionImage':
          'assets/images/animals/pingeon.png', // note: your file name has a typo
    },
    {
      'optionName': 'Rat',
      'optionImage': 'assets/images/animals/rat.png',
    },
    {
      'optionName': 'Tiger',
      'optionImage': 'assets/images/animals/tiger.png',
    },
    {
      'optionName': 'White tiger',
      'optionImage': 'assets/images/animals/white-tiger.png',
    },
  ];
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Selection Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: options.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: .75,
            crossAxisSpacing: 12,
            mainAxisSpacing: 24,
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            final option = options[index];
            bool isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Stack(
                children: [
                  isSelected
                      ? Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.black12,
                                Colors.black26,
                                Colors.black38,
                              ],
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                  Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          fit: BoxFit.cover,
                          option['optionImage']!,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        option['optionName']!,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  isSelected
                      ? Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: InkWell(
                            onTap: () {
                              AwesomeDialog(
                                context: context,
                                btnOkColor: Colors.pinkAccent,
                                dialogType: DialogType.success,
                                animType: AnimType.bottomSlide,
                                titleTextStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                                title: 'Done!',
                                desc: 'Your gift has been sent successfully.',
                                btnOkOnPress: () {},
                              ).show();
                              setState(() {
                                selectedIndex = -1;
                              });
                            },
                            child: const CustomSendButton(),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
