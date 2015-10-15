# db access is cached <-> only first lookup hits the db
require "fast_gettext"
require "fast_gettext/translation_repository/db"
FastGettext.default_text_domain = 'app'
FastGettext::TranslationRepository::Db.require_models #load and include default models
FastGettext.available_locales = ['en']
FastGettext.add_text_domain('app', :type => :db, :model => TranslationKey)
