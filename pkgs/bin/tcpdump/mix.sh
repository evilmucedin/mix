{% extends '//mix/autohell.sh' %}

{% block fetch %}
https://www.tcpdump.org/release/tcpdump-4.99.1.tar.gz
sha:79b36985fb2703146618d87c4acde3e068b91c553fb93f021a337f175fd10ebe
{% endblock %}

{% block lib_deps %}
lib/c
lib/pcap
{% endblock %}
