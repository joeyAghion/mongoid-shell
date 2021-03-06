module Mongoid
  module Shell
    module Commands
      class Mongoimport < Mongoid::Shell::Commands::Base
        include Mongoid::Shell::Properties::Host
        include Mongoid::Shell::Properties::Database
        include Mongoid::Shell::Properties::Username
        include Mongoid::Shell::Properties::Password

        option :db
        option :host
        option :port
        option :sslCAFile
        option :sslPEMKeyFile
        option :sslPEMKeyPassword, sensitive: true
        option :sslCRLFile
        option :username
        option :password, sensitive: true
        option :authenticationDatabase
        option :authenticationMechanism
        option :collection
        option :fields
        option :fieldFile
        option :type
        option :file
        option :upsertFields
        option :maintainInsertionOrder
        option :numInsertionWorkers
        option :writeConcern

        # these 3 below are deprecated from Mongo version 3.0.0
        option :directoryperdb
        option :journal
        option :dbpath

        option :verbose
        option :quiet
        option :ipv6
        option :ssl
        option :sslAllowInvalidCertificates
        option :sslAllowInvalidHostnames
        option :sslFIPSMode
        option :gssapiServiceName
        option :gssapiHostName
        option :ignoreBlanks
        option :drop
        option :headerline
        option :upsert
        option :stopOnError
        option :jsonArray
      end
    end
  end
end
