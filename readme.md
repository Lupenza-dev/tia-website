How to use...

1. Run > composer update

2. Run > php artisan serve 
- to start server

NOTE:

During the upgrade to Laravel 8, Change the declaration of the sluggable function in all models

i.e
From

{

  public function sluggable(){
        return [
            'slug' => [
                'source' => 'title_en'
            ]
        ];
    }

}

TO 

{

  public function sluggable(): array{
        return [
            'slug' => [
                'source' => 'title_en'
            ]
        ];
    }

}


Seem like the return turn is needed, and I have observed the MenuItem Model function was declared without the default value, take a look at the shared project too., the rest will work fine