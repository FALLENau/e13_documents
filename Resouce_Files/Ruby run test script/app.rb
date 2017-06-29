require 'fileutils'

def filter_directories

  excluded_directories = ["bin"]

  all_files = Dir.glob('*')

  return all_files.select do |file|
    next if excluded_directories.include?(file)
    File.directory?(file)
  end
end

def create_bin
  FileUtils.rm_rf('bin')
  FileUtils.mkdir_p('bin')
end

def build(directories)
  #for directory in directories
  #  puts "building #{directory}"
    system("javac -d bin *.java")
  #end
end#note: directories is hashed becuz im not using any directories.


require 'find'

def find_valid_files
  files = []
  Find.find('bin') do |path|
    files << path if path.include?(".class") && path.include?("Runner")
  end
  return files
end

def run()
  system("cd bin && java Runner")
end

def run_tests(files)
  for file in files
    fileName = File.basename(file, ".*" )
    puts "Running #{fileName}"

    system("java #{fileName}")

  end
end #Note: this finds and runs the test.class file through junit

# def run_program()
#     system("java Runner")
# end

create_bin()
valid_directories = filter_directories()
build(valid_directories)
run()
# run_tests(valid_directories)

# valid_files = find_valid_files()
#
# Dir.chdir "bin"
#
# run_tests(valid_files)
