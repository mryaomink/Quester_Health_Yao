import 'package:get/get.dart';

import '../blogs_model.dart';

class BlogsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Blogs.fromJson(map);
      if (map is List) return map.map((item) => Blogs.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Blogs?> getBlogs(int id) async {
    final response = await get('blogs/$id');
    return response.body;
  }

  Future<Response<Blogs>> postBlogs(Blogs blogs) async =>
      await post('blogs', blogs);
  Future<Response> deleteBlogs(int id) async => await delete('blogs/$id');
}
