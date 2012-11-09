BUILDDIR = build
S3BUCKET = chef-docs
S3OPTIONS = --delete-removed --acl-public --exclude='.doctrees/*' --exclude='chef/.doctrees/*' --config ~/.s3cfg-chef-docs

clean:
	rm -r $(BUILDDIR)

release: master docs

master:
	mkdir -p $(BUILDDIR)
	sphinx-build chef_master/source $(BUILDDIR)

docs:
	mkdir -p $(BUILDDIR)/chef/
	sphinx-build docs_all/source $(BUILDDIR)/chef/

upload:	release
	s3cmd sync $(S3OPTIONS) $(BUILDDIR)/ s3://$(S3BUCKET)/
