{% extends '//util/autohell.sh' %}

{% block fetch %}
# url https://invisible-island.net/datafiles/release/byacc.tar.gz
# md5 c66b26a5dbce291e5c3c531e8d692834
{% endblock %}

{% block deps %}
# bld dev/build/make env/std
{% endblock %}

{% block postinstall %}
cd ${out}/bin && ln -s yacc byacc
{% endblock %}
