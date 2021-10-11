{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://github.com/ivmai/libatomic_ops/releases/download/v7.6.10/libatomic_ops-7.6.10.tar.gz
# md5 90a78a84d9c28ce11f331c25289bfbd0
{% endblock %}

{% block deps %}
# bld dev/build/make env/std
{% endblock %}

{% block env %}
export CPPFLAGS="-I${out}/include \${CPPFLAGS}"
export LDFLAGS="-L${out}/lib -latomic_ops \${LDFLAGS}"
export PKG_CONFIG_PATH="${out}/lib/pkgconfig:\${PKG_CONFIG_PATH}"
{% endblock %}
