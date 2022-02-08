{% extends '//bin/kernel/t/mix.sh' %}

{% block kernel_name %}
5.14.21
{% endblock %}

{% block fetch %}
{% include 'ver.sh' %}
{% endblock %}

{% block host_libs %}
{{super()}}
bin/kernel/14/headers
{% endblock %}

{% block configure %}
{{super()}}
base64 -d << EOF > .config
{% include 'cfg/base64' %}
EOF
{% endblock %}
