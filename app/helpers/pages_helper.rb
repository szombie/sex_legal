#coding: utf-8
module PagesHelper
	def menu(link, action)
		content_tag(:li, link_to(link, {:controller => "pages", :action => action},:class => li_active(action)))
	end

	def slide(opt = {})
		image = opt[:image]
		title = opt[:title]
		link = opt[:link]
		image_tag('/assets/slideshow/gray.png', 
			data:{src:"/assets/slideshow/#{image}"}, 
			title: "<p>#{title}</p><span class='link'>#{link_to('VER MÁS', link) if link}</span>"
		)
	end

	private
	def li_active(action)
		action == params[:action]
	end
end
