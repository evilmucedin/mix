{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/wolfSSL/wolfssl/archive/refs/tags/v5.0.0-stable.tar.gz
d2044f756db0853dd2da0a90dd42ab62
{% endblock %}

{% block bld_deps %}
dev/build/autoconf/2.71/mix.sh
dev/build/automake/1.16.3/mix.sh
env/autohell/mix.sh
{% endblock %}

{% block autoreconf %}
dash ./autogen.sh
{% endblock %}

{% block coflags %}
--enable-all
--enable-opensslextra
--enable-opensslall
--enable-base64encode
--enable-pkcs11
--enable-reproducible-build
--enable-tls13
{% endblock %}
