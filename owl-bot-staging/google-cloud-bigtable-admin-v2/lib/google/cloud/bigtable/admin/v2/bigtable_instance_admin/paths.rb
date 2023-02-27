# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Bigtable
      module Admin
        module V2
          module BigtableInstanceAdmin
            # Path helper methods for the BigtableInstanceAdmin API.
            module Paths
              ##
              # Create a fully-qualified AppProfile resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/instances/{instance}/appProfiles/{app_profile}`
              #
              # @param project [String]
              # @param instance [String]
              # @param app_profile [String]
              #
              # @return [::String]
              def app_profile_path project:, instance:, app_profile:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "instance cannot contain /" if instance.to_s.include? "/"

                "projects/#{project}/instances/#{instance}/appProfiles/#{app_profile}"
              end

              ##
              # Create a fully-qualified Cluster resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/instances/{instance}/clusters/{cluster}`
              #
              # @param project [String]
              # @param instance [String]
              # @param cluster [String]
              #
              # @return [::String]
              def cluster_path project:, instance:, cluster:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "instance cannot contain /" if instance.to_s.include? "/"

                "projects/#{project}/instances/#{instance}/clusters/#{cluster}"
              end

              ##
              # Create a fully-qualified CryptoKey resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`
              #
              # @param project [String]
              # @param location [String]
              # @param key_ring [String]
              # @param crypto_key [String]
              #
              # @return [::String]
              def crypto_key_path project:, location:, key_ring:, crypto_key:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "key_ring cannot contain /" if key_ring.to_s.include? "/"

                "projects/#{project}/locations/#{location}/keyRings/#{key_ring}/cryptoKeys/#{crypto_key}"
              end

              ##
              # Create a fully-qualified Instance resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/instances/{instance}`
              #
              # @param project [String]
              # @param instance [String]
              #
              # @return [::String]
              def instance_path project:, instance:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                "projects/#{project}/instances/#{instance}"
              end

              ##
              # Create a fully-qualified Location resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}`
              #
              # @param project [String]
              # @param location [String]
              #
              # @return [::String]
              def location_path project:, location:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                "projects/#{project}/locations/#{location}"
              end

              ##
              # Create a fully-qualified Project resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}`
              #
              # @param project [String]
              #
              # @return [::String]
              def project_path project:
                "projects/#{project}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
