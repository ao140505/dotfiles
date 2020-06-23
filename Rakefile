require 'rake'

desc "install the dot files into user's home directory"
task :install do
  $replace_all = false
  Dir['*'].reject{|file| file == 'bin'}.each do |file|
    next if %w[Rakefile README.rdoc LICENSE].include? file

    dotfile = "#{ENV['HOME']}/.#{file}"
    if File.exist?(dotfile)
      if File.identical? file, dotfile
        puts "identical #{dotfile}"
      elsif $replace_all
        replace_file(file)
      else
        get_replacement_preferences(file)
      end
    else
      link_file(file, is_dotfile: true)
    end
  end

  Dir['bin/*'].each do |file|
    binfile = "#{ENV['HOME']}/#{file}"
    if File.exist?(binfile)
      if File.identical? file, binfile
        puts "identical #{binfile}"
      elsif $replace_all
        replace_file(file)
      else
        get_replacement_preferences(file)
      end
    else
      link_file(file, is_dotfile: false)
    end
  end
end

def get_replacement_preferences(file)
  print "~/.#{file} already exists. replace it? [y]es, [n]o, [b]ackup, replace [a]ll, [q]uit "
  case $stdin.gets.chomp
  when 'a'
    $replace_all = true
    replace_file(file)
  when 'y'
    replace_file(file)
  when 'q'
    exit
  when 'b'
    `mv "~/.#{file}" "~/.#{file}.backup"`
    replace_file(file)
  else
    puts "skipping ~/.#{file}"
  end
end

def replace_file(file)
  system %Q{rm -rf "~/.#{file}"}
  link_file(file)
end

def link_file(file, is_dotfile:)
  puts "linking ~/.#{file}"
  if is_dotfile
    system %Q{ln -s #{ENV["PWD"]}/#{file} ~/.#{file}}
  else
    system %Q{ln -s #{ENV["PWD"]}/#{file} ~/#{file}}
  end
end
