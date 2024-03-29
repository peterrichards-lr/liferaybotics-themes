        <#if show_header>
			<header id="banner">
				<div class="navbar upper-header upper-header-bg upper-header-text-color"  id="upperHeader">
					<div class="bg-transparent container-fluid px-7">
						<div class="align-items-center autofit-row">
							<a class="${logo_css_class} align-items-center d-inline-flex logo-md" href="${site_default_public_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
								<img alt="${logo_description}" class="mr-2" height="24" src="${site_logo}" />

								<#if show_site_name>
									<h2 class="site-name d-sm-none d-none d-md-inline-flex" role="heading" aria-level="1">${site_name}</h2>
								</#if>
							</a>

							<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

							<div class="autofit-col autofit-col-expand navbar-menu d-none d-lg-inline-flex">
								<@liferay.navigation_menu default_preferences="${preferences}" />
							</div>

							<#if show_header_search>
							<div class="autofit-col d-none d-lg-inline-flex">
								<button class="btn btn-unstyled btn-search" type="button" data-toggle="collapse" data-target="#searchBar" aria-expanded="false" aria-controls="searchBar">
									<@clay["icon"] symbol="search" />
								</button>
							</div>
							</#if>

							<div class="autofit-col d-none d-lg-inline-flex vl"></div>

							<div class="autofit-col user-personal-bar">
								<#if is_signed_in>
									<span class="user-full-name d-none d-md-inline-flex">
										Hi&nbsp;${user.getFirstName()}
									</span>
								</#if>


								<#if use_sign_in_modal && !is_signed_in>
									<span class="sign-in text-default" role="presentation">
										<a onclick="document.querySelector('#loginCardContainer').style.visibility = 'visible';" class="sign-in text-default"data-redirect="true">
											<span class="sign-in-label">Log In</span>
										</a>
									</span>
								<#else>
									<@liferay.user_personal_bar />
								</#if>

								<#if is_signed_in>
									<#assign notification_link = "javascript:;" />

									<#if notification_url??>
										<#assign notification_link = notification_url />
									</#if>

									<a href="${notification_link}">
										<span>
											<@clay["icon"] symbol="bell-on" />
										</span>

										<#if notification_count?? && notification_count?is_number && notification_count gt 0>
											<span class="badge notification-count">
												<span class="badge-item badge-item-expand">${notification_count}</span>
											</span>
										</#if>
									</a>
								</#if>		
							</div>
						</div>
					</div>
				</div>

				<#if show_header_search>
				<div class="collapse md-hide" id="searchBar">
					<#include "${full_templates_path}/search_bar.ftl" />
				</div>
				</#if>

				<div class="navbar lower-header lower-header-bg lower-header-text-color" id="lowerHeader">
					<#include "${full_templates_path}/navigation.ftl" />
				</div>
			</header>
			
			<#if show_breadcrumbs && is_widget_page>
			<div class="navbar container" id="breadcrumbs">
				<@liferay.breadcrumbs default_preferences="${preferences}" />
			</div>
			</#if>
		</#if>