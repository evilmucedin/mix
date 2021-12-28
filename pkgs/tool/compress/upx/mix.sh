{% extends '//mix/template/make.sh' %}

{% block fetch %}
https://github.com/upx/upx/releases/download/v3.96/upx-3.96-src.tar.xz
bf5564f33fe9062bc48b53abd4b34223
{% endblock %}

{% block bld_libs  %}
lib/z/mix.sh
lib/c/mix.sh
lib/c++/mix.sh
lib/ucl/mix.sh
{% endblock %}

{% block bld_tool %}
dev/tool/bash/mix.sh
dev/tool/perl/mix.sh
{% endblock %}

{% block setup %}
export CFLAGS="-w ${CFLAGS}"
{% endblock %}

{% block unpack %}
{{super()}}
cd src
{% endblock %}

{% block install %}
mkdir ${out}/bin && cp upx.out ${out}/bin/upx
{% endblock %}
