  
{%- extends 'hide.tpl' -%}{% block body %}---
layout: notebooks
parent: Reports
{% for key in resources %}
    {%- if key not in ["metadata", "output_extension", "inlining", "raw_mimetypes", "global_content_filter", "layout", "parent"] -%}
        {%- if resources[key] != "" -%}
            {{ key }}: {{ resources[key] }}
        {%- endif -%}
    {% endif %}
{% endfor -%}
---

<!--
#################################################
### THIS FILE WAS AUTOGENERATED! DO NOT EDIT! ###
#################################################
# file to edit: {{ resources.nb_path }}
-->

<div class="container" id="notebook-container">
{{ "{% raw %}" }}
    {{ super()  }}
{{ "{% endraw %}" }}
</div>
{%- endblock body %}