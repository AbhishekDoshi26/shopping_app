import 'package:flutter/material.dart';
import 'package:test_project/home/models/product_response.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.productResponse,
  }) : super(key: key);
  
  final ProductResponse productResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productResponse.title,
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          print('Bought ${productResponse.id}, ${productResponse.title}');
        },
        child: Container(
          color: Colors.red,
          child: const Center(
            child: Text(
              'Buy Now',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          height: 50,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    productResponse.image,
                    height: 200,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 220,
                        child: Text(
                          productResponse.title,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${productResponse.price} /-',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Text(
                            '${productResponse.rating.rate} ⭐️',
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        thickness: 3,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        productResponse.description,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
