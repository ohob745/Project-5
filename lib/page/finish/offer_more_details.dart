import 'package:flutter/material.dart';

class OfferMoreDetails extends StatelessWidget {
  const OfferMoreDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset("assets/image/AMC-Sharing-Combo_ARB_735px_525px.jpg"),
              const Text("كومبو المشاركة",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              const Text("احصل على كومو المشاركة بسعر 239 ريال",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  onPressed: () {},
                  child: const Text(
                    "أوقات العرض",
                    style: TextStyle(color: Colors.white),
                  )),
              Divider(
                color: Colors.grey.shade800,
                endIndent: 10,
                indent: 10,
                thickness: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("تفاصيل الكومبو",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/image/nav_bar/offers_icon.ico",
                      color: Colors.white, width: 40, height: 40),
                ],
              ),
              const Text("العرض يتضمن التالي:",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("4 تذاكر للتجربة الأساسية",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              const Text("2 فشار وسط (1 كراميل + 1 ملح)",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              const Text("4 مشروبات غازية صغيرة",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              const Text("1 كلاسيك ناتشوز",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade800,
                endIndent: 10,
                indent: 10,
                thickness: 3,
              ),
              const Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("الشروط و الأحكام",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "العرض خاص لجميع اعضاء برنامج دائرة اي ام سي سينما فقط.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "العرض ساري خلال أيام الأسبوع ولايشمل نهاية الأسبوع.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "يجب تطبيق العرض قبل اختيار المقاعد للاستفادة من العرض",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("ينطبق العرض على التجربة الأساسية.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "لا يمكن الجمع بين هذا العرض وعروض أو خصومات أخرى.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "يجب على الضيف تحديد (4) مقاعد للإستفادة من العرض.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "اي مقاعد إضافية سيتم حساب قيمتها بسعرها الأساسي مباشرة أثناء عملية الدفع.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "اي مشروبات ومأكولات إضافية سيتم حساب قيمتها بسعرها الأساسي مباشرة أثناء عملية الدفع.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "العرض غير قابل للإسترجاع، او الإستبدال لعرض اخر.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "تطبق جميع الشروط والأحكام العامة الخاصة بالسينما والخاضعة للهيئة العامة لتنظيم الإعلام.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("تطبق الشروط والأحكام.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade800,
                endIndent: 10,
                indent: 10,
                thickness: 3,
              ),
              Row(
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.blue)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "عودة إلى العروض",
                        style: TextStyle(color: Colors.blue),
                      )),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.red)),
                      onPressed: () {},
                      child: const Text(
                        "أوقات العرض",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
