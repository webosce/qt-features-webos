# Copyright (c) 2017-2018 LG Electronics, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

CONFIG += no_module_headers internal_module

TARGET = generate_qmap
CONFIG += console warn_off
QT = core

equals(QT_MAJOR_VERSION, 5):lessThan(QT_MINOR_VERSION, 8) {
    QT += platformsupport-private
} else {
    QT += input_support-private
}

SOURCES += generate_qmap.cpp

target.path = $$[QT_HOST_BINS]
INSTALLS += target
