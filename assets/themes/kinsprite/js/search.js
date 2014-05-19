---
---
{% if site.JB.search.jquery %}
 $(function() {
          $.ajax({
              url: "{{ site.production_url }}/search.xml",
              dataType: "xml",
              success: function( xmlResponse ) {
                 var data = $( "article", xmlResponse ).map(function() {
                      return {
                          value: $( "title", this ).text() + ", " +
                              ( $.trim( $( "date", this ).text() ) ),
                          desc: $("description", this).text(),
                          url: $("url", this).text()
                      };
                  }).get();
  
                  $( "#search-text" ).autocomplete({
                      source: data,
                      minLength: 0,
                      select: function( event, ui ) {
                        window.location.href = ui.item.url;
                      }
                  });
              }
          });
      });
{% endif %}
// search provider 
{% include custom/search %}
