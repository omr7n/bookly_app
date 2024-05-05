import 'package:bookly_app/core/errors/failures.dart';

import 'package:bookly_app/features/home/data/models/book_model/item.dart';

import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<Item>>> fetchBestSellerBooks() {
 
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Item>>> fetchFeaturedBooks() {
   
    throw UnimplementedError();
  }

}