{
  "$schema": "http://json-schema.org/draft-03/schema",
  "type": "object",
  "required": false,
  "description": "A replicationController resource. A replicationController helps to create and manage a set of pods. It acts as a factory to create new pods based on a template. It ensures that there are a specific number of pods running. If fewer pods are running than `replicas` then the needed pods are generated using `podTemplate`. If more pods are running than `replicas`, then excess pods are deleted.",
  "properties": {
    "kind": {
      "type": "string",
      "required": false
    },
    "id": {
      "type": "string",
      "required": false
    },
    "creationTimestamp": {
      "type": "string",
      "required": false
    },
    "selfLink": {
      "type": "string",
      "required": false
    },
    "desiredState": {
      "type": "object",
      "required": false,
      "description": "The desired configuration of the replicationController",
      "properties": {
        "replicas": {
          "type": "number",
          "required": true,
          "description": "Number of pods desired in the set"
        },
        "replicaSelector": {
          "type": "object",
          "required": false,
          "description": "Required labels used to identify pods in the set"
        },
        "podTemplate": {
          "type": "object",
          "required": false,
          "description": "Template from which to create new pods, as necessary. Identical to pod schema."
        }
      }
    },
    "labels": {
      "type": "object",
      "required": false
    }
  }
}
