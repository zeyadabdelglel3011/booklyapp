import 'package:booklyapp/core/utilities/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});


  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
            imageUrl: imageUrl,
        fit: BoxFit.fill,
          errorWidget: (context , url , error) => const Icon(Icons.error_outline),
          placeholder:(context , url)=> const Center(child: CircularProgressIndicator()),
          
          
        ),
      ),
    );
  }


}
