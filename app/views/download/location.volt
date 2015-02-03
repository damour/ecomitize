<div class="header-line">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">Location</h1>
    </div>
</div>

<div class="size-wrap">
    <ul class="tabs clear-fix">
        <li><a class="tab-link" href="{{ url(['for': 'download', 'language': language]) }}"><span class="span-ul">{{ tr('download_linux') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'windows', 'language': language]) }}"><span class="span-ul">{{ tr('download_windows') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'tools', 'language': language]) }}"><span class="span-ul">{{ tr('download_developer_tools') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'vagrant', 'language': language]) }}"><span class="span-ul">Vagrant</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'stubs', 'language': language]) }}"><span class="span-ul">{{ tr('download_ide_stubs') }}</span></a></li>
        <li><a class="tab-link active" href="{{ url(['for': 'download-location', 'language': language]) }}"><span class="span-ul">{{ tr('download_location') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-test', 'language': language]) }}"><span class="span-ul">{{ tr('download_test') }}</span></a></li>
    </ul>

    <div align="center">
        <iframe
                width="600"
                height="450"
                frameborder="0" style="border:0"
                src="https://www.google.com/maps/embed/v1/place?key={{ googleApiKey }}&q={{ location }}">
        </iframe>
    </div>
</div>