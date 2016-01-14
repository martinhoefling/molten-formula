==============
molten-formula
==============

A saltstack formula to install, configure and maintain the `Molten Salt UI <https://github.com/martinhoefling/molten>`_.
There are different states to set up required packages and the Salt API server, configure the Salt API for molten and
A state to download and install a specific molten package.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``molten.full``
---------------

Full setup of molten, if you're not configuring salt-api individually (pulls all three states).

``molten.api-packages``
-----------------------

Installs the salt-api package, and starts the associated salt-api service.

``molten.api-configuration``
----------------------------

Configure Salt REST API for molten. Allow usage of REST API to a specified user set, authenticated locally via PAM. Bind to loopback or public interface (see pillar.example).
Note: Do not use binding to public interface in insecure networks at the moment. Currently, no TLS is configured such that authentication information can be sniffed by third parties having acces to the network.

``molten``
----------

Downloads and installs the molten package (/opt/molten by default). Only use this state alone if you set-up and configure the Salt REST api on your own.
