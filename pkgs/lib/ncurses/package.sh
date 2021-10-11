{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://ftp.gnu.org/pub/gnu/ncurses/ncurses-6.2.tar.gz
# md5 e812da327b1c2214ac1aed440ea3ae8d
{% endblock %}

{% block deps %}
# bld env/std tool/compress/minigzip boot/final/env/tools
{% endblock %}

{% block toolconf %}
cat << EOF > strip
#!$(which dash)
EOF

chmod +x strip
{% endblock %}

{% block coflags %}
--without-shared
--without-debug
--without-ada
--enable-widec
--enable-pc-files
--enable-overwrite
--enable-ext-colors
--enable-termcap
--with-pkg-config
--with-termlib
--without-cxx
--without-cxx-binding
{% endblock %}

{% block postinstall %}
cd ${out}/lib && (for i in `ls *.a`; do q=`echo $i | tr -d 'w'`; ln -s $i $q; done)
{% endblock %}

{% block env %}
export COFLAGS="--with-curses=${out} --with-ncurses=${out} \${COFLAGS}"
export CPPFLAGS="-I${out}/include \${CPPFLAGS}"
export LDFLAGS="-L${out}/lib -lncurses -ltinfo -lpanel -lmenu -lform \${LDFLAGS}"
{% endblock %}
