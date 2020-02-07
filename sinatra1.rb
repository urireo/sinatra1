require 'sinatra'
enable :sessions

 post '/hello' do
    session[:name]=params[:name]
    "got your name!"
 end
 
 get '/namesubmitted' do
     "your name is #{session[:name]}"
 end
 
 
  get '/set' do
    session[:message] = params[:message]
    "session saved"
  end 
  get '/get' do
    session[:message]
  end

get '/' do
    erb:index
end

post "/logn" do
    params.to_s
    if params[:username]=='bob' && params[:password]=='pass'
        "SUCCESS"
    else
        "failure"
    end
end
get '/' do
    erb:index
end
post '/logon' do
    params.to_s
    if params[:username]=='bob' && params[:password]=='pass'
        "SUCCESS"
    else
        "failure"
    end
end

#
get '/hw' do
   hw.html 
end


get '/post_it' do
    erb:post_it
  end
  
  post '/submitted' do
    "form submitted"
  end

=begin
get '/:age' do
  if params[:age]=='40'
      "Hi, I'm #{params[:age]} years old, I am geting wise"
  else
      "Hi, I'm #{params[:age]} years old, I am not not 40"
  end
end
=end



a='no'
get '/other' do
   if a=='yes'
    "<h1> Yes</h1>"
   else
      "<h1> answer is No</h1>" 
   end
end



get '/getdoc' do
  "<!DOCTYPE html>
   <html>
   <head>
    <style>
        div
        {
            color:#89ADF0;
            margin: auto;
            text-align:center;
         }
        body
        {
            background-image: url('https://cdn.britannica.com/51/167851-050-594A2274/painting-Sor-Juana-Ines-de-la-Cruz.jpg');)
            background-size: contain, cover;
            background-repeat: no-repeat;
        }
    </style>
   </head>
   <body background-image>
      <div>
        <h3>
            <p>
                Hombres necios que acusáis a la mujer sin razón,<br>
                sin ver que sois la ocasión de lo mismo que culpáis.
            </p>
            <p>
              Si con ansia sin igual solicitáis su desdén,<br>
              ¿por qué queréis que obren bien si las incitáis al mal?
            </p>
            <p>
            Combatís su resistencia y luego con gravedad <br>
            decís que fue liviandad lo que hizo la diligencia.
            </p>
            <p>
                Parecer quiere el denuedo de vuestro parecer loco<br>
                al niño que pone el coco y luego le tiene miedo.
            </p>
            <p>
                 Queréis con presunción necia hallar a la que buscáis,<br>
                para pretendida, Tais, y en la posesión, Lucrecia.
            </p>
            <p>
               ¿Qué humor puede ser más raro que el que, falto de consejo,<br>
                él mismo empaña el espejo y siente que no esté claro?
            </p>
            <p>
              Con el favor y el desdén tenéis condición igual, <br>
                quejándoos, si os tratan mal, burlándoos, si os quieren bien.
            </p>
             <p>
              Opinión ninguna gana, pues la que más se recata,<br>
                si no os admite, es ingrata, y si os admite, es liviana.
            </p>
             <p>
                Siempre tan necios andáis que con desigual nivel <br>
                a una culpáis por cruel y a otra por fácil culpáis.
            </p>
             <p>
                ¿Pues cómo ha de estar templada la que vuestro amor pretende,<br>
                si la que es ingrata ofende y la que es fácil enfada?
            </p>
             <p>
                Mas entre el enfado y pena que vuestro gusto refiere,<br>
                bien haya la que no os quiere  y queja enhorabuena.
            </p>
             <p>
                Dan vuestras amantes penas a sus libertades alas <br>y después de hacerlas malas las queréis hallar muy buenas.
            </p>
  
             <p>
                ¿Cuál mayor culpa ha tenido en una pasión errada:<br>
                la que cae de rogada o el que ruega de caído?
            </p>
            <p>
                ¿O cuál es más de culpar, aunque cualquiera mal haga:<br>
                la que peca por la paga o el que paga por pecar?
            </p>
            <p>
                ¿Pues para qué os espantáis de la culpa que tenéis? <br>
                Queredlas cual las hacéis o hacedlas cual las buscáis.
            </p>
            <p>
                Dejad de solicitar y después con más razón <br>
                acusaréis la afición de la que os fuere a rogar.
            </p>
            <p>
                Bien con muchas armas fundo que lidia vuestra arrogancia,<br>
                pues en promesa e instancia juntáis diablo, carne y mundo.
            </p>
        </h1>
      </div>
      <font color='red'> this is red text</font>
  </body>
  </html>"
end
