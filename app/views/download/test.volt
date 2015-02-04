<div class="header-line">
    <div class="size-wrap">
        <h1 class="header-line-title title-white">Test</h1>
    </div>
</div>

<div class="size-wrap">
    <ul class="tabs clear-fix">
        <li><a class="tab-link" href="{{ url(['for': 'download', 'language': language]) }}"><span class="span-ul">{{ tr('download_linux') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'windows', 'language': language]) }}"><span class="span-ul">{{ tr('download_windows') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'tools', 'language': language]) }}"><span class="span-ul">{{ tr('download_developer_tools') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'vagrant', 'language': language]) }}"><span class="span-ul">Vagrant</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-type', 'type': 'stubs', 'language': language]) }}"><span class="span-ul">{{ tr('download_ide_stubs') }}</span></a></li>
        <li><a class="tab-link" href="{{ url(['for': 'download-location', 'language': language]) }}"><span class="span-ul">{{ tr('download_location') }}</span></a></li>
        <li><a class="tab-link active" href="{{ url(['for': 'download-test', 'language': language]) }}"><span class="span-ul">{{ tr('download_test') }}</span></a></li>
    </ul>

    <div align="center">
        
        <div class="flash">
            <span id="message"></span>    
        </div>
        
        <form method="post" id="add-email-form">
            <div>{{ form.label('email') }}</div>
            <div>
                {{ form.render("email") }}
                <input type="submit" value="Добавить" />
            </div>
        </form>
        
        <div id="last-emails">{{ partial("download/lastEmails", ['lastEmails': lastEmails]) }}</div>
    </div>
</div>