@extends('layouts.app')


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewpoint" content="width=device-width, initial-scale=1">
    <title>My Personal Blog</title>
    <!--    Link to the related stylesheet-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/header_style.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/home_style.css')}}">
    <link rel="stylesheet" href="{{ asset('/css/login_style.css')}}">
    <link rel="stylesheet" href="{{ asset('/css/contact_style.css')}}">
    <link rel="stylesheet" href="{{ asset('/css/footer_style.css')}}">

</head>
<body

<!--    Header-->
<div class="header">
    <div class="left-header" id="myTopnav">

        <div id="home">
            <a  href="{{ url('/') }}">Home</a>
        </div>
        <div id="about">
            <a href="{{ url('/about') }}">About</a>
        </div>
        <div id="blog">
            <a href="{{ url('user/1/posts') }}">Blog</a>
        </div>

    </div>
    <div class="right-header">
        @if (Auth::guest())
            <div id="login"><a href="{{ url('/auth/login') }}">Login</a></div>
        @else
            <div class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{{ Auth::user()->name }} <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    @if (Auth::user()->can_post() && Auth::user()->name=='admin')
                    <li>
                        <a href="{{ url('/new-post') }}">Add new post</a>
                    </li>
                    <li>
                        <a href="{{ url('/user/'.Auth::id().'/posts') }}">My Posts</a>
                    </li>
                    <li>
                        <a href="{{ url('/user/'.Auth::id()) }}">My Profile</a>
                    </li>
                    @endif
                    <li>
                        <a href="{{ url('/logout') }}">Logout</a>
                    </li>
                </ul>
            </div>
            @endif
    </div>
</div>

