use 5.006;
use strict;
use warnings FATAL => 'all';
use inc::Module::Install 0.77;
use Module::Install::AutoManifest;
use Module::Install::ReadmeFromPod;

requires 'Module::Install::RTx' => '0.30';
use Module::Install::RTx;

RTx ('RT-Extension-ShiftPlanning');
requires_rt('4.0.7');
name 'RT-Extension-ShiftPlanning';

all_from      'lib/RT/Extension/ShiftPlanning.pm';
requires      'Carp'            => 0;
requires      'List::MoreUtils' => 0;
requires      'LWP::UserAgent'  => 0;
requires      'LWP::Protocol::https' => 0;
requires      'WebService::ShiftPlanning' => '0.01';
test_requires 'Test::More'      => '0.47';

readme_from 'lib/RT/Extension/ShiftPlanning.pm';

auto_manifest;

homepage 'https://github.com/2ndquadrant/module-rt-extension-ShiftPlanning-perl';
repository 'git://github.com/2ndquadrant/module-rt-extension-ShiftPlanning-perl.git';

WriteAll;
