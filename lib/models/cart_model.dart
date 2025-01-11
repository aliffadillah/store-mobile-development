import '../controllers/item_controller.dart';

import 'item_model.dart';

class Cart {
  final String? clientName;
  Map<String, double> cartMap = {};

  Cart({this.clientName, required this.cartMap});

  bool addtoCart(Item item) {
    for (var element in cartMap.keys) {
      if (element == item.name) {
        return false;
      }
    }
    cartMap[item.name] = item.price;
    return true;
  }

  void deleteAll() {
    cartMap.clear();
  }

  void deleteItem(Item item) {
    cartMap.remove(item.name);
  }

  double calculateCart(Cart cart) {
    double totalPrice = 0;
    double discount = 0;
    List<String> itemNames = cart.cartMap.keys.toList();

    // Verifica se há pelo menos um sanduíche no carrinho
    bool hasSandwich = itemNames.any((itemName) =>
        itemName == "X-Burger" || itemName == "Nasi Padang" || itemName == "Pizza" || itemName == "Lasagna");

    // Se houver pelo menos um sanduíche, calcula o preço total
    if (hasSandwich) {
      for (int i = 0; i < itemNames.length; i++) {
        String itemName = itemNames[i];
        Item item = getItemByName(itemName);
        totalPrice += item.price;
      }

      bool hasFries = itemNames.contains("Kentang Goreng");
      bool hasSoftDrink = itemNames.contains("Coca Cola");
      bool hasTea = itemNames.contains("Es Teh");
      bool hasMilo = itemNames.contains("Es Milo");
      if (hasFries && hasSoftDrink) {
        discount = totalPrice * 0.20;
      } else if (hasFries) {
        discount = totalPrice * 0.15;
      } else if (hasSoftDrink) {
        discount = totalPrice * 0.10;
      } else if (hasTea) {
        discount = totalPrice * 0.5;
      } else if (hasMilo) {
        discount = totalPrice * 0.5;
      }
    }

    totalPrice -= discount;
    return totalPrice;
  }

// Função auxiliar para obter um item pelo nome
  Item getItemByName(String itemName) {
    Item item;
    if (itemName == "X-Burger" ||
        itemName == "Nasi Padang" ||
        itemName == "Pizza" ||
        itemName == "Lasagna") {
      item = ItemController()
          .food
          .firstWhere((item) => item.name == itemName);
    } else {
      item =
          ItemController().extras.firstWhere((item) => item.name == itemName);
    }
    return item;
  }
}
