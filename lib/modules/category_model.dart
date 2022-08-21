import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imagUrl;
  const Category({required this.name, required this.imagUrl});
  @override
  List<Object> get props => [name, imagUrl];

  static const List<Category> categorys = [
    Category(
        name: "Techniques",
        imagUrl:
            'https://thumbs.dreamstime.com/b/techniques-word-cloud-techniques-word-cloud-business-concept-202532794.jpg'),
    Category(
        name: "Gamming",
        imagUrl:
            'https://cdn.vox-cdn.com/thumbor/y_8QDDrRhFD6ntasHlETY98dHfQ=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/16385004/acastro_190618_1777_cloud_gaming_0003.jpg'),
    Category(
        name: "MakeUp",
        imagUrl:
            'https://www.verywellhealth.com/thmb/GE_rmkh88ZWn1lMtacYttTNkAjg=/2000x2000/smart/filters:no_upscale()/gluten-free-makeup-brands-562443-primary-recirc-b8cf5ac52391436ba4114a6355aac323.jpg'),
  ];
}
