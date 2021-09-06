<!--Include path to Home-->

@include('include.header')

<div class="container">
    <div class="about-me">
        <h1>{{ $user->name }}</h1>
    </div>
    <hr id="hr-about">
    <div id="about-me-body">
        <div class="article">
            <style>

                .article{
                    width: 80%;
                }
                li, .user-profile{
                    border: 1px solid #1fc3ee;
                    padding: 8px;
                    border-collapse: collapse;
                    box-sizing: border-box;
                }
                h3{
                    color: #484cb6;
                    font-family: "Source Sans Pro", sans-serif;
                    font-size: 18pt;
                    margin: 0;
                    text-align: center;
                }
            </style>
            <ul>
                <li>
                  Joined on {{$user->created_at->format('M d,Y') }}
                </li>
                <li>
                  <table class="table-padding">
                    <style>
                      .table-padding td {
                          padding: 3px 8px;
                          width: 30%;
                      }
                    </style>
                    <tr>
                      <td>Total Posts</td>
                      <td> {{$posts_count}}</td>
                      @if($author && $posts_count)
                      <td><a href="{{ url('/my-all-posts')}}">Show All</a></td>
                      @endif
                    </tr>
                    <tr>
                      <td>Published Posts</td>
                      <td>{{$posts_active_count}}</td>
                      @if($posts_active_count)
                      <td><a href="{{ url('/user/'.$user->id.'/posts')}}">Show All</a></td>
                      @endif
                    </tr>
                    <tr>
                      <td>Posts in Draft </td>
                      <td>{{$posts_draft_count}}</td>
                      @if($author && $posts_draft_count)
                      <td><a href="{{ url('my-drafts')}}">Show All</a></td>
                      @endif
                    </tr>
                  </table>
                </li>
                <li>
                  Total Comments {{$comments_count}}
                </li>
            </ul>


            <div class="user-profile">
                <h3>Latest Posts</h3>
                @if(!empty($latest_posts[0]))
                @foreach($latest_posts as $latest_post)
                <p>
                  <strong><a href="{{ url('/'.$latest_post->slug) }}">{{ $latest_post->title }}</a></strong>
                  <span class="well-sm">On {{ $latest_post->created_at->format('M d,Y') }}</span>
                </p>
                @endforeach
                @else
                <p>You have not written any post till now.</p>
                @endif
            </div>

            <div class="user-profile">
                <h3>Latest Comments</h3>
                @if(!empty($latest_comments[0]))
                @foreach($latest_comments as $latest_comment)
                    <div>
                      <p>{{ $latest_comment->body }}</p>
                      <p>On {{ $latest_comment->created_at->format('M d,Y') }}</p>
                      <p>On post <a href="{{ url('/'.$latest_comment->post->slug) }}">{{ $latest_comment->post->title }}</a></p>
                    </div>
                @endforeach
                @else
                <div>
                  <p>You have not commented till now. Your latest 5 comments will be displayed here</p>
                </div>
                @endif
            </div>
        </div>
    </div>
</div>
<!-- INCLUDE FOOTER -->
<div class="page-bootom">
    @include('include.footer')
</div>
