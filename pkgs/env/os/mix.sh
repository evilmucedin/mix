{% extends '//mix/template/mix.json' %}

{% block lib_deps %}
env/release/mix.sh
env/os/{{mix.platform.target.os}}/mix.sh
{% endblock %}
