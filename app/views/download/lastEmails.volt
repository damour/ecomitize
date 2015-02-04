{% for email in lastEmails %}
    {% if loop.first %}
        <ul id="last-emails-table">
    {% endif %}
        <li>{{ email.email|e }}</li>
    {% if loop.last %}
        </ul>
    {% endif %}
{% endfor %}