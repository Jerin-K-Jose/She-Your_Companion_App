import 'package:flutter/material.dart';

class DietSunday extends StatelessWidget {
  DietSunday({Key? key}) : super(key: key);

  List SundayDiet = [
    "Poha with Orange Juice",
    "Brown Rice Pulao with Raita",
    "Low Glycemic Fruits",
    "Chappati with Vegetable Kurma"
  ];

  List Daytime = ["Breakfast", "Lunch", "Snacks", "Dinner"];

  List Calories = ["225", "275", "52", "260"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Sunday Diet Plan',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                ),
              ],
            ),
          ),
          Container(
            width: 500,
            height: size.height * 0.6,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 350,
                          height: 160,
                          decoration: BoxDecoration(
                              //color: Color.fromRGBO(191, 109, 255, 0.5),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/sunday/img${index + 1}.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                  colorFilter: const ColorFilter.mode(
                                      Colors.white, BlendMode.overlay)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  Daytime[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  SundayDiet[index],
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  "Calories:${Calories[index]}",
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
