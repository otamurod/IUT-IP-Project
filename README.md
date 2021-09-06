# Personal Blog Application Using Laravel


A little bit of information about the Project:
------------
* It is a simple personal blogging app.
* admin can add/edit/delete his/her blogs
* admin can read comments on blogs
* users can login/register
* users can read blogs
* users can comment on blogs when logged in

Admin properties:
------------
* username: admin
* password: admin-password
** Note: You can edit password/username or other fields using phpMyAdmin

Databese file is inside database/databasefile
------------
* file-name: laravel
**If you want to rename, you can do it. However, ensure that you also edit .env file

Database tables
------------
* users (default=subscriber)
* posts (id, author, title, body, slug, published_on, last_modified, active)
* comments (id, on_post, from_user, body, at_time)

Quick installation
------------
If you want to run this app locally, follow these instructions:

1.  Clone the repository:  ~$ git clone https://github.com/iuthub/group-project-codeforce.git

2.  Follow the Setup database instructions which includes:

  * Edit the .env.example file to match your database and rename to .env
  * config .env file to set db-connection
  * Set up and run the migrations
  
3. run `composer install`

4. Ensure that other settings are set correctly.
