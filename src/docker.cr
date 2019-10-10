module Docker
  VERSION = "0.1.0"

  @@int_handler : -> Void = ->{ exit }
  @@term_handler : -> Void = ->{ exit }

  # Call this method to setup `STDOUT` and `STDERR` syncing
  # as well as handlers for `SIGINT` and `SIGTERM`
  def self.setup
    setup_io_syncing
    setup_signal_handling
  end

  # Call this method to only setup syncing of `STDOUT` and `STDERR`
  def self.setup_io_syncing
    STDOUT.sync = true
    STDERR.sync = true
  end

  # Call this method to only setup signal handlers for `SIGINT` and `SIGTERM`
  def setup_signal_handling
    Signal::INT.trap { @@int_handler.call }
    Signal::TERM.trap { @@term_handler.call }
  end

  # Override `SIGINT` trap with given *block*
  def self.on_int(&block : -> _)
    @@int_handler = block
  end

  # Override `SIGTERM` trap with given *block*
  def self.on_term(&block : -> _)
    @@term_handler = block
  end
end
