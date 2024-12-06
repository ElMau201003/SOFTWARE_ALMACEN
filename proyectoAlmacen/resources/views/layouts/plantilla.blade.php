<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <!--- favicon -->
    <!--- estilos -->
    <!--link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet"-->
<style>
    .active{
        color: red;
        font-weight: bold;
    }

    </style>

</head>
<body>
    <!--- header -->
    @include('profile.partials.header')



    <!--- nav -->
    <!--- content -->
    @yield('content')


    @include('profile.partials.footer')
    <!--- footer -->
    <!--- script -->
</body>
</html>