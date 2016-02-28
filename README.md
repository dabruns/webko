<h1>Readme des Projektes 'Webko'</h1>

Dieses Readme beinhaltet Erläuterungen zu folgenden Punkten:<br>

<ol>
<li>Aufgabenstellung / Anforderungen des Stakeholders</li>
<li>Planung und Dokumentation der User Stories</li>
<li>Automatisch generierte Dokumentation zum Projekt 'Webko'</li>
<li>Systemvoraussetzungen / Installationshinweise</li>
    <li>Login Daten</li>
    <li>Service: Rubocop / RSpec Guard / Tests</li>
<li>Heroku Deployment</li>
    <li>Bedienungsanleitung</li>
    <li>Zukünftige Features</li>

</ol>

<br>

<h2>Aufgabenstellung / Anforderungen des Stakeholders</h2>
<p>
    Der Stakeholder ist unserem Fall die Multifit GmbH & Co.KG. Multifit deckt die Rehatechnik sowie den Sonderbau für
    Schwerstbehinderte- und Kinderversorgungen ab. Weiterhin steht die personliche Beratung als Komplettversorger im Gesundheitswesen im Mittelpunkt.
    Zur Verbesserung der Kommunikation innerhalb des Betriebs wurden wir beauftragt,
    eine möglichst einfache Kommunikationsplattform zu erstellen. Die Hauptfunktion ist hierbei das schwarze Brett.
    Die Administration (der EDV) bzw. die Geschäftsführung hat die Möglichkeit wichtige Bekanntmachungen/Anliegen/Informationen zu verfassen.Die Mitarbeiter können diese bei Bedarf kommentieren.
Zusätzlich wurden zur besseren Planung drei unabhängige Kalender erstellt. Dies ist zunächst ein Kalender
für die Nutzung von Kraftfahrzeugen; in diesem können Mitarbeiter Zeiträume eintragen, wann sie ein bestimmtes
Auto benötigen. Die gleiche Funktion hat der Kalender für die Raumplanung. Hier werden allerdings Räume für die
Verwendung ausgewählt. Der dritte Kalender betrifft die Urlaubsplanung. Mitarbeiter können in diesem
ihren genehmigten Urlaub (ganztags/halbtags) eintragen. Abgerundet wird die webbasierte Kommunikationsoberfläche ('Webko') durch
einen Administrationsbereich, der die Verwaltung für Nutzer, Nutzergruppen, Autos und Räume übernimmt.
</p>

<h2>Planung und Dokumentation der User Stories</h2>
<p>Wir haben uns bei der Planung und Dokumentation der User Stories für Taiga.io entschieden, weil sich das Tool
    einfach nach unserem Bedarf anpassen lässt. Zudem sind für die Nutzung keine Kosten angefallen.<br>
    In unserem Taiga Projekt wurde fast ausschließlich die Kanban Funktionalität genutzt - diese ist unter folgendem
    Link zu finden:<br>
    <a href="https://tree.taiga.io/project/derschleicher-we-ii/kanban" target="_blank">
        https://tree.taiga.io/project/derschleicher-we-ii/kanban</a><br>
    (Login über 'malagant_we2_project' - Passwort: 'test1234')

</p>

<h2>Dokumentation zum Projekt 'Webko'</h2>
<p>
Die automatisch erstellte Dokumentation (rake doc:app) zu unserem Projekt ist unter folgendem Link zu finden:<br>
    <a href="http://doc.dbwebspace.de" target="_blank">Dokumentation (Online)</a><br>
Die Rohdateien der Dokumentation beifnden sich im Unterordner "/doc/app".<br>

<h2>Systemvoraussetzungen / Installationshinweise</h2>
<p>
    Auszuführende Eingaben in der Shell sind wie folgt markiert:<br>
<code>Eingabe</code><br>
Diese sind zwingend vor der Nutzung der webbasierten Kommunikationsfläche auszuführen.<br>


<h3>Ruby Version</h3>
    ruby 2.2.4p230
<h3>Rails Version</h3>
    Rails 4.2.5.1
<h3>Browser Kompatibilität</h3>
<p>
    Die Ansicht wurde für <b>Mozilla Firefox</b> optimiert.<br>
    Für andere Browser können wir keine optimale Ansicht garantieren.
</p>


<h3>Systemabhängigkeiten</h3>
<p>
class Comment belongs_to :message<br>
class Car has_many :carevents<br>
class Carevent belongs_to :car, belongs_to :user<br>
class Room has_many :roomplans<br>
class Roomplan belongs_to :room, belongs_to :user<br>
class Vacationplan belongs_to :user<br>
class Group has_many :user_groups, has_many :users<br>
class User has_many :carevents, has_many :roomplans, has_many :user_groups, has_many :groups<br>
class Role has_and_belongs_to_many :users<br>
class UserGroup belongs_to :user, belongs_to :group<br>
<br>
<b>
one message : many comments<br>
one car : many carevents<br>
one room : many roomplans<br>
one user : many roomplans<br>
one user : many vacationplans<br>
    one user : many carevents<br>
    one user : many roles<br>
one group : many user_groups<br>
one group : many users<br>
</b>
<p>


<h3>Konfiguration</h3>
<p>
    Zur Installation aller benötigten Gems folgenden Befehl ausführen: <br>
    <code>bundle install</code><br>
   <br>
    <b>Genutzte Gems:</b><br>
<br>
Using actionmailer 4.2.5.1<br>
Using actionpack 4.2.5.1<br>
Using actionview 4.2.5.1<br>
Using activeadmin 1.0.0.pre2 from git://github.com/activeadmin/activeadmin.git (at master@f7483e3)<br>
Using activejob 4.2.5.1<br>
Using activemodel 4.2.5.1<br>
Using activerecord 4.2.5.1<br>
Using activesupport 4.2.5.1<br>
Using arbre 1.0.3<br>
Using arel 6.0.3<br>
Using ast 2.2.0<br>
Using autoprefixer-rails 6.3.3<br>
Using bcrypt 3.1.10<br>
Using bcrypt-ruby 3.1.1.rc1<br>
Using binding_of_caller 0.7.2<br>
Using bootstrap-sass 3.3.6<br>
Using bourbon 4.2.6<br>
Using builder 3.2.2<br>
Using bundler 1.11.2<br>
Using byebug 8.2.2<br>
Using cancancan 1.13.1<br>
Using coderay 1.1.0<br>
Using coffee-rails 4.1.1<br>
Using coffee-script 2.4.1<br>
Using coffee-script-source 1.10.0<br>
Using concurrent-ruby 1.0.0<br>
Using debug_inspector 0.0.2<br>
Using devise 3.5.6<br>
Using diff-lcs 1.2.5<br>
Using erubis 2.7.0<br>
Using execjs 2.6.0<br>
Using factory_girl 4.5.0<br>
Using factory_girl_rails 4.6.0<br>
Using faker 1.6.1<br>
Using ffi 1.9.10<br>
Using formatador 0.2.5<br>
Using formtastic 3.1.3<br>
Using formtastic_i18n 0.5.0<br>
Using globalid 0.3.6<br>
Using guard 2.13.0<br>
Using guard-compat 1.2.1<br>
Using guard-rspec 4.6.4<br>
Using guard-rubocop 1.2.0<br>
Using has_scope 0.6.0<br>
Using i18n 0.7.0<br>
Using inherited_resources 1.6.0<br>
Using jbuilder 2.4.1<br>
Using jquery-rails 4.1.0<br>
Using jquery-ui-rails 5.0.5<br>
Using json 1.8.3<br>
Using kaminari 0.16.3<br>
Using listen 3.0.6<br>
Using loofah 2.0.3<br>
Using lumberjack 1.0.10<br>
Using mail 2.6.3<br>
Using method_source 0.8.2<br>
Using mime-types 2.99<br>
Using mini_portile2 2.0.0<br>
Using minitest 5.8.4<br>
Using multi_json 1.11.2<br>
Using nenv 0.3.0<br>
Using nokogiri 1.6.7.2<br>
Using notiffany 0.0.8<br>
Using orm_adapter 0.5.0<br>
Using parser 2.3.0.6<br>
Using pg 0.18.4 <b>(wird unter Heroku verwendet)</b><br>
Using polyamorous 1.3.0<br>
Using powerpack 0.1.1<br>
Using pry 0.10.3<br>
Using puma 2.16.0 <b>(wird unter localhost verwendet)</b><br>
Using rack 1.6.4<br>
Using rack-test 0.6.3<br>
Using rails 4.2.5.1<br>
Using rails_12factor 0.0.3<br>
Using rails_serve_static_assets 0.0.5<br>
Using rails_stdout_logging 0.0.4<br>
Using rails-deprecated_sanitizer 1.0.3<br>
Using rails-dom-testing 1.0.7<br>
Using rails-html-sanitizer 1.0.3<br>
Using rails-i18n 4.0.8<br>
Using railties 4.2.5.1<br>
Using rainbow 2.1.0<br>
Using rake 10.5.0<br>
Using ransack 1.7.0<br>
Using rb-fsevent 0.9.7<br>
Using rb-inotify 0.9.7<br>
Using rdoc 4.2.2<br>
Using responders 2.1.1<br>
Using rolify 5.0.0<br>
Using rspec 3.4.0<br>
Using rspec-core 3.4.2<br>
Using rspec-expectations 3.4.0<br>
Using rspec-mocks 3.4.1<br>
Using rspec-rails 3.4.2<br>
Using rspec-support 3.4.1<br>
Using rubocop 0.37.2<br>
Using ruby-progressbar 1.7.5<br>
Using sass 3.4.21<br>
Using sass-rails 5.0.4<br>
Using seed_dump 3.2.4<br>
Using sdoc 0.4.1<br>
Using shellany 0.0.1<br>
Using simple_calendar 2.0.6<br>
Using simple_form 3.2.1<br>
Using slop 3.6.0<br>
Using spring 1.6.3<br>
Using sprockets 3.5.2<br>
Using sprockets-rails 3.0.1<br>
Using sqlite3 1.3.11 <b>(wird unter localhost verwendet)</b><br>
Using thor 0.19.1<br>
Using thread_safe 0.3.5<br>
Using tilt 2.0.2<br>
Using timeliness 0.3.8<br>
Using turbolinks 2.5.3<br>
Using tzinfo 1.2.2<br>
Using uglifier 2.7.2<br>
Using unicode-display_width 0.3.1<br>
Using validates_timeliness 4.0.2<br>
Using warden 1.2.6<br>
Using web-console 2.3.0<br>
</p>
<h3>Erstellung der Datenbank</h3>
<p>
Die Datenbank wird wie folgt erstellt:<br>
<code>rake db:create</code>
</p>

<h3>Initialisierung der Datenbank</h3>
<p>
Um die Datenbank mit Tabellen und Inhalten zu füllen, werden folgende Befehle benötigt:<br>
<code>rake db:migrate</code><br>
<code>rake db:seed</code><br>
    Falls Probleme bei der Erstellung der Datenbank auftreten sollten, haben sich folgende zwei Befehle bewährt:<br>
    <code>rake db:drop</code><br>
    <code>rake db:reset</code>
</p>

<h3>Start des Servers</h3>
<p>
    Nach erfolgreicher Durchführung der vorherigen Schritte, wird der Start des Servers wie folgt, ausgeführt:<br>
    <code>rails s</code>
</p>

<h3>Login Daten</h3>
<p>
    Um alle Funktionen der webbasierten Kommunikationsoberfläche sehen und nutzen zu können, muss man eingeloggt sein.<br>
    <br>
    Normale 'User' können das schwarze Brett sehen, Mitteilungen erstellen und kommentieren. Er hat keine Berechtigungen
    Mitteilungen oder Kommentare auf dem schwarzen Brett zu löschen. Zudem haben die 'User' die Möglichkeit die
    vorhandenen Kalender zu nutzen. Die eigenen Einträge in dem jeweiligen Kalender können sie löschen und bearbeiten -
    bei Einträgen anderer Nutzer ist dies nicht möglich. <br>
    Login: "testuser"<br>
    Password: "test1234"<br>
    <br>
    Der Administrator hat keine Einschränkungen. Er kann Beiträge/Einträge im Frontend oder Backend editieren und löschen.
    'User' lassen sich ausschließlich über den Adminbereich erstellen. Die Registrierung ist bewusst deaktiviert.
    <b>Sie können auf den Adminbereich zugreifen, indem Sie "/admin" hinter die Rooturl eintragen.</b> Dies
    sind Anforderungen des Stakeholders.<br>
    Login: "admin"<br>
    Password: "test1234"<br>
</p>

<h3>Service: Rubocop / RSpec Tests / Guard</h3>
<p>
Rubocop und RSpec Test wurde in dem Projekt eingerichtet.<br>
Mit dem Guard werden Rubocop und die RSpec Tests automatisch ausgeführt:<br>
<code>bundle exec guard</code><br>
Damit der Guard korrekt arbeitet, muss Ruby mit "readline" installiert werden.<br>
In den bereitgestellten virtuellen Maschinen ist dies der Fall.<br>
<b>Ausführung der RSpec Test</b><br>
Seperat lassen sich mit<br>
<code>bundle exec rspec</code><br>
    die RSpec Tests ausführen.<br>
    <b>Ausführung von Rubocop</b><br>
    Rubocop wird mit<br>
    <code>bundle exec rubocop</code><br>
    ausgeführt.
</p>

<h2>Heroku Deployment</h2>
<p>Den aktuellsten Master Branch des Projektes 'Webko' haben wir auf Heroku veröffentlicht.<br>
Die URL lautet <a href="https://webko.herokuapp.com/" target="_blank"> https://webko.herokuapp.com/</a>
</p>

<h2>Bedienungsanleitung</h2>
<p>
    Eine Anleitung (als *.pdf) zur Bedienung der Seite (für den einfachen Nutzer) ist unter folgendem Link zu finden:<br>
    <a href="http://doc.dbwebspace.de/bedienungsanleitung.pdf" target="_blank">Bedienungsanleitung.pdf</a><br>
</p>

<h2>Zukünftige Features</h2>
<p>Während der Projektarbeit wurden weitere Features erarbeitet jedoch nicht implementiert. Zu den interessantesten
    Ideen gehören
    <ul>
    <li>Aufgabenverteilung</li>
    <li>Eventplanung und Umfragen</li>
    <li>Hinterlegungsfunktion für Daten (z.B. Preislisten, Bilder, Präsentationen, etc.)</li>
</ul>
Weitere Vorschläge werden in unserem Taiga.io Projekt genannt.
</p>