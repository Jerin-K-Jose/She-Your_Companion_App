import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffEFE1F5),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height / 2.1,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/blogsleep.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: size.width,
              height: size.height / 2.1,
              margin: EdgeInsets.only(bottom: 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text('How to get Quality Sleep',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: SingleChildScrollView(
                        child: Text(
                          textcontent,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String textcontent =
      """Women with PCOS (polycystic ovary syndrome) may struggle with getting good quality sleep. Sleep plays a critical role in managing some symptoms of PCOS as well as your overall health.Experts believe that women with PCOS may be at higher risk for sleep disturbance because of metabolic changes, especially glucose (sugar) metabolism. Insulin is a hormone that allows our cells to use glucose to produce energy. But sometimes, cells become resistant – they don’t allow insulin to do its job effectively. This is pretty common in women with PCOS and may affect sleep patterns. 

PCOS is also marked by a hormonal imbalance which may lead to weight gain, fatigue, unwanted hair growth, mood changes, and sleep concerns. In one study, PCOS patients were 30 times more likely to suffer from disordered breathing during sleep. Many women with PCOS also often complain of excessive daytime sleepiness (EDS) even without a diagnosis of disordered breathing. 
Since women with PCOS may not get good quality sleep, this can lead to EDS. Women with EDS complain of reduced productivity, making more mistakes, and having lapses in judgment. They also report feeling less able to participate in activities and less joy when participating. 

One of the reasons some women with PCOS may struggle with quality sleep is obstructive sleep apnea (OSA). OSA is a disorder causing repeated brief interruptions in breathing during sleep because the muscles in the throat are not able to properly keep the airway open. Besides the symptoms of EDS, those with OSA also are more likely to have a number of metabolic complications.  

Restful sleep is vital for your well-being, especially with PCOS 

Healthy sleep patterns can help support mental health, immune health, healthy blood sugar levels, and may even make it easier to maintain a healthy, balanced diet.  

Improving sleep quality can help women with PCOS manage their symptoms.

Strategies for Women with PCOS to Support Healthy Sleep 
No matter the reason for your sleep disturbance, it is important to explore ways that you can get better quality sleep to support your overall wellbeing. 

1. Check out online resources for help. 
There are a variety of great resources online to help manage PCOS and sleep. Check out this blog article for guidelines on how much sleep you need and strategies for getting better, more restful sleep.   

2. Maintain healthy sleep hygiene habits   
Healthy sleep hygiene habits can support healthy sleep patterns and help you feel well-rested each morning. Some suggestions for how to naturally improve your sleep hygiene include: 

Limit alcohol, food, and drink close to bedtime 
Avoid caffeine after your morning cup of coffee 
Sleep in a cool, dark room 
Limit screen time at bedtime 
3. Participate in regular exercise. 
Those who exercise regularly tend to have a more restful sleep. 

Most healthcare experts recommend moderate intensity level exercise, which is an intensity effort of 5 to 6 on a scale of 0 to 10. 

The National Heart Lung and Blood Institute recommends getting started with activities that you like to do and finding ways to make them a part of your routine. Including friends and family and tracking your progress with a fitness app can be great motivators to get moving.  
4. Have a healthy bedtime snack. 
Did you know that certain dietary patterns can have an impact on your sleep? Research shows that certain foods, and combinations of foods, may affect your daytime alertness and your sleep quality. 

Angela Grassi of PCOS Nutrition Center recommends consuming a small protein-rich snack or beverage close to bedtime to help support healthy blood sugar levels throughout the night.  

Some great protein-rich bedtime snacks include nuts such as almonds and walnuts, sliced turkey, and cheese. You might also consider drinking some caffeine-free, herbal tea such as chamomile or passionflower. A cup of warm tea before bed can help relax your nerves and settle your mind. 

5. Seek treatment from a health professional. 
If you have sleep concerns, schedule a visit with your healthcare provider. Come prepared with a list of your symptoms and the number of hours you have been sleeping. Your physician may order a sleep study, which can help identify any sleep problems. The sleep study involves an overnight stay at a clinic where your healthcare team will evaluate your sleep state, eye movements, respiratory efforts, muscle activity, heart rate, and blood oxygen levels. 

Make sure you follow any recommendations provided by your physician.""";
}
