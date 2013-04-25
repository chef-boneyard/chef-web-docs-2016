BUILDDIR = build
S3BUCKET = chef-docs
S3OPTIONS = --delete-removed --acl-public --exclude='.doctrees/*' --exclude='chef/.doctrees/*' --config ~/.s3cfg-chef-docs  --add-header "Cache-Control: max-age=900"

release: master all server

clean:
	@rm -rf $(BUILDDIR)

master:
	mkdir -p $(BUILDDIR)
	sphinx-build chef_master/source $(BUILDDIR)

all:
	mkdir -p $(BUILDDIR)/chef/
	sphinx-build docs_all/source $(BUILDDIR)/chef/

server:
	mkdir -p $(BUILDDIR)/server/
	sphinx-build docs_server/source $(BUILDDIR)/server/

upload:	release
	s3cmd sync $(S3OPTIONS) $(BUILDDIR)/ s3://$(S3BUCKET)/

gettext:
	sphinx-build -b gettext docs_all/source build/locale-all
	sphinx-build -b gettext chef_master/source build/locale-master
	@echo
	@echo "Build finished. The message catalogs are in $(BUILDDIR)/locale."

epub:
	sphinx-build -b epub docs_all/source build/epub-all
	sphinx-build -b epub chef_master/source build/epub-master
	@echo
	@echo "Build finished. The epub file is in $(BUILDDIR)/epub."


text:
	sphinx-build -b text docs_all/source build/text-all
	sphinx-build -b text chef_master/source build/text-all
	@echo
	@echo "Build finished. The text files are in $(BUILDDIR)/text."
