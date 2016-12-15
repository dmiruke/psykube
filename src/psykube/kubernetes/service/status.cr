require "yaml"

class Psykube::Kubernetes::Service::Status
  YAML.mapping(
    loadBalancer: {type: Psykube::Kubernetes::Shared::Status::LoadBalancer, setter: false}
  )
end

require "../shared/status/*"
