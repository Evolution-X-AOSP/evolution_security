#
# Copyright (C) 2018 The Pixel3ROM Project
# Copyright (C) 2021 Haruka LLC.
# Copyright (C) 2021 Haruka Aita
# Copyright (C) 2021 The Evolution X Project
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
#

# Define security directory
PROD_CERTS := vendor/evolution/build/target/product/security

#
# Recovery keys
#
# Extra recovery keys, despite -o being defined on our signed target file...
# Somehow, our build system managed to not include releasekey in which we have to
# investigate,
# Explicitly define the extra recovery key so recovery will always know our key as
# the temporary solution.
#
PRODUCT_EXTRA_RECOVERY_KEYS := $(PROD_CERTS)/releasekey
