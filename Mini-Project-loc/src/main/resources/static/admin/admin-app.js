app = angular.module("admin-app", ["ngRoute"]);

app.config(function($routeProvider) {
	$routeProvider
		.when("/products", {
			templateUrl: "/admin/product/index.html",
			controller: "product-ctrl"
		}).when("/account", {
			templateUrl: "/admin/account/index.html",
			controller: "account-ctrl"
		})

		.when("/authorize", {
			templateUrl: "/admin/authority/index.html",
			controller: "authority-ctrl"
		})
		.when("/unauthorized", {
			templateUrl: "/admin/authority/unauthorized.html",
			
		})
		.otherwise({
			template: "<h1 class='text-center'> fpt poly </h1>"
		});

});