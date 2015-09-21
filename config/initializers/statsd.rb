# Configure the statsd client

STATSD = Statsd.new("localhost", 8125)
STATSD.namespace = "aom-rails."
