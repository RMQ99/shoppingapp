import 'package:flutter/material.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}
class _ProductGridState extends State<ProductGrid> {
  List<Map<String, dynamic>> products = [{
    'name' : "Spring Flowers" ,
    'image' : "https://beaudryflowers.ca/cdn/shop/products/novase_800x.jpg?v=1526705078" ,
    'liked' : false ,
  },
    {
      'name' : "Winter Flowers" ,
      'image' : "https://summerswintersg.com/cdn/shop/products/image_7ae955c4-4a38-45ee-96d0-0d1e4f134227.jpg?v=1650115607" ,
      'liked' : false ,
    },
    {
      'name' : "Summer Flowers" ,
      'image' : "https://basketeer.s3.ap-south-1.amazonaws.com/wp-content/uploads/2021/03/10213542/FWB21-001-1.jpg" ,
      'liked' : false ,
    },
    {
      'name' : "Autumn Flowers" ,
      'image' : "https://imagedelivery.net/3aWclJA3XiJCb-KKeyLo9Q/26d6ea2f-9cab-45a1-6d5d-9241020d1100/large" ,
      'liked' : false ,
    },
  ];
  void toggleLike(int index) {
    setState(() {
      products[index]['liked'] = !products[index]['liked'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          childAspectRatio: 0.7,
          ),

           itemCount:products.length ,
        itemBuilder: (context, index){
            final product = products[index];
            return Card(
              color: const Color.fromARGB(255, 239, 228, 232),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(12),),
                    child: Image.network(
                      product['image'],
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product['name'],
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        IconButton(onPressed: ()=> toggleLike(index),
                          icon: product['liked'] ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
                          color: product['liked'] ? Colors.red : Colors.grey ,
                        ),
                      ],
                    ),
                  ),
                 const Spacer(),
                 Column(
                   children: [
                     SizedBox(
                       width: double.infinity,
                       child: ElevatedButton(onPressed: (){},
                           style: ElevatedButton.styleFrom(
                             shape: const RoundedRectangleBorder(
                             borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(12),
                            ),
                           ),
                        backgroundColor: const Color.fromARGB(100, 218, 142, 168),
                       ),
                      child: const Text("Buy Now",
                      style: TextStyle(fontSize: 12,color: Colors.white),
                     ),
                     ),
                     ),
                   ],
                 ),
                ],
              ),
            );
        },
      ),
    );
  }
}
