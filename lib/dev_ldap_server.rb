require 'dev_ldap_server/version'
require 'trollop'
require 'shellwords'

module DevLdapServer
  class GemName
    attr_reader :cli_arg
    def initialize(args={})
      opts = Trollop::options(args) do

        banner "#{DevLdapServer::VERSION_BANNER}\n\n#{DevLdapServer::HELP_TEXT}"
        version DevLdapServer::VERSION_BANNER
        opt :verbose, 'Verbose output.', short: 'v'
        opt :debug, 'Display additional debugging information.'
      end
      unless @cli_arg = args[0]
        Trollop::die 'ERROR: You must specify something on the command line.'
      end
      opts
    end
  end
end
