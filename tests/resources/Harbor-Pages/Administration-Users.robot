# Copyright 2016-2017 VMware, Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

*** Settings ***
Documentation  This resource provides any keywords related to the Harbor private registry appliance
Library  Selenium2Library
Library  OperatingSystem

*** Variables ***
${HARBOR_VERSION}  v1.1.1

*** Keywords ***
Assign User Admin
    [Arguments]  ${user}
    Input Text  xpath=/html/body/harbor-app/harbor-shell/clr-main-container/div/div/harbor-user/div/div/div[1]/grid-filter/span/input  ${user}
    Sleep  2
    Click Element  xpath=/html/body/harbor-app/harbor-shell/clr-main-container/div/div/harbor-user/div/div/h2
    Click Element  xpath=/html/body/harbor-app/harbor-shell/clr-main-container/div/div/harbor-user/div/div/div[2]/clr-datagrid/div/div/div[2]/clr-dg-row/clr-dg-row-master/clr-dg-cell[1]/clr-dg-action-overflow/clr-icon
    Click Element  xpath=/html/body/harbor-app/harbor-shell/clr-main-container/div/div/harbor-user/div/div/div[2]/clr-datagrid/div/div/div[2]/clr-dg-row/clr-dg-row-master/clr-dg-cell[1]/clr-dg-action-overflow/div/button[1]
    Sleep  1

Switch to User Tag
    Click Element  xpath=/html/body/harbor-app/harbor-shell/clr-main-container/div/nav/section/section/ul/li[1]/a
    Sleep  1

Administration Tag Should Display
    Page Should Contain Element  xpath=/html/body/harbor-app/harbor-shell/clr-main-container/div/nav/section/section/label