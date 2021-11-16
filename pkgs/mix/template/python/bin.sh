{% extends 'freeze.sh' %}

{% block std_env %}
dev/build/make/mix.sh
tool/compress/upx/mix.sh
{{super()}}
{% endblock %}

{% block build %}
python3 $(dirname $(command -v python3))/freeze/freeze.py -m {{self.entry_point()}} $(cat modules)
make CC=clang -j ${make_thrs}
#strip {{self.bin()}}
#upx {{self.bin()}}
{% endblock %}

{% block install %}
mkdir -p ${out}/bin && cp {{self.bin()}} ${out}/bin/
{% endblock %}
