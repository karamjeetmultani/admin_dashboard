{application, 'mvd_dashboard', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['dashboard_handler','dashboard_handler_dtl','mvd_dashboard_app','mvd_dashboard_sup']},
	{registered, [mvd_dashboard_sup]},
	{applications, [kernel,stdlib,cowboy,erlydtl,sync]},
	{mod, {mvd_dashboard_app, []}},
	{env, []}
]}.