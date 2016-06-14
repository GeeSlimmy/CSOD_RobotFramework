*** Variables ***
${cfg_global_login_browser}    chrome
${cfg_global_login_url}    https://qa05.csod.com
${cfg_global_login_profile}    default
${cfg_global_login_corp}    ${cfg_global_login_corp_${cfg_global_login_profile}}
${cfg_global_login_username}    ${cfg_global_login_username_${cfg_global_login_profile}}
${cfg_global_login_password}    ${cfg_global_login_password_${cfg_global_login_profile}}
${cfg_global_login_corp_default}    qa052-auto-comp2
${cfg_global_login_username_default}    ca
${cfg_global_login_password_default}    popeye123
${cfg_global_home_pagesync}    ${EMPTY}
${cfg_global_resource_webdrivers}    ${EXECDIR}\\Resources\\WebDrivers\\
${cfg_sauceLabs_remoteUrl}    ${EMPTY}
${cfg_sauceLabs_desiredCapabilities}    ${EMPTY}
