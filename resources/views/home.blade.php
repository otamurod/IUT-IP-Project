<!--Include path to Home-->

@include('include.header')
<div class="container">
    <div id="show-owner">
        <div class="profile">
            <div class="image">
                <img id="profile-picture" src="/images/profile_image.jpg" alt="profile-picture">
            </div>
            <div class="follow">
                <button type="button"><a href="{{ url('/auth/register') }}">Follow</a></button>
            </div>

        </div>
        <div class="welcome-message">
            <h2 id="greeting">Good Day. Welcome to my personal blog!</h2>
            <hr id="home">
            <p class="p-home">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci architecto atque aut delectus deserunt, dicta ducimus incidunt iusto maxime minus nemo perferendis quia, quibusdam sapiente sequi sit tempore, vel voluptates?</p>
            <p class="p-home">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad adipisci asperiores aut blanditiis, ea esse hic incidunt modi mollitia nisi nulla optio pariatur perspiciatis quia quod ratione sequi sint sit.</p>
            <p class="p-home">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi aspernatur assumenda enim, facere fugiat fugit impedit iste itaque labore maxime nihil nostrum pariatur perspiciatis quis quos reprehenderit rerum totam voluptate.</p>

        </div>
    </div>
    <div class="about-image">
        <img id="event" src="/images/world.jpg" alt="event-image">
        <h3 id="inspire">Feel Yourself As Flying Over The World With Me</h3>
    </div>

</div>
<div class="page-bootom">
    @include('include.contact')
    @include('include.footer')
</div>
