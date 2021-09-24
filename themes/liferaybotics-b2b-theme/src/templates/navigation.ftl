<#if has_navigation && is_setup_complete>
<div class="bg-transparent container-fluid align-items-start mr-5">
	<div class="col">
		<div class="navbar navbar-expand-xl">
			<button aria-controls="lowerNavigation" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler" data-target="#lowerNavigation" data-toggle="collapse" type="button">
				<svg class="lexicon-icon">
					<use xlink:href="${themeDisplay.getPathThemeImages()}/clay/icons.svg#bars"></use>
				</svg>
			</button>

			<div class="collapse navbar-collapse mt-4" id="lowerNavigation">
				<#include "${full_templates_path}/search_bar.ftl" />

				<@liferay.navigation_menu default_preferences="${preferences}" />

			</div>
		</div>
	</div>

	<#if show_account_selector && is_signed_in>
	<div class="autofit-col">
		<@liferay_commerce_ui["account-selector"] />
	</div>
	</#if>

	<#if show_mini_cart && is_signed_in>
		<@liferay_commerce_ui["mini-cart"] spritemap="${themeDisplay.getPathThemeImages()}/icons.svg" />
	</#if>
</div>
</#if>