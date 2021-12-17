{% extends 'script.json' %}

{% block script_body %}
{% block prologue %}
{% if setx %}
set -x; env
{% endif %}

source_env() {
    OFS=${IFS}; IFS=':'; for x in ${1}; do
        IFS=${OFS}; . "${x}/env"; IFS=':'
    done; IFS=${OFS}
}

set -e
set -u

cd /

# init
export PATH=
export CMPATH=
export COFLAGS=
export CMFLAGS=
export PYTHONPATH=
export ACLOCAL_PATH=
export PKG_CONFIG_PATH=
export PYTHONDONTWRITEBYTECODE=1

source_env "${MIX_B_DIR}"

rm -rf ${out}
mkdir -p ${out}

rm -rf ${tmp}
mkdir -p ${tmp}

cd ${tmp} && mkdir tmp

export TMPDIR=${PWD}/tmp

{% endblock %}

(
    set -eu

# suc
{% block sh_script %}
{% endblock %}
# euc
)

{% block epilogue %}
{% block cleanup_pkg %}
rm -rf ${out}/lib/*.so* ${out}/lib/*.la* ${out}/lib/*.dylib* || true
{% endblock %}
rm -rf ${tmp}
{% endblock %}
{% endblock %}

{% block script_kind %}
sh
{% endblock %}
