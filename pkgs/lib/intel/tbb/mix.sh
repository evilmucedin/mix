{% extends '//mix/template/cmake.sh' %}

{% block fetch %}
https://github.com/oneapi-src/oneTBB/archive/refs/tags/v2021.4.0.tar.gz
fa317f16003e31e33a57ae7d888403e4
{% endblock %}

{% block lib_deps %}
lib/c/mix.sh
lib/c++/mix.sh
{% endblock %}

{% block bld_libs %}
{% if target.os == 'linux' %}
lib/linux/mix.sh
{% endif %}
{% endblock %}

{% block setup_tools %}
ln -s $(which llvm-install-name-tool) install_name_tool
{% endblock %}

{% block patch %}
sed -e 's|define __TBB_RESUMABLE_TASKS.*|define __TBB_RESUMABLE_TASKS 0|' -i include/oneapi/tbb/detail/_config.h

cd src/tbb && cat itt_notify.cpp \
    | grep -v '#pragma weak'     \
    > _ && mv _ itt_notify.cpp
{% endblock %}

{% block cmake_flags %}
-DTBB_TEST=OFF
-DTBB_STRICT=OFF
-DTBBMALLOC_BUILD=OFF
{% endblock %}
