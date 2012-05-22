# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "wheel.js"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kane Baccigalupi"]
  s.date = "2012-05-22"
  s.description = "MV* JavaScript framework tailored to Rails, making it easy to go from a little JavaScript with progressive inhancement to a one-page JS app."
  s.email = "baccigalupi@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/builders/compiler.rb",
    "lib/wheel/app.js",
    "lib/wheel/class.js",
    "lib/wheel/class/singleton.js",
    "lib/wheel/event_managers/mouse_manager.js",
    "lib/wheel/event_managers/touch_manager.js",
    "lib/wheel/lib/cookie.js",
    "lib/wheel/manifests/wheel_app_jquery.js",
    "lib/wheel/manifests/wheel_app_zepto.js",
    "lib/wheel/manifests/wheel_base.js",
    "lib/wheel/mixins/ajax.js",
    "lib/wheel/mixins/animatrx.js",
    "lib/wheel/mixins/draggable.js",
    "lib/wheel/mixins/events.js",
    "lib/wheel/mixins/storage.js",
    "lib/wheel/model.js",
    "lib/wheel/namespace.js",
    "lib/wheel/utils/connection_checker.js",
    "lib/wheel/utils/loader.js",
    "lib/wheel/utils/request_queue.js",
    "lib/wheel/utils/storage.js",
    "lib/wheel/utils/storage_fill.js",
    "lib/wheel/view.js",
    "lib/wheel/widgeteria/ajax_form.js",
    "lib/wheel/widgeteria/ajax_link.js",
    "lib/wheel/widgeteria/form.js",
    "lib/wheel/widgeteria/link.js",
    "rails_app/.gitignore",
    "rails_app/Gemfile",
    "rails_app/Gemfile.lock",
    "rails_app/README.rdoc",
    "rails_app/Rakefile",
    "rails_app/app/assets/images/rails.png",
    "rails_app/app/assets/javascripts/app/app.js",
    "rails_app/app/assets/javascripts/app/assemble_tasks.js",
    "rails_app/app/assets/javascripts/app/dragger.js",
    "rails_app/app/assets/javascripts/app/gather_tasks.js",
    "rails_app/app/assets/javascripts/app/initializer.js",
    "rails_app/app/assets/javascripts/app/view_is_king.js",
    "rails_app/app/assets/javascripts/application.js",
    "rails_app/app/assets/javascripts/loader.js",
    "rails_app/app/assets/javascripts/tasks.js.coffee",
    "rails_app/app/assets/stylesheets/application.css",
    "rails_app/app/assets/stylesheets/dragger.css.scss",
    "rails_app/app/assets/stylesheets/layout.css.scss",
    "rails_app/app/assets/stylesheets/scaffolds.css.scss",
    "rails_app/app/assets/stylesheets/tasks.css.scss",
    "rails_app/app/controllers/application_controller.rb",
    "rails_app/app/controllers/home_controller.rb",
    "rails_app/app/controllers/tasks_controller.rb",
    "rails_app/app/helpers/application_helper.rb",
    "rails_app/app/helpers/tasks_helper.rb",
    "rails_app/app/mailers/.gitkeep",
    "rails_app/app/models/.gitkeep",
    "rails_app/app/models/task.rb",
    "rails_app/app/views/home/index.html.erb",
    "rails_app/app/views/layouts/application.html.erb",
    "rails_app/app/views/tasks/_form.html.erb",
    "rails_app/app/views/tasks/edit.html.erb",
    "rails_app/app/views/tasks/index.html.erb",
    "rails_app/app/views/tasks/new.html.erb",
    "rails_app/app/views/tasks/show.html.erb",
    "rails_app/config.ru",
    "rails_app/config/application.rb",
    "rails_app/config/boot.rb",
    "rails_app/config/database.yml",
    "rails_app/config/environment.rb",
    "rails_app/config/environments/development.rb",
    "rails_app/config/environments/production.rb",
    "rails_app/config/environments/test.rb",
    "rails_app/config/initializers/backtrace_silencers.rb",
    "rails_app/config/initializers/inflections.rb",
    "rails_app/config/initializers/mime_types.rb",
    "rails_app/config/initializers/secret_token.rb",
    "rails_app/config/initializers/session_store.rb",
    "rails_app/config/initializers/wrap_parameters.rb",
    "rails_app/config/locales/en.yml",
    "rails_app/config/routes.rb",
    "rails_app/db/migrate/20120521151142_create_tasks.rb",
    "rails_app/db/schema.rb",
    "rails_app/db/seeds.rb",
    "rails_app/lib/assets/.gitkeep",
    "rails_app/lib/tasks/.gitkeep",
    "rails_app/log/.gitkeep",
    "rails_app/public/404.html",
    "rails_app/public/422.html",
    "rails_app/public/500.html",
    "rails_app/public/favicon.ico",
    "rails_app/public/robots.txt",
    "rails_app/script/rails",
    "rails_app/test/fixtures/.gitkeep",
    "rails_app/test/fixtures/tasks.yml",
    "rails_app/test/functional/.gitkeep",
    "rails_app/test/functional/tasks_controller_test.rb",
    "rails_app/test/integration/.gitkeep",
    "rails_app/test/performance/browsing_test.rb",
    "rails_app/test/test_helper.rb",
    "rails_app/test/unit/.gitkeep",
    "rails_app/test/unit/helpers/tasks_helper_test.rb",
    "rails_app/test/unit/task_test.rb",
    "rails_app/vendor/assets/stylesheets/.gitkeep",
    "rails_app/vendor/plugins/.gitkeep",
    "spec/javascripts/app_spec.js",
    "spec/javascripts/class/base_spec.js",
    "spec/javascripts/class/helper_spec.js",
    "spec/javascripts/class/inheritance_spec.js",
    "spec/javascripts/class/mix_and_mash_spec.js",
    "spec/javascripts/class/singleton_spec.js",
    "spec/javascripts/event_managment/drag_spec.js",
    "spec/javascripts/event_managment/mouse_manager_spec.js",
    "spec/javascripts/event_managment/touch_manager_spec.js",
    "spec/javascripts/helpers/SpecHelper.js",
    "spec/javascripts/lib/cookies_spec.js",
    "spec/javascripts/mixins/ajax_spec.js",
    "spec/javascripts/mixins/draggable_spec.js",
    "spec/javascripts/mixins/events_spec.js",
    "spec/javascripts/mixins/storage_spec.js",
    "spec/javascripts/model_spec.js",
    "spec/javascripts/support/jasmine.yml",
    "spec/javascripts/support/jasmine_config.rb",
    "spec/javascripts/support/jasmine_runner.rb",
    "spec/javascripts/utils/connection_checker_spec.js",
    "spec/javascripts/utils/loader_spec.js",
    "spec/javascripts/utils/request_queue_spec.js",
    "spec/javascripts/utils/storage_fill_spec.js",
    "spec/javascripts/utils/storage_spec.js",
    "spec/javascripts/view_spec.js",
    "spec/javascripts/widgeteria/ajax_form_spec.js",
    "spec/javascripts/widgeteria/ajax_link_spec.js",
    "spec/javascripts/widgeteria/form_spec.js",
    "spec/javascripts/widgeteria/link_spec.js",
    "vendor/javascripts/jquery/jquery-1.7.1.js",
    "vendor/javascripts/modernizr/modernizr-2.5.3.js",
    "vendor/javascripts/modernizr/modernizr.custom.js",
    "vendor/javascripts/mustache/mustache.js",
    "vendor/javascripts/zepto/zepto-1.0rc1.js",
    "wheel.js.gemspec"
  ]
  s.homepage = "http://github.com/baccigalupi/wheel.js"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "MV* JavaScript framework tailored to Rails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<uglifier>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1.0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<jasmine>, [">= 0"])
    else
      s.add_dependency(%q<uglifier>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.1.0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<jasmine>, [">= 0"])
    end
  else
    s.add_dependency(%q<uglifier>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.1.0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<jasmine>, [">= 0"])
  end
end

