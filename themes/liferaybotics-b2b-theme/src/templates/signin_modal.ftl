<#if use_sign_in_modal && !is_signed_in>
    <div id="loginCardContainer">
        <div class="close-button">
            <a class="btn btn-primary"
                href="javascript:void(0)"
                onclick="$('#loginCardContainer').css('visibility', 'hidden');"
                id="hide-sign-in"
                rel="nofollow">X</a>
        </div>
        <div id="loginCardArea">	
                <#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />
                <@liferay_portlet["runtime"]
                    defaultPreferences=preferences
                    portletName="com_liferay_login_web_portlet_LoginPortlet"
                />
        </div>
    </div>
</#if>