import 'package:flutter/material.dart';
import 'package:shop_app/widgets/products_grid.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOveriewScreen extends StatefulWidget {
  ProductsOveriewScreen({Key key}) : super(key: key);

  @override
  State<ProductsOveriewScreen> createState() => _ProductsOveriewScreenState();
}

class _ProductsOveriewScreenState extends State<ProductsOveriewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: FilterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FilterOptions.All,
              ),
            ],
          ),
        ],
      ),
      body: ProductGrid(_showOnlyFavorites),
    );
  }
}
