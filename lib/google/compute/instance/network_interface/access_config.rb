# Copyright 2013 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Google compute engine, access config of an instance resource
#https://developers.google.com/compute/docs/reference/v1beta13/instances/addAccessConfig
#https://developers.google.com/compute/docs/reference/v1beta13/instances/deleteAccessConfig
#
require  'google/compute/mixins/utils'

module Google
  module Compute
    class NetworkInterface
      class AccessConfig

        include Utils

        attr_reader :kind, :name, :type, :nat_ip
       
        def initialize(data)
          @kind = data["kind"]
          @name = data["name"]
          @type = data["type"]
          @nat_ip = data["natIP"]
        end
      end
    end
  end
end
