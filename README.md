# chef-docs

This repository is the source code of the documentation site : [http://docs.opscode.com](http://docs.opscode.com)

If you research documentation about chef, please go to [http://docs.opscode.com](http://docs.opscode.com)

This README focuses on people who want to contribute to the Chef documentation.

## Contributing

Check the [Contributing guidelines](https://github.com/opscode/chef-docs/blob/master/CONTRIBUTING)

## How does it work

The engine to render the static documentation website is [sphinx](http://sphinx-doc.org/). Please have a look to their documentation to start contributing.

If you want to test your modifications : 
    
    #Install sphinx
    mkdir ~/sphinx-doc
    cd ~/sphinx-doc
    wget https://bitbucket.org/birkenfeld/sphinx/get/default.tar.bz2
    tar xvzf default.tar.bz2
    cd birkenfeld-sphinx-20445f7631fd/
    python setup.py build
    sudo python setup.py install

    #Install a little web-server
    gem install serve-this

    #Compile the document
    cd /path/to/this/repo
    make release #~30min

    #Start the webserver
    cd build
    serve-this

And in your browser, go to [http://localhost:1337](http://localhost:1337)

# License

[Creative Commons Attribution 3.0 Unported License](http://creativecommons.org/licenses/by/3.0/)
