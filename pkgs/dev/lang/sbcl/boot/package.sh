{% extends '//util/template.sh' %}

{% block fetch %}
# url https://nav.dl.sourceforge.net/project/sbcl/sbcl/2.1.7/sbcl-2.1.7-source.tar.bz2
# md5 3f21dbcab14b4aa51b9a9f03c2b78b9c
{% endblock %}

{% block deps %}
# bld lib/z {{'lib/linux' | linux}}
# bld dev/build/make env/std
{% endblock %}

{% block more_deps %}
# bld dev/lang/ecl
{% endblock %}

{% block patch %}
sed -e 's/lispobj \*static_code_space_free_pointer/extern lispobj \*static_code_space_free_pointer/' -i src/runtime/globals.h
sed -e 's/size_t os_vm_page_size/extern size_t os_vm_page_size/' -i src/runtime/arm64-bsd-os.c
{% endblock %}

{% block boot_lisp %}
ecl -norc
{% endblock %}

{% block cflags %}
export CPPFLAGS="-DRTLD_DEFAULT=RTLD_LOCAL ${CPPFLAGS}"
{% endblock %}

{% block build %}
ulimit -s 60000

dash ./make.sh \
    --prefix=${out} \
    --xc-host='{{self.boot_lisp().strip()}}' \
    --with-sb-ldb \
    --with-sb-thread \
    --with-sb-core-compression
{% endblock %}

{% block install %}
dash ./install.sh
{% endblock %}
