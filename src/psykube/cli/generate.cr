require "admiral"
require "./concerns/*"

class Psykube::Commands::Generate < Admiral::Command
  include PsykubeFileFlag
  include KubectlClusterArg
  include KubectlNamespaceFlag

  define_help description: "Generate the kubernetes manifests."

  def run
    puts generator.to_json
  rescue e : Generator::ValidationError
    panic "Error: #{e.message}".colorize(:red)
  end
end
