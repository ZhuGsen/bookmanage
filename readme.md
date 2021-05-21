
## laravel-adminlte

## Main function introduction
#### 1.Laravel auth permissions
#### 2.Use laravel-adminlte architecture;
#### 3.Realize the RBAC permission function of administrators, roles, menus, and permissions.
#### 4.System management, classification management, library management, user management....
#### 5.Business logic of borrowing and returning books.
#### 6.Multi-language switching.
#### 7.The front end using icheck,datepicker,select2,datatable.

## website Backend request url
#### url：http://www.localhost.com/admin
#### username：admin
#### password： admin


##  Website frontend
#### url：http://www.localhost.com/


## screenshot

![image](https://github.com/ZhuGsen/bookmanage/blob/main/public/images/pro/1.png)
![image](https://github.com/ZhuGsen/bookmanage/blob/main/public/images/pro/2.png)
![image](https://github.com/ZhuGsen/bookmanage/blob/main/public/images/pro/3.png)

## 安装

#### 1.After cloning the code, composer is installed
```
composer install
```
#### 2.Create key and create .env for related configuration

```
php artisan key:generate
```
#### 3.Database migration

```
  Import homestead.sql file  or php artisan migrate   
```


> admin has all menus and permissions.

