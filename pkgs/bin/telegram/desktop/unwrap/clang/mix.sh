{% extends '//bin/telegram/desktop/unwrap/t/mix.sh' %}

{% block ninja_threads %}10{% endblock %}

{% block setup %}
{{super()}}
export CXXFLAGS="-std=c++20 ${CXXFLAGS}"
{% endblock %}
