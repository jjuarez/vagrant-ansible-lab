require 'yaml'

DEFAULT_CONFIG=<<-EOF
---
vagrant:
  box_version: "20210610"
vbx:
  memory: 1024
  cpus: 1
EOF

class Config
  def self.load()
    root_dir    = File.join(File.dirname(File.expand_path('..', __FILE__)))
    config_file = File.join(root_dir, 'config', 'vm.yml')

    if File.exist?(config_file)
      YAML.load_file(config_file)
    else
      YAML.load(DEFAULT_CONFIG)
    end
  end
end
