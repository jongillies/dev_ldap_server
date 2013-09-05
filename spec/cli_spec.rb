require 'spec_helper'
require 'dev_ldap_server'
require 'shellwords'
require 'yaml'

describe 'Different Command Line Options' do

  it 'should fail with no options' do
    expect { DevLdapServer::GemName.new({}) }.to raise_error
  end

  it 'should succeed with minimum arguments' do
    args = 'my-argument'
    expect { DevLdapServer::GemName.new(args.shellsplit) }.not_to raise_error
  end

  it 'should spit out help' do
    args = '--help'
    expect { DevLdapServer::GemName.new(args.shellsplit) }.to raise_error
  end

  it 'should spit out version' do
    args = '--version'
    expect { DevLdapServer::GemName.new(args.shellsplit) }.to raise_error
  end

end

