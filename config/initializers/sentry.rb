Sentry.init do |config|
  config.dsn = 'https://332ba3d7133c414c991cd39346be96f9@o246449.ingest.sentry.io/6762563'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end