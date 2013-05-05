require 'sinatra'

get '/' do
  "
<html>
  
  

  <head>
   <title> Blog with Sinatra </title>
  </head>

    <body>


     <header>
      <h1> Welcome </h1>
     </header>

      <section>
        
        <header>
          <h2>Posts</h2>
        </header>
      <!-- Articles should be blocks of content that could stand on their own -->
        <article>
          <header>
           <h3> Header related to a type of posts in this section </h3>
          </header>
           
           <p> Paragraph related to the picture or a given subject</p> 
           


        </article>

      </section> 
      
      <section>

        <footer>
         <p>A Blochead Production</p>

      <!-- Navs define a group of navigation elements.-->
         <nav>

        <!-- ULs are unordered lists, commonly thought of as bulleted lists. UL tags define the section for the bullets, and the LI tags represent the bullets themselves. -->
          <ul>
            <li>About</li>
            <li>Resume</li>
          </ul> 

        </nav>
        </footer>

      </section>

    </body>

</html>
  "
end

get '/form' do  
  erb :form  
end

post '/form' do  
  "'#{params[:message]}' " + "Current date: #{Time.now}" 
end  

