#coding: utf-8
module PagesHelper
	def menu(link, action)
		content_tag(:li, link_to(link, {:controller => "/pages", :action => action},:class => li_active(action)))
	end

	def slide(opt = {})
		image = opt[:image]
		title = opt[:title]
		link = opt[:link]
		conten = opt[:conten]
		image_tag('/assets/slideshow/gray.png', 
			data:{src:"/assets/slideshow/#{image}"}, 
			title: "<h2>#{title}</h2><hr><p>#{conten}</p><span class='link'>#{link_to('VER MÁS', link) if link}</span>"
		)
	end

	def menu_footer(link,action)
		content_tag(:li, link_to(link, {:controller => "/pages", :action => action}))
	end

	def zigna
		"Diseño y Desarrollo Web | #{link_to 'Zigna Creativa', root_path, target:'_blank', class:'zigna'}"
	end

	private
	def li_active(action)
		action == params[:action]
	end
end
