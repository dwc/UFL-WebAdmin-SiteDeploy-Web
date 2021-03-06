use inc::Module::Install;

name 'UFL-WebAdmin-SiteDeploy-Web';
all_from 'lib/UFL/WebAdmin/SiteDeploy/Web.pm';

requires 'Carp';
requires 'Catalyst' => '5.7012';
requires 'Catalyst::Controller';
requires 'Catalyst::Action::RenderView';
requires 'Catalyst::Authentication::Credential::Remote';
requires 'Catalyst::Model';
requires 'Catalyst::Plugin::Authentication';
requires 'Catalyst::Plugin::AutoRestart';
requires 'Catalyst::Plugin::ConfigLoader';
requires 'Catalyst::Plugin::ErrorCatcher';
requires 'Catalyst::Plugin::StackTrace';
requires 'Catalyst::Plugin::Static::Simple';
requires 'Catalyst::Plugin::Unicode::Encoding';
requires 'Catalyst::View::TT';
requires 'Moose';
requires 'Moose::Object';
requires 'parent';
requires 'UFL::WebAdmin::SiteDeploy' => '0.13';
requires 'UFL::WebAdmin::SiteDeploy::Site';
requires 'UFL::WebAdmin::SiteDeploy::Types';
requires 'VCI';
requires 'YAML';

build_requires 'Catalyst::Test';
build_requires 'FindBin';
build_requires 'Path::Class';
build_requires 'Test::More';
build_requires 'Test::WWW::Mechanize::Catalyst';
build_requires 'Test::YAML::Valid';
build_requires 'UFL::WebAdmin::SiteDeploy::TestRepository';

catalyst;

install_script glob('script/*.pl');

clean_files('t/var');

WriteAll;
