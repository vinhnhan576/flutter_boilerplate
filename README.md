# flutter_boilerplate

A Flutter project following Feature-first architecture

## Overview


## Requirements

Before running the application, ensure you have Python:

- Python 3.12
- pip

## Run Unit Tests


## Run Unit Tests


## File Structure

lib/
|-- config/
|   |-- app_config.dart
|   |-- environment.dart
|   |-- themes/
|   |   |-- app_theme.dart
|   |   |-- dark_theme.dart
|   |   |-- light_theme.dart
|
|-- data/
|   |-- datasources/
|   |   |-- local/
|   |   |   |-- hive_manager.dart
|   |   |   |-- shared_prefs_manager.dart
|   |   |-- remote/
|   |   |   |-- api_client.dart
|   |   |   |-- endpoints.dart
|   |   |-- auth_datasource.dart
|   |   |-- user_datasource.dart
|   |-- models/
|   |   |-- auth/
|   |   |   |-- login_request.dart
|   |   |   |-- login_response.dart
|   |   |-- user/
|   |   |   |-- user_model.dart
|   |-- repositories/
|       |-- auth_repository_impl.dart
|       |-- user_repository_impl.dart
|
|-- domain/
|   |-- entities/
|   |   |-- user_entity.dart
|   |-- repositories/
|   |   |-- auth_repository.dart
|   |   |-- user_repository.dart
|   |-- usecases/
|       |-- auth/
|       |   |-- login_usecase.dart
|       |   |-- logout_usecase.dart
|       |-- user/
|           |-- get_user_profile_usecase.dart
|           |-- update_user_profile_usecase.dart
|
|-- presentation/
|   |-- blocs/
|   |   |-- auth/
|   |   |   |-- auth_bloc.dart
|   |   |   |-- auth_event.dart
|   |   |   |-- auth_state.dart
|   |   |-- user/
|   |       |-- user_cubit.dart
|   |       |-- user_state.dart
|   |-- pages/
|   |   |-- auth/
|   |   |   |-- login_page.dart
|   |   |   |-- register_page.dart
|   |   |-- home/
|   |   |   |-- home_page.dart
|   |   |-- profile/
|   |       |-- profile_page.dart
|   |-- widgets/
|       |-- common/
|       |   |-- custom_button.dart
|       |   |-- custom_text_field.dart
|       |-- auth/
|           |-- login_form.dart
|
|-- core/
|   |-- constants/
|   |   |-- app_constants.dart
|   |   |-- asset_paths.dart
|   |-- errors/
|   |   |-- app_error.dart
|   |   |-- network_error.dart
|   |-- extensions/
|   |   |-- context_extensions.dart
|   |   |-- string_extensions.dart
|   |-- utils/
|       |-- validators.dart
|       |-- date_utils.dart
|
|-- di/
|   |-- injection.dart
|   |-- injection.config.dart
|
|-- navigation/
|   |-- app_router.dart
|   |-- route_names.dart
|
|-- main.dart