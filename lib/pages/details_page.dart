import 'package:endesha_groceries/helpers/app_colors.dart';
import 'package:endesha_groceries/models/category_part.dart';
import 'package:endesha_groceries/widgets/categoryicon.dart';
import 'package:endesha_groceries/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  int amount = 0;
  double price = 15.0;
  double cost = 0.0;

  var subCategory;
  DetailsPage({
    Key? key,
    required this.subCategory,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/' +
                              widget.subCategory.imageName +
                              '_desc.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.transparent
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryIcon(
                            color: widget.subCategory.color,
                            iconName: widget.subCategory.icon,
                            size: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Carne de cerdo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: widget.subCategory.color,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  '\$50.00 / lb',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 100,
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 15,
                        right: 15,
                        bottom: 8,
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.MAIN_COLOR,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 20,
                              offset: Offset.zero,
                            ),
                          ]),
                      child: Row(children: [
                        Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 15,
                        ),
                      ]),
                    ),
                  ),
                  MainAppBar(
                    themeColor: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Text('Seleccione la parte que desea:'),
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.subCategory.parts.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.subCategory.parts
                                    .forEach((CategoryPart part) {
                                  part.isSeleceted =
                                      widget.subCategory.parts[index] == part;
                                });
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(15),
                                  width: 120,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    border: widget.subCategory.parts[index]
                                            .isSeleceted
                                        ? Border.all(
                                            color: widget.subCategory.color,
                                            width: 7,
                                          )
                                        : null,
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/' +
                                          widget.subCategory.parts[index]
                                              .imageName +
                                          '.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset.zero,
                                        blurRadius: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 25),
                                  child: Text(
                                    widget.subCategory.parts[index].name,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: widget.subCategory.color,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Unidad: '),
                                TextSpan(
                                  text: 'Libra',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                    text: '(max 20)',
                                    style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset.zero,
                                color: Colors.black.withOpacity(0.1),
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: widget.amount < 20
                                    ? () {
                                        setState(() {
                                          widget.amount++;
                                          widget.cost =
                                              widget.price * widget.amount;
                                        });
                                      }
                                    : null,
                                child: const Icon(
                                  Icons.add_circle_outline,
                                  size: 50,
                                  color: AppColors.MEATS,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Center(
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: widget.amount.toString(),
                                            style:
                                                const TextStyle(fontSize: 40),
                                          ),
                                          const TextSpan(
                                            text: 'lbs.',
                                            style: TextStyle(fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: widget.amount > 0
                                    ? () {
                                        setState(() {
                                          widget.amount--;
                                          widget.cost =
                                              widget.price * widget.amount;
                                        });
                                      }
                                    : null,
                                child: const Icon(
                                  Icons.remove_circle_outline,
                                  size: 50,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            right: 20,
                            left: 20,
                            bottom: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(text: 'Precio: '),
                                    TextSpan(
                                      text: '\$${widget.price}/ lb',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '\$${widget.cost}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Material(
                          color: AppColors.MAIN_COLOR,
                          child: InkWell(
                            splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                            highlightColor:
                                AppColors.MAIN_COLOR.withOpacity(0.2),
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: const Text(
                                'Añadido al Carrito',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: AppColors.MAIN_COLOR,
                                  width: 4,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Material(
                          color: AppColors.DARK_GREEN,
                          child: InkWell(
                            splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                            highlightColor:
                                AppColors.MAIN_COLOR.withOpacity(0.2),
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              child: const Text(
                                'Locación del Producto',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: AppColors.DARK_GREEN,
                                  width: 4,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
