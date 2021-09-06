<!--Include path to Home-->

@include('include.header')

<div class="container">
    <div class="about-me">
        @if($post)
        <h1>{{ $post->title }}</h1>
    </div>
    <hr id="hr-about">

    <div id="about-me-body">

        <div class="article">

            @if($post)
            <div>
              {!! $post->body !!}
            </div>
            <div>
              <h2>Leave a comment</h2>
            </div>

            @if(Auth::guest())
            <p>Login to Comment</p>
            @else
            <div class="panel-body">
              <form method="post" action="/comment/add">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <input type="hidden" name="on_post" value="{{ $post->id }}">
                <input type="hidden" name="slug" value="{{ $post->slug }}">
                <div class="form-group">
                  <textarea required="required" placeholder="Enter comment here" name="body" class="form-control"></textarea>
                </div>
                <input type="submit" name='post_comment' class="btn btn-success" value="Post" />
              </form>
            </div>
            @endif


            <div>
                <h1>Comments By</h1>
              @if($comments)
              <ul style="list-style: none; padding: 0">
                @foreach($comments as $comment)
                <li >
                  <div>
                    <div ">
                      <h3>{{ $comment->author->name }}</h3>
                      <p>{{ $comment->created_at->format('M d,Y') }}</p>
                    </div>
                    <div>
                      <p>{{ $comment->body }}</p>
                    </div>
                  </div>
                </li>
                @endforeach
              </ul>
              @endif
            </div>

            @else
            404 error
            @endif
        </div>
</div>

<hr id="hr-about">
<div class="about-me">
    <p>Created On {{ $post->created_at->format('M d,Y') }} By <a href="{{ url('/user/'.$post->author_id)}}">{{ $post->author->name }}</a></p>
</div>
<div class="follow">
        @if(!Auth::guest() && ($post->author_id == Auth::user()->id && Auth::user()->is_admin()))
        <button class="btn" style="float: right"><a href="{{ url('edit/'.$post->slug)}}">Edit Post</a></button>
        @endif
        @else
        Page does not exist
        @endif
    </div>
<div class="space"></div>

</div>

<!-- INCLUDE FOOTER -->
<div class="page-bootom">
    @include('include.contact')
    @include('include.footer')
</div>