# url https://github.com/westes/flex/archive/refs/tags/flex-2-5-10.tar.gz
# md5 4e57770c7dfc2b1d113729f62d6ae3b6
# url https://raw.githubusercontent.com/fosslinux/live-bootstrap/master/sysa/flex-2.5.11/patches/scan_l.patch
# md5 ab3764132c0ed5b7f5829b78eb5a849a
# bld dev/build/make/mix.sh
# bld dev/lang/lex/mix.sh
# bld dev/lang/byacc/mix.sh
# bld env/std/mix.sh
# bld dev/build/automake/mix.sh
# bld dev/build/autoconf/mix.sh
# bld dev/build/libtool/mix.sh

build() {
    $untar ${src}/flex* && cd flex*

    (
        mkdir tool && cd tool

        ln -s $(command -v lex) flex
        setup_compiler
    )

    patch < ${src}/scan_l.patch || true

    export PATH="${PWD}/tool:${PATH}"

    echo 'all:' > po/Makefile.in.in
    dash ./autogen.sh 2>1 > ./autogen.log
    dash ./configure ${COFLAGS} --prefix="${out}"
    make flex
    make install
}
