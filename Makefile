render:
	tutor config render --extra-config ./config.yml ./theme "$$(tutor config printroot)/env/build/openedx/themes/centromontessori-edx-ecommerce-theme"

watch: render
	while true; do inotifywait -e modify --recursive config.yml ./theme; $(MAKE) render; done
