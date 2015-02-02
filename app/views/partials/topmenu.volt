<ul class="header-nav">
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'download', 'language': language], tr('download'), 'class' : 'header-nav-link') }}</li>
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'testimonials', 'language': language], tr('testimonials'), 'class' : 'header-nav-link') }}</li>
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'support', 'language': language], tr('support'), 'class' : 'header-nav-link') }}</li>
    <li>{{ link_to(['for': 'pages', 'pageSlug': 'consulting', 'language': language], tr('consulting'), 'class' : 'header-nav-link') }}</li>
    <li><select id='lng_select' onchange="javascript:location.href = this.value;">{{ languages_available }}</select></li>
</ul>
