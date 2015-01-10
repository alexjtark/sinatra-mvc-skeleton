#INDEX

get '/wiki/all' do
  @wikis = Wiki.all.sort
  erb :'wiki/all'
end


#CREATE

get '/wiki/new' do
  erb :'wiki/new_form'
end

post '/wiki' do
  wiki = Wiki.create(params[:wiki])
  redirect("/wiki/#{wiki.id}")
end

#READ

get '/wiki/:id' do
  @wiki = Wiki.find(params[:id])
  erb :'wiki/show'
end

#UPDATE

get '/wiki/:id/edit' do
  @wiki = Wiki.find(params[:id])
  erb :'wiki/update_form'
end

put '/wiki/:id' do
  wiki = Wiki.find(params[:id])
  wiki.update(params[:wiki])
  redirect("/wiki/#{wiki.id}")
end

#DELETE




#wiki/#

<div id="edit">

</div>
