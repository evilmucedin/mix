{% extends '//mix/template/proxy.sh' %}

{% block lib_deps %}
lib/bsd/mix.sh
{% endblock %}

{% block env %}
export CPPFLAGS="-I${lib_bsd}/include/bsd -DLIBBSD_OVERLAY=1 \${CPPFLAGS}"
{% endblock %}
