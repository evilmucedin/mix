{% extends '//mix/template/base.sh' %}

{% block deps %}
# bld lib/bzip2 env/tools
{% endblock %}

{% block install %}
cd ${out} && cp -R $(dirname $(which bzip2)) ./
{% endblock %}
