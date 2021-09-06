<!--Include path to Home-->

@include('include.header')

@if ( !$posts->count() )

<div class="container">
    <div class="space"></div>
    <div class="about-me">
        There is no post till now. Stay connected. Admin will post soon!!!
    </div>
    <div class="space"></div>

</div>

@else
<div class="container">
    <div class="about-me">
        <h1>Blogs</h1>
    </div>
    <hr id="hr-about">

<!--    SHOW ALL BLOGS POSTED-->
<!--    IF USER CLICKS A POST, SHOW THAT POST DIRECTLY-->
    <div id="blog-body">
        <div class="blogs">
<!--            MAKE THIS PART DYNAMIC TOO-->

            <style>
                #edit > button{
                    box-shadow: none;
                }
            </style>

            <ul>
                @foreach( $posts as $post )
                <li>
                    <a href="{{ url('/'.$post->slug) }}">
                        <div class="blog">
                            <p class="title">{{ $post->title }}</p>
                            @if( !Auth::guest() && ($post->author_id == Auth::user()->id && Auth::user()->is_admin()))
                                @if($post->active == '1')
                                    <div id="edit">
                                        <button class="btn" style="float: right"><a href="{{ url('edit/'.$post->slug)}}">Edit Post</a></button>
                                    </div>
                                @else
                                    <div id="edit">
                                        <button class="btn" style="float: right"><a href="{{ url('edit/'.$post->slug)}}">Edit Draft</a></button>
                                    </div>
                                @endif
                            @endif
                            <p class="posted-date">Created On {{ $post->created_at->format('M d,Y') }} By <a href="{{ url('/')}}">{{ $post->author->name }}</a></p>
                        </div>
                    </a>
                </li>
                @endforeach
            </ul>
            {!! $posts->render() !!}
        </div>
    </div>

</div>
@endif

<!-- INCLUDE FOOTER -->
<div class="page-bootom">
    @include('include.contact')
    @include('include.footer')
</div>