{% extends '//bin/kernel/t/mix.sh' %}

{% block kernel_name %}
5.16.6
{% endblock %}

{% block fetch %}
{% include 'ver.sh' %}
{% endblock %}

{% block host_libs %}
{{super()}}
bin/kernel/16/headers
{% endblock %}

{% block configure %}
{{super()}}
base64 -d << EOF > .config
{% include 'cfg/base64' %}
EOF
{% endblock %}
