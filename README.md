<!DOCTYPE html>
<html>
<head>
    <style>
        code {
            font-family: monospace;
            background-color: #555555;
            color: #ffffff;
        }
    </style>
</head>
<body>

<h1>Readme</h1>

Dieses Readme beinhaltet Erläuterungen zu folgenden Punkten:<br>

<ul>
<li>Aufgabenstellung / Anforderungen des Stakeholders</li>
<li>Planung und Dokumentation der User Stories</li>
<li>Dokumentation zum Projekt 'Webko'</li>
<li>Systemvoraussetzungen / Installationshinweise</li>
<li>Heroku Deployment</li>
</ul>
<br>
<h2>Aufgabenstellung / Anforderungen des Stakeholders</h2>
<p></p>

<h2>Planung und Dokumentation der User Stories</h2>
<p>Wir haben uns bei der Planung und Dokumentation der User Stories für Taiga.io entschieden, weil sich das Tool
    einfach nach den eigenen Bedarf anpassen lässt. Zudem sind für die Nutzung keine Kosten angefallen.<br>
    In unserem Taiga Projekt wurde fast ausschließlich die Kanban Funktionalität genutzt - diese ist unter folgendem Link zu finden:<br>
    <a href="https://tree.taiga.io/project/derschleicher-we-ii/kanban">https://tree.taiga.io/project/derschleicher-we-ii/kanban</a>

</p>

<h2>Dokumentation zum Projekt 'Webko'</h2>
<p>Die automatisch erstellte Dokumentation (rake doc:app) zu unserem Projekt ist unter folgendem Link zu finden:<br>
    <a href="http://doc.dbwebspace.de">Dokumentation (Online)</a><br>
    <a href="doc/app/README_rdoc.html">Dokumentation (Offline)</a><br>
    Aktueller Stand:<br>
    Files:      36
<code>
    Classes:    20 ( 0 undocumented)
    Modules:     8 ( 0 undocumented)
    Constants:   0 ( 0 undocumented)
    Attributes:  1 ( 0 undocumented)
    Methods:    40 (15 undocumented)

    Total:      69 (15 undocumented)
    78.26% documented
    </code>
</p>

<h2>Systemvoraussetzungen / Installationshinweise</h2>
<ul>

<li>Ruby version</li>
    <code>ruby 2.2.4p230</code>


<li>Systemabhängigkeiten</li>

<li>Konfiguration</li>
    <code>
    Using rake 10.5.0
    Using i18n 0.7.0
    Using json 1.8.3
    Using minitest 5.8.4
    Using thread_safe 0.3.5
    Using builder 3.2.2
    Using erubis 2.7.0
    Using mini_portile2 2.0.0
    Using rack 1.6.4
    Using mime-types 2.99
    Using sass 3.4.21
    Using thor 0.19.1
    Using coffee-script-source 1.10.0
    Using execjs 2.6.0
    Using formtastic_i18n 0.5.0
    Using arel 6.0.3
    Using bundler 1.11.2
    Using concurrent-ruby 1.0.0
    Using tilt 2.0.2
    Using ast 2.2.0
    Using bcrypt 3.1.10
    Using bcrypt-ruby 3.1.1.rc1
    Using debug_inspector 0.0.2
    Using byebug 8.2.2
    Using cancancan 1.13.1
    Using coderay 1.1.0
    Using orm_adapter 0.5.0
    Using diff-lcs 1.2.5
    Using ffi 1.9.10
    Using formatador 0.2.5
    Using rb-fsevent 0.9.7
    Using lumberjack 1.0.10
    Using nenv 0.3.0
    Using shellany 0.0.1
    Using method_source 0.8.2
    Using slop 3.6.0
    Using guard-compat 1.2.1
    Using rspec-support 3.4.1
    Using powerpack 0.1.1
    Using rainbow 2.1.0
    Using ruby-progressbar 1.7.5
    Using unicode-display_width 0.3.1
    Using multi_json 1.11.2
    Using pg 0.18.4
    Using puma 2.16.0
    Using rails_serve_static_assets 0.0.5
    Using rails_stdout_logging 0.0.4
    Using rolify 5.0.0
    Using spring 1.6.3
    Using sqlite3 1.3.11
    Using timeliness 0.3.8
    Using faker 1.6.1
    Using rdoc 4.2.2
    Using tzinfo 1.2.2
    Using nokogiri 1.6.7.2
    Using rack-test 0.6.3
    Using warden 1.2.6
    Using mail 2.6.3
    Using bourbon 4.2.6
    Using coffee-script 2.4.1
    Using autoprefixer-rails 6.3.3
    Using uglifier 2.7.2
    Using sprockets 3.5.2
    Using parser 2.3.0.6
    Using binding_of_caller 0.7.2
    Using rb-inotify 0.9.7
    Using notiffany 0.0.8
    Using pry 0.10.3
    Using rspec-core 3.4.2
    Using rspec-expectations 3.4.0
    Using rspec-mocks 3.4.1
    Using rails_12factor 0.0.3
    Using validates_timeliness 4.0.2
    Using sdoc 0.4.1
    Using activesupport 4.2.5.1
    Using loofah 2.0.3
    Using bootstrap-sass 3.3.6
    Using rubocop 0.37.2
    Using listen 3.0.6
    Using rspec 3.4.0
    Using rails-deprecated_sanitizer 1.0.3
    Using globalid 0.3.6
    Using arbre 1.0.3
    Using activemodel 4.2.5.1
    Using factory_girl 4.5.0
    Using jbuilder 2.4.1
    Using rails-html-sanitizer 1.0.3
    Using guard 2.13.0
    Using rails-dom-testing 1.0.7
    Using activejob 4.2.5.1
    Using activerecord 4.2.5.1
    Using guard-rspec 4.6.4
    Using guard-rubocop 1.2.0
    Using actionview 4.2.5.1
    Using polyamorous 1.3.0
    Using actionpack 4.2.5.1
    Using actionmailer 4.2.5.1
    Using railties 4.2.5.1
    Using formtastic 3.1.3
    Using has_scope 0.6.0
    Using kaminari 0.16.3
    Using sprockets-rails 3.0.1
    Using ransack 1.7.0
    Using simple_form 3.2.1
    Using coffee-rails 4.1.1
    Using responders 2.1.1
    Using jquery-rails 4.1.0
    Using jquery-ui-rails 5.0.5
    Using factory_girl_rails 4.6.0
    Using rails-i18n 4.0.8
    Using rspec-rails 3.4.2
    Using rails 4.2.5.1
    Using sass-rails 5.0.4
    Using web-console 2.3.0
    Using turbolinks 2.5.3
    Using inherited_resources 1.6.0
    Using devise 3.5.6
    Using simple_calendar 2.0.6
    Using activeadmin 1.0.0.pre2 from git://github.com/activeadmin/activeadmin.git (at master@f7483e3)
        </code>
    <li>Erstellung der Datenbank</li>

<li>Initialisierung der Datenbank</li>

<li>Ausführung der RSpec Test</li>

Services (job queues, cache servers, search engines, etc.)

</ul>


<h2>Heroku Deployment</h2>
<p>Den aktuellesten Master Branch des Projektes haben wir auf Heroku deployt.<br>
Die URL lautet <a href="https://webko.herokuapp.com/"> https://webko.herokuapp.com/</a>
</p>
</body>
