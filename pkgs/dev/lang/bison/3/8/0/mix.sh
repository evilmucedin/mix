{% extends '//dev/lang/bison/3/8/mix.sh' %}

{% block bison_bootstrap %}
dev/lang/bison/3/7/mix.sh
{% endblock %}

{% block bison_patch %}
sed -e 's|%header|%defines|' -i src/parse-gram.y
{% endblock %}

{% block bld_libs %}lib/c/mix.sh{% endblock %}
