{% extends '//mix/template/meson.sh' %}

{% block fetch %}
https://wayland.freedesktop.org/releases/wayland-1.20.0.tar.xz
5095264157bf0565b921ceaf9d698d98
{% endblock %}

{% block lib_deps %}
lib/ffi/mix.sh
{% endblock %}

{% block bld_libs %}
lib/c/mix.sh
lib/expat/mix.sh
lib/xml2/mix.sh
{% endblock %}

{% block meson_flags %}
-Ddocumentation=false
-Dtests=false
{% endblock %}

{% block install %}
{{super()}}
mv ${out}/lib/pkgconfig ${out}/share/
{% endblock %}
