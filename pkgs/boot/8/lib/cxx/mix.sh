{% extends '//lib/cxx/mix.sh' %}

{% block bld_deps %}
{{'boot/7/lib/linux/mix.sh' | linux}}
boot/7/cmake/mix.sh
boot/7/python/mix.sh
boot/8/env/std/mix.sh
{% endblock %}
