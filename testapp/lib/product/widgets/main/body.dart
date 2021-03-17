import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:testapp/product/provider/productMainProvider.dart';
import 'package:testapp/product/widgets/public/productGridView.dart';

final productMainProvider = ProductMainProvider;

class ProductMainBody extends ConsumerWidget {
  const ProductMainBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // watch(productMainProvider);
    return ProductGridView();
  }
}
