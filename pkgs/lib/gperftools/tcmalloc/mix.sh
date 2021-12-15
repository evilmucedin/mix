{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/gperftools/gperftools/archive/refs/tags/gperftools-2.9.1.tar.gz
e340f1b247ff512119a2db98c1538dc1
{% endblock %}

{% block lib_deps %}
lib/c/mix.sh
lib/c++/mix.sh
{% endblock %}

{% block bld_tool %}
dev/build/auto/conf/2/69/mix.sh
dev/build/auto/make/1/16/mix.sh
{% endblock %}

{% block patch %}
sed -e 's|-lstdc++||g' -i Makefile.am
{% endblock %}

{% block configure_flags %}
--enable-minimal
--enable-sized-delete
{% endblock %}

{% block install %}
{{super()}}
rm ${out}/lib/libtcmalloc_minimal_debug.a
{% endblock %}
