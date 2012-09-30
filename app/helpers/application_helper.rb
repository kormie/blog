module ApplicationHelper
  def render_disqus_javascript
    js = "<div id='disqus_thread'></div>"
    js += javascript_tag do
      disqus_shortname = 'komie'
      "(function() { var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true; dsq.src = 'http://' + '#{disqus_shortname}' + '.disqus.com/embed.js'; (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq); })();"
    end
    js += "<noscript>Please enable JavaScript to view the <a href='http://disqus.com/?ref_noscript'>comments powered by Disqus.</a></noscript>"
    js += "<a href='http://disqus.com' class='dsq-brlink'>comments powered by <span class='logo-disqus'>Disqus</span></a>"
  end
end
