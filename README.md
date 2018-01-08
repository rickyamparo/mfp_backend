# My Favorite Places - Backend
Ruby on Rails Backend for My Favorite Places Android App.

My Favorite places is a location tracking app that can predict your future locations based on trends gleamed through data analysis. This project is the capstone project for [Ricky Ace Amparo](https://github.com/rickyamparo). This is the final project for the curriculum at [The Turing School of Software and Design](https://www.turing.io/). The goal of this project was to use unfamiliar technology and to implement it in a timely fashion. I decided to use Ruby on Rails for my backend as a way to deepen my learning of Rails development, specifically building an API with Rails. 

### Technologies used
* Rails 5.1.4 [link to docs](http://rubyonrails.org/)
* ruby 2.3.1 [link to docs](https://www.ruby-lang.org/en/)
* JWT [link to docs](https://github.com/jwt/ruby-jwt)
* bcrypt [link to docs](https://github.com/codahale/bcrypt-ruby)
* Simple Command [https://github.com/nebulab/simple_command]

### Setup Instructions
1. clone repo
2. run `bundle`
3. run `rake db:create db:migrate db:seed` to create your database

To start your server, run `rails server`. 

### Frontend
[MFP Frontend](https://github.com/rickyamparo/mfp_frontend)

### API Endpoints

<table id='route_table' class='route_table'>
  <thead>
    <tr>
      <th>Helper</th>
      <th>HTTP Verb</th>
      <th>Path</th>
      <th>Controller#Action</th>
    </tr>
    <tr class='bottom'>
      <th>        <a data-route-helper="_path" title="Returns a relative path (without the http or domain)" href="#">Path</a> /
        <a data-route-helper="_url" title="Returns an absolute url (with the http and domain)" href="#">Url</a>
      </th>
      <th>      </th>
      <th>        <input id="search" placeholder="Path Match" type="search" name="path[]" />
      </th>
      <th>      </th>
    </tr>
  </thead>
  <tbody class='exact_matches' id='exact_matches'>
  </tbody>
  <tbody class='fuzzy_matches' id='fuzzy_matches'>
  </tbody>
  <tbody>
    <tr class='route_row' data-helper='path'>
  <td data-route-name='users'>
      users<span class='helper'>_path</span>
  </td>
  <td>
    POST
  </td>
  <td data-route-path='/users(.:format)'>
    /users(.:format)
  </td>
  <td>
    <p>users#create</p>
  </td>
</tr>
<tr class='route_row' data-helper='path'>
  <td data-route-name='authenticate'>
      authenticate <span class='helper'>_path</span>
  </td>
  <td>
    POST
  </td>
  <td data-route-path='/authenticate(.:format)'>
    /authenticate(.:format)
  </td>
  <td>
    <p>authentication#authenticate</p>
  </td>
</tr>
<tr class='route_row' data-helper='path'>
  <td data-route-name='api_v1_business_intelligence_most_visited'>
      api_v1_business_intelligence_most_visited<span class='helper'>_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path='/api/v1/business_intelligence/most_visited(.:format)'>
    /api/v1/business_intelligence/most_visited(.:format)
  </td>
  <td>
    <p>api/v1/business_intelligence#most_visited</p>
  </td>
</tr>
<tr class='route_row' data-helper='path'>
  <td data-route-name='api_v1_business_intelligence_least_visited'>
      api_v1_business_intelligence_least_visited<span class='helper'>_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path='/api/v1/business_intelligence/least_visited(.:format)'>
    /api/v1/business_intelligence/least_visited(.:format)
  </td>
  <td>
    <p>api/v1/business_intelligence#least_visited</p>
  </td>
</tr>
<tr class='route_row' data-helper='path'>
  <td data-route-name='api_v1_business_intelligence_favorite_weekday'>
      api_v1_business_intelligence_favorite_weekday<span class='helper'>_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path='/api/v1/business_intelligence/favorite_weekday(.:format)'>
    /api/v1/business_intelligence/favorite_weekday(.:format)
  </td>
  <td>
    <p>api/v1/business_intelligence#favorite_weekday</p>
  </td>
</tr>
<tr class='route_row' data-helper='path'>
  <td data-route-name='api_v1_business_intelligence_favorite_weekend'>
      api_v1_business_intelligence_favorite_weekend<span class='helper'>_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path='/api/v1/business_intelligence/favorite_weekend(.:format)'>
    /api/v1/business_intelligence/favorite_weekend(.:format)
  </td>
  <td>
    <p>api/v1/business_intelligence#favorite_weekendx</p>
  </td>
</tr>
<tr class='route_row' data-helper='path'>
  <td data-route-name='api_v1_day_name_most_popular'>
      api_v1_day_name_most_popular<span class='helper'>_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path='/api/v1/day_name/most_popular(.:format)'>
    /api/v1/day_name/most_popular(.:format)
  </td>
  <td>
    <p>api/v1/day_name#most_popular</p>
  </td>
</tr>
<tr class='route_row' data-helper='path'>
  <td data-route-name='api_v1_day_name_least_popular'>
      api_v1_day_name_least_popular<span class='helper'>_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path='/api/v1/day_name/least_popular(.:format)'>
    /api/v1/day_name/least_popular(.:format)
  </td>
  <td>
    <p>api/v1/day_name#least_popular</p>
  </td>
</tr>
<tr class='route_row' data-helper='path'>
  <td data-route-name='api_v1_day_number_most_popular'>
      api_v1_day_number_most_popular<span class='helper'>_path</span>
  </td>
  <td>
    GET
  </td>
  <td data-route-path='/api/v1/day_number/most_popular(.:format)'>
    /api/v1/day_number/most_popular(.:format)
  </td>
  <td>
    <p>api/v1/day_number#most_popular</p>
  </td>
</tr>
