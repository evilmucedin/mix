{% extends '//dev/lang/bison/351/stage0/package.sh' %}

{% block bison %}
# bld dev/lang/bison/351/stage0
{% endblock %}

{% block patch %}
rm src/parse-gram.c src/parse-gram.h
{% endblock %}
