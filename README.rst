Centro Educativo Montessori E-Commerce theme
============================================

Centro Educativo Montessori Debraning is an elegant, customizable theme for 
`Open edX <https://open.edx.org>`_'s `E-Commerce <https://github.com/edx/ecommerce>`_ 
Webapp extension.

.. figure:: ./screenshots/01-landing-page-ecommerce.png
  :alt: Platform landing page for E-Commerce Webapp
  :align: center
  :width: 1280px
  :height: 960px

  Platform landing page for E-Commerce Webapp

**Note**: This version of the Centro Educativo Montessori Debraning E-Commerce theme
is compatible with the Koa release of Open edX.

You can view the theme in action at https://ecommerce.centromontessori.edu.mx/courses.

Installation
------------

Centro Educativo Montessori Debraning E-Commerce was specially developed to be used with
`Tutor <https://docs.overhang.io>`_ (at least v11.0.0) and 
`uabierta-ecommerce-theme <https://github.com/eol-uchile/uabierta-ecommerce-theme>`_. 
If you have not installed Open edX with Tutor, then installation instructions will vary.

Clone the theme repository::

    git clone https://github.com/macagua/centromontessori-edx-ecommerce-theme

Render your theme::

    tutor config render --extra-config ./centromontessori-edx-ecommerce-theme/config.yml \
        ./centromontessori-edx-ecommerce-theme/ \
        "$(tutor config printroot)/env/build/openedx/themes/centromontessori-edx-ecommerce-theme"

Stop your platform::

    tutor local stop

Rebuild the Openedx docker image::

    tutor images build openedx

Restart your platform::

    tutor local start -d

You will then have to enable the "centromontessori-edx-ecommerce-theme" theme, as per the
`Tutor documentation <https://docs.tutor.overhang.io/local.html#setting-a-new-theme>`_::

    tutor local settheme centromontessori-edx-ecommerce-theme ecommerce \
        $(tutor config printvalue ECOMMERCE_HOST)

Upgrade
-------

To upgrade the Centro Educativo Montessori Debraning E-Commerce theme from a previous version,
simply pull the changes from the git repository::

    cd centromontessori-edx-ecommerce-theme/
    git pull

Then run the commands above starting from ``tutor config render...``.

Customization
-------------

Setting custom values
~~~~~~~~~~~~~~~~~~~~~

A few settings in the theme can be easily customised: this includes the theme primary color,
landing page tagline, footer legal links. Theme settings are defined in the 
`config.yml <https://github.com/macagua/centromontessori-edx-ecommerce-theme/blob/master/config.yml>`_
file at the root of the repository. You can override all or part of those settings by creating
you own ``config-custom.yml`` file. Then, render the theme with::

    tutor config render \
        --extra-config ./centromontessori-edx-ecommerce-theme/config.yml \
        --extra-config ./centromontessori-edx-ecommerce-theme/config-custom.yml \
        ./centromontessori-edx-ecommerce-theme \
        "$(tutor config printroot)/env/build/openedx/themes/centromontessori-edx-ecommerce-theme"

Changing the default logo and other images
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The theme images are stored in `centromontessori-edx-ecommerce-theme/static/images <https://github.com/macagua/centromontessori-edx-ecommerce-theme/tree/master/static/images>`_
for the E-Commerce Webapp. To use custom images in your theme, just replace the files stored in these folders
with your own prior to running ``tutor config render``.

Palette colors
~~~~~~~~~~~~~~

- Icon color: #71bd1f
- Background color: #f7f7f7
- Words color: #4c4c4c

License
-------

This work is licensed under the terms of the `GNU Affero General Public License (AGPL) <https://github.com/macagua/centromontessori-edx-ecommerce-theme/blob/master/LICENSE.txt>`_.
