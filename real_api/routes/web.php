<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
$router->get('/user/all', 'UsersController@all');
$router->post('/user/login', 'UsersController@login');
$router->post('/user/register', 'UsersController@register');

$router->get('/property/search/{val}', 'SearchController@findProperty');
$router->post('/property/mega-search', 'SearchController@SearchFilter');

$router->get('/blogs/delete/{id}', 'BlogsController@deleteBlog');
$router->get('/blogs/limited', 'BlogsController@limited');
$router->get('/blogs/all', 'BlogsController@all');
$router->post('/blogs/add', 'BlogsController@add');
$router->get('/blogs/single/{id}', 'BlogsController@single_blog');

$router->get('/videos/all', 'VideosController@all');
$router->post('/videos/add', 'VideosController@add');


$router->get('/features/all', 'FeaturesController@all');
$router->post('/features/add', 'FeaturesController@add');

$router->get('/amenities/all', 'AmenitiesController@all');
$router->post('/amenities/add', 'AmenitiesController@add');

$router->get('/surrondings/all', 'SurroundingsController@all');
$router->post('/surrondings/add', 'SurroundingsController@add');

$router->get('/property/user_properties/{id}', 'PropertiesController@user_properties');
$router->get('/property/single/{id}', 'PropertiesController@singleProperty');
$router->get('/property/delete/{id}', 'PropertiesController@deleteProperty');
$router->get('/property/all', 'PropertiesController@all');
$router->get('/property/browse', 'PropertiesController@browseOurListing');
$router->get('/property/browse/all', 'PropertiesController@browseOurListingAll');
$router->post('/property/add', 'PropertiesController@add');
$router->post('/property/edit', 'PropertiesController@edit');


//$router->post('/suppliers/add', 'SuppliersController@add');
//$router->get('/features/all/{id}', 'FeaturesController@find');
//$router->delete('/suppliers/delete/{id}', 'SuppliersController@delete');
//$router->put('/suppliers/update/{id}', 'SuppliersController@update');

