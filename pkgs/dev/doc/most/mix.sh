{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://www.jedsoft.org/releases/most/most-5.1.0.tar.gz
0dc19e6045f689686e8579b2835cfdc6
{% endblock %}

{% block bld_libs %}
lib/c/mix.sh
lib/slang/mix.sh
{% endblock %}
