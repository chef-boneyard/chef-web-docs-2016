BUILDDIR = build
S3BUCKET = chef-docs
S3OPTIONS = --delete-removed --acl-public --cf-invalidate --exclude='.doctrees/*' --exclude='chef/.doctrees/*'

clean:
	rm -r $(BUILDDIR)

release: master docs

master:
	mkdir -p $(BUILDDIR)
	sphinx-build chef_master/source $(BUILDDIR)

docs:
	mkdir -p $(BUILDDIR)/chef/
	for sdir in docs_reference_knife docs_reference_resources; do \
		rm -rf $(BUILDDIR)/chef/.doctrees;\
		sphinx-build $$sdir/source $(BUILDDIR)/chef/;\
	done

upload:	release
	s3cmd sync $(S3OPTIONS) $(BUILDDIR)/ s3://$(S3BUCKET)/
