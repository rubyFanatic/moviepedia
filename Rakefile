# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Moviepedia'
  app.api_version = '27'
  app.main_activity = 'MainActivity'
  app.sub_activities += %w(WikipediaActivity)
  app.permissions = 'android.permission.INTERNET'
  app.sdk_path = '/Users/.rubymotion-android/sdk'
  app.ndk_path = '/Users/.rubymotion-android/ndk'
end
