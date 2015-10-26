FROM wiesom/question2answer

## Install Plugins
RUN q2a-install-plugin \
	kufeiko/QA-Google-Analytics-Plugin\
	NoahY/q2a-poll \
	NoahY/q2a-comment-voting \
	NoahY/q2a-badges \
	amiyasahu/q2a-syntax-highlighter \
	Towhidn/Q2A-feed-widget \
	wiesom/qa-behind-reverse-proxy-overrides


## Replace editor with a new one
RUN rm -rf /var/www/html/qa-plugin/wysiwyg-editor/ckeditor
ADD ckeditor*.zip /var/www/html/qa-plugin/wysiwyg-editor/ckeditor.zip
RUN cd /var/www/html/qa-plugin/wysiwyg-editor/ && unzip ckeditor.zip && rm -rf ckeditor.zip

