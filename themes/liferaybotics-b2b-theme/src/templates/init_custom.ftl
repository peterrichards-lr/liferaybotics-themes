<#assign
	show_footer = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-footer"))
	show_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header"))
	show_header_search = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header-search"))

	show_breadcrumbs = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-breadcrumbs"))

	show_account_selector = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-account-selector"))
	show_mini_cart = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-mini-cart"))
	use_commerce_search = getterUtil.getBoolean(themeDisplay.getThemeSetting("use-commerce-search"))

	use_sign_in_modal = getterUtil.getBoolean(themeDisplay.getThemeSetting("use-sign-in-modal"))

	enable_sticky_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("enable-sticky-header"))

	wide_layout = getterUtil.getBoolean(themeDisplay.getThemeSetting("wide-layout"))

	wrap_widget_page_content = getterUtil.getBoolean(themeDisplay.getThemeSetting("wrap-widget-page-content"))
	show_control_menu = getterUtil.getBoolean(sessionClicks.get(request, "SHOW_CONTROL_MENU", "true"))
/>

<#assign show_control_menu = show_control_menu && (permissionChecker.isOmniadmin() || permissionChecker.isGroupAdmin(user_id)) />
<#assign enable_commerce = show_account_selector || show_mini_cart || (show_header_search && use_commerce_search) />

<#assign
	notification_url = commerceThemeMiniumHttpHelper.getNotificationsURL(request)
	notification_count = commerceThemeMiniumHttpHelper.getNotificationsCount(themeDisplay)

	is_widget_page = wrap_widget_page_content && ((layout.isTypeContent() && themeDisplay.isStateMaximized()) || (layout.getType() == "portlet"))

	minium_content_css_class = ""
/>

<#if is_widget_page>
	<#assign portal_content_css_class = "container" />
<#else>
	<#assign portal_content_css_class = "" />
</#if>

<#if enable_commerce>
	<#assign portal_content_css_class = portal_content_css_class + " minium-frame" />

	<#assign minium_content_css_class = "minium-content" />
	<#if wide_layout>
		<#assign minium_content_css_class = minium_content_css_class + " minium-content--wide" />
	</#if>
</#if>

<#assign company = theme_display.getCompany() />
<#assign remember_me = company.isAutoLogin() />

<#assign
	include_remember_me_css = remember_me && use_sign_in_modal && !is_signed_in 
	include_css = include_remember_me_css || is_widget_page
/>