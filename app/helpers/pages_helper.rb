#coding: utf-8
module PagesHelper
	def menu(link, action)
		content_tag(:li, link_to(link, {:controller => "pages", :action => action},:class => li_active(action)))
	end

<<<<<<< HEAD
	def slide(opt = {})
		image = opt[:image]
		title = opt[:title]
		link = opt[:link]
		image_tag('/assets/slideshow/gray.png', 
			data:{src:"/assets/slideshow/#{image}"}, 
			title: "<p>#{title}</p><span class='link'>#{link_to('VER MÁS', link) if link}</span>"
		)
	end

=======
	def menu_footer(link,action)
		content_tag(:li, link_to(link, {:controller => "pages", :action => action}))
	end
	
>>>>>>> 23cead28459881626cbd40c63ad61a49b303edab
	private
	def li_active(action)
		action == params[:action]
	end
end
