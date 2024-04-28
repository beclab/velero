# Copyright 2020 the Velero contributors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Velero image packing section
FROM gcr.io/distroless/base-nossl-debian11@sha256:9523ef8cf054e23a81e722d231c6f604ab43a03c5b174b5c8386c78c0b6473d0

COPY ./velero /

COPY ./restic /usr/bin/

USER nonroot:nonroot

