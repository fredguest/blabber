# Blabber
A simple twitter clone for [Ruby Weekend 4](http://rubyweekend.com)

## Checking requirements

```ruby
ruby -v
# ruby 1.9.3p392 (2013-02-22 revision 39386) [x86_64-darwin12.3.0]
rails -v
# Rails 3.2.13
```

## Creating the app

1) ```rails new blabber --skip-test-unit```  
2) ```cd blabber```  
3) ```rails s```  
4) ```git init```  
5) ```git add .```   
6) ```git commit -m "first commit"```   
7) delete public/index.html  
8) make a new file called site_controller.rb inside controllers folder  
9) add following code to site_controller.rb:
```ruby
class SiteController < ApplicationController
  def index
  end
end
```
10) inside config/routes.rb at the top add:
```ruby
root :to => 'site#index'
```
11) make a new folder inside views called "site"  
12) make a new file inside site folder called index.html.erb  
13) inside site/index.html.erb type "Welcome to Blabber"  
14) ```git add .```  
15) ```git commit -m "add site index"```   
16) add foundation. your gem file should now look like this:  
```ruby
gem 'rails', '3.2.13'
gem 'jquery-rails'
gem 'sqlite3'

group :assets do
 gem 'sass-rails',   '~> 3.2.3'
 gem 'coffee-rails', '~> 3.2.1'
 gem 'uglifier', '>= 1.0.3'
 gem 'zurb-foundation'
end
```
17) ```bundle``` (server restart required)  
18) ```rails g foundation:install``` (type "Y" after conflict alert)  
19) in layout/application.html.erb move this:  
```ruby
<%= javascript_include_tag "application" %>
```
back into the header below this:  
```ruby
<%= stylesheet_link_tag    "application" %>
```
20) add the following code to layouts/application.html.erb:  
```html
<body>

  <div class="fixed">
    <nav class="top-bar">
      <ul class="title-area">
        <li class="name">
          <h1><a href="/">Blabber</a></h1>
        </li>
        <li class="toggle-topbar menu-icon">
          <a href="#"><span></span></a>
        </li>
      </ul>
      <section class="top-bar-section">
        <ul class="right">
          <li class="divider"></li>
          <li><a href="#">Sign In</a></li>
        </ul>
      </section>
    </nav>
  </div>

  <%= yield %>

</body>
```
21) ```git add . ```  
22) ```git commit -m "add foundation and top bar" ```  
23) in index.html.erb replace "Welcome to Blabber" with this:
```html
<div class="row" id="welcome">
  <div class="large-8 large-offset-2 columns">
    <div class="panel radius">
      <h2>Welcome to Blabber</h2>
    </div>
  </div>
</div>
```
24) make a new file inside assets/stylesheets called custom.css.scss
25) paste the following code into custom.css.scss:
```css
body {min-height: 540px; padding-bottom: 50px;}
#welcome, #signup, #signin, #new-blab, #edit-blab, #show-blab {margin-top: 80px;}
#welcome .panel {text-align: center;}
#welcome h3 {color: #777;}
.panel.white {background-color: #fff;}
.panel.light {background-color: #f3f3f3;}
.global.alert-box {text-align: center; font-size: 18px;}
.alert-box .close {z-index: 101; top: 14px;}
input {-webkit-appearance: none;}
li {list-style: none;}
#new-blab .secondary, #edit-blab .secondary {margin-left: 20px;}
a img {border: 1px solid #bbb;}
a img:hover {border: 1px solid #FC8E6C;}
#index-blab {
  margin-top: 40px;
  .panel {padding: 10px 16px;}
  .details {color: #bbb;}
  .details:hover {color: #2BA6CB;}
}
#show-blab {
  text-align: center;
  h2 {color: #999; text-shadow: 1px 1px 0px #fff;}
  h3 {margin-bottom: 0;}
  .button {margin: 0px 10px 15px}
  .white.panel {margin-bottom: 40px;}
}
#boom {
  color: #2E7979;
  font-size: 60px;
  line-height: 50px;
  margin-bottom: 50px;
  font-weight: bolder;
  text-shadow: -4px 4px 0px #00bdbd, -8px 8px 0px #01cccc, -12px 12px 0px #00e6e6;
}
.ransack.button {float: right; top: -46px; padding-bottom: 9px;}
.ransack.columns {height: 40px; margin-top: 5px;}
```
26) require it in application.css which should now look like this:






















