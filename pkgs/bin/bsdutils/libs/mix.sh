{% extends '//mix/hub.sh' %}

{% block lib_deps %}
{% if linux %}
lib/fts
lib/linux
lib/rpmatch
{% endif %}

lib/c
lib/xo
lib/c++
lib/edit
lib/curses
lib/openssl
{% endblock %}
