{% extends '//lib/drm/t/mix.sh' %}

{% block run_data %}
lib/drm/data
{% endblock %}

{% block bld_tool %}
{{super()}}
bld/scripts/reloc
{% endblock %}

{% block configure %}
{{super()}}
relocate "${DRM_DATA}"
{% endblock %}
