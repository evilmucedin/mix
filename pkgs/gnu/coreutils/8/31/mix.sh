{% extends '//gnu/coreutils/t/mix.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/coreutils/coreutils-8.31.tar.xz
0009a224d8e288e8ec406ef0161f9293
{% endblock %}

{% block bld_tool %}
dev/lang/byacc
{{super()}}
{% endblock %}

{% block configure_flags %}
{{super()}}
--without-gmp
{% endblock %}

{% block bld_libs %}
lib/c
{% endblock %}
