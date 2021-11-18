{% extends '//dev/lang/clang/mix.sh' %}

{% block bld_libs %}
{{'boot/7/lib/linux/mix.sh' | linux}}
{{'lib/darwin/framework/CoreFoundation/mix.sh' | darwin}}
boot/7/lib/cxx/mix.sh
{% endblock %}

{% block bld_deps %}
boot/7/cmake/mix.sh
boot/7/python/mix.sh
boot/6/env/std/mix.sh
{% endblock %}
