{% extends '//mix/template/meson.sh' %}

{% block fetch %}
https://github.com/systemd/systemd/archive/refs/tags/v249.tar.gz
8e8adf909c255914dfc10709bd372e69
{% endblock %}

{% block lib_deps %}
lib/c/mix.sh
{% endblock %}
