								<#if show_header_search>
									<div role="search">
										<#if use_commerce_search>
										<@liferay_commerce_ui["search-bar"] />
										<#else>
										<@liferay.search_bar default_preferences="${preferences}" />
										</#if>
									</div>
								</#if>