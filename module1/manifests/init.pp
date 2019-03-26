# Class: module1
# ===========================
#
# Full description of class module1 here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'module1':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
# Copyright 2019 Your name here, unless otherwise noted.
# 
class module1 {
$webserver = $osfamily ? {

                'redhat' => 'httpd',
                'debian' => 'apache2',
                 default => 'apache2',
        }

        package { $webserver:
                ensure => 'present',
        }

        service { $webserver:
                ensure => 'running',
                enable => 'true',
        }

        file { 'index.html':
                ensure => 'present',
                path   => '/var/www/html/index.html',
                content => "<!doctype html>
                        <title>WELCOME PAGE</title>
                        <style>
                        body { text-align: center; padding: 150px;}
                        h1 {font-size: 50px; }
                        body {font: 20px Helvetica, sans-serif; color: #333;}
                        article {display: bolck text-align: left; width: 650px; margin: 0 auto; }
                        a { color: #dc8100; text-decoration: none;}
                        a:hover {color: #333; text-decoration: none;}
                        </style>
                        <article>
                        <h2> hello wel come</h2>
                        <div>
                        <p>puppet is better than ansible</p>
                        </div>
                        </article>"


        }
}
