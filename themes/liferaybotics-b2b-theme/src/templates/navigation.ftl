<#if has_navigation && is_setup_complete>
	<div class="navbar navbar-expand-xl">
		<button aria-controls="lowerNavigation" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right" data-target="#lowerNavigation" data-toggle="collapse" type="button">
			<svg class="lexicon-icon">
				<use xlink:href="${themeDisplay.getPathThemeImages()}/clay/icons.svg#bars"></use>
			</svg>
		</button>

		<div class="collapse navbar-collapse" id="lowerNavigation">
			<#include "${full_templates_path}/search_bar.ftl" />

			<@liferay.navigation_menu default_preferences="${preferences}" />

		</div>
	</div>

	<#if is_signed_in>
		<#if show_account_selector>
		<div class="minium-topbar__account-selector-wrapper">
			<@liferay_commerce_ui["account-selector"] />
		</div>
		</#if>

		<#if show_mini_cart>
		<div class="minium-topbar__cart-wrapper">
			<@liferay_commerce_ui["mini-cart"] spritemap="${themeDisplay.getPathThemeImages()}/icons.svg" />
		</div>
		</#if>
	</#if>
</#if>