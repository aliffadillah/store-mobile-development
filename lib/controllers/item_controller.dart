import '../assets.dart';
import '../models/item_model.dart';

class ItemController {
  final List<Item> food = [
    Item(
      name: "X-Burger",
      price: 25000.00,
      image: AssetsPath.xBurger,
      description:
          "Burger lezat dengan roti, selada, tomat, daging, keju, mentimun, dan bawang bombay.",
    ),
    Item(
      name: "Nasi Padang",
      price: 20000.00,
      image: AssetsPath.naspad,
      description:
          "Hidangan tradisional Indonesia dari Sumatera Barat, terdiri dari nasi kukus yang disajikan dengan berbagai macam rasa",
    ),
    Item(
      name: "Pizza",
      price: 50000.00,
      image: AssetsPath.pizza,
      description: "Hidangan Italia yang terbuat dari bahan dasar roti pipih, ditaburi saus tomat, keju, dan berbagai topping seperti daging, sayuran, atau makanan laut, lalu dipanggang hingga sempurna.",
    ),
    Item(
      name: "Lasagna",
      price: 35000.00,
      image: AssetsPath.lasagna,
      description: "Hidangan panggang klasik Italia yang dibuat dengan lapisan lembaran pasta datar, saus daging atau sayuran yang kaya, béchamel krim, dan keju leleh",
    )
  ];
  final List<Item> extras = [
    Item(
      name: "Kentang Goreng",
      price: 12000.00,
      image: AssetsPath.kentanggoreng,
      description:
          "Kentang goreng yang lezat, dengan bahan-bahan pilihan dan dipanggang hingga titik yang tepat.",
    ),
    Item(
      name: "Coca Cola",
      price: 6000.00,
      image: AssetsPath.cocacola,
      description:
          "Minuman menyegarkan yang nikmat untuk melepas dahaga dan menemani camilan Anda.",
    ),
    Item(
      name: "Es Teh",
      price: 5000.00,
      image: AssetsPath.esteh,
      description:
      "Minuman menyegarkan yang terbuat dari teh yang diseduh disajikan dingin di atas es, sering kali diberi pemanis dan terkadang dibumbui dengan lemon atau buah-buahan lainnya.",
    ),
    Item(
      name: "Es Milo",
      price: 8000.00,
      image: AssetsPath.esmilo,
      description:
      "Minuman malt coklat dingin yang dibuat dengan bubuk Milo, air dingin atau susu, dan es.",
    ),
  ];
}
