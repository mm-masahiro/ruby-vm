#!/usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require "saria/virtual_machine"

iseq = RubyVM::InstructionSequence.compile_file(ARGV[0], false)
Saria::VirtualMachine.new(iseq).run
