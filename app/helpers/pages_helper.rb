module PagesHelper
	def menu(link, action)
		content_tag(:li, link_to(link, {:controller => "pages", :action => action},:class => li_active(action)))
	end

	private
	def li_active(action)
		action == params[:action]
	end
end
