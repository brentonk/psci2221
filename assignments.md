---
category: assignment
title: Assignments
layout: default
---

# Assignments

{% for assignment in site.assignments %}
* [{{assignment.title}}]({{site.baseurl}}{{assignment.url}})  
{% endfor %}
