Mediawiki Cookbook
==================

Installs/Configures mediawiki

Requirements
------------

### Platform:

* Centos
* Debian

### Cookbooks:

* apache2
* php
* mysql
* database

Attributes
----------

<table>
  <tr>
    <td>Attribute</td>
    <td>Description</td>
    <td>Default</td>
  </tr>
  <tr>
    <td><code>node['mediawiki']['version']</code></td>
    <td></td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['mediawiki']['database']['name']</code></td>
    <td></td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['mediawiki']['database']['user']</code></td>
    <td></td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['mediawiki']['database']['password']</code></td>
    <td></td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['mediawiki']['server_name']</code></td>
    <td></td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['mediawiki']['sciptpath']</code></td>
    <td></td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['mediawiki']['admin_user']</code></td>
    <td></td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['mediawiki']['admin_password']</code></td>
    <td></td>
    <td><code></code></td>
  </tr>
</table>

Recipes
-------

### mediawiki::default

Installs/Configures mediawiki


License and Author
------------------

Author:: pulsation (<YOUR_EMAIL>)

Copyright:: 2014, pulsation

License:: BSD

