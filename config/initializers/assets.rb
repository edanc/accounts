Rails.application.config.assets.paths << Rails.root.join("app", "assets", "stylesheets", "javascripts")
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/
Rails.application.config.assets.precompile += %w( logs.js )
