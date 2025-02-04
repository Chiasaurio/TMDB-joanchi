import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:provider/provider.dart';

import '../../components/http_component/_lib.dart';
import '../../components/utils/debouncer.dart';
import '../../config/router_config/_lib.dart';
import '../../config/style_config/_lib.dart';

import 'infrastructure/datasources/share_preference_data/_lib.dart';

part 'infrastructure/models/movies_response.dart';
part 'infrastructure/repositories/local_movies_repository.dart';
part 'infrastructure/repositories/remote_movies_repository.dart';

part 'domain/entities/movie.dart';
part 'domain/repositories/favorite_movies_repository_interface.dart';
part 'domain/repositories/remote_movies_repository_interface.dart';

part 'domain/ports/favorite_movies_port.dart';
part 'domain/ports/remote_movies_port.dart';

part 'presentation/pages/detail_page_movies_module.dart';
part 'presentation/pages/main_page_movies_module.dart';

part 'presentation/router/navigator_movies_module.dart';
part 'presentation/router/router_movies_module.dart';
part 'presentation/router/router_detail_module.dart';

part 'presentation/state/movies_list_state.dart';

part 'presentation/widgets/movie_card.dart';

part '_lib.g.dart';
