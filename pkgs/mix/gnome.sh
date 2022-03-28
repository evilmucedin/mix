{% extends 'meson.sh' %}

{% block std_box %}
bin/glib/codegen
bld/scripts/gnome
{{super()}}
{% endblock %}

{% block meson_binary %}
bin/meson/better
{% endblock %}

{% import 'hooks.sh' as hooks %}

{% block step_install %}
{% if bin %}
{{hooks.install_glib_schemas()}}
{% endif %}
{{super()}}
{% endblock %}
