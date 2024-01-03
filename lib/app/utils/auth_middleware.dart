import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // Check if the user is allowed to access the specified route
    if (!isAuthorized(route)) {
      // Redirect the user to a default route or a login page
      return const RouteSettings(name: '/dashboard');
    }
    return null; // Allow the user to access the requested route
  }

  bool isAuthorized(String? route) {
    // Get the user level from the UserController (replace this with your actual logic)
    String? userLevel = 'admin'; //UserController.to.getUserLevel();

    // Check if the user is allowed to access the route based on their level
    switch (userLevel) {
      case 'admin':
        return isAdminRoute(route);
      case 'subscriber':
        return isSubscriberRoute(route);
      case 'non_subscriber':
        return isNonSubscriberRoute(route);
      default:
        return false; // Default case: user is not authorized
    }
  }

  bool isAdminRoute(String? route) {
    // Implement your logic for checking if the route is allowed for admin
    // Example: Allow access to admin pages
    return route != null && route.startsWith('/admin_');
  }

  bool isSubscriberRoute(String? route) {
    // Implement your logic for checking if the route is allowed for subscribers
    // Example: Allow access to subscriber pages
    return route != null && route.startsWith('/subscriber_');
  }

  bool isNonSubscriberRoute(String? route) {
    // Implement your logic for checking if the route is allowed for non-subscribers
    // Example: Allow access to non-subscriber pages
    return route != null && route.startsWith('/non_subscriber_');
  }
}
