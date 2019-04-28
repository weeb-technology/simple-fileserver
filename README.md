A simple file that serves whatever is in /srv directory

This server is intended to be containerized and placed behind a reverse proxy,
thus it does not support any of the following:

* SSL
* Logging
* Custom 404 pages
* Access restriction
* Configuration of any kind

This will be replaced by a more complex file server in the future