<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<ul class="nav nav-pills nav-stacked side">
  <li class="nav-header">Home</li>
  <li><a href="<c:url value="/secure/home" />"><span class="glyphicon glyphicon-home"></span> Dashboard</a></li>
  <li><a href="<c:url value="/secure/profile" />"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
  <li><a href="<c:url value="/secure/settings" />"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
  <sec:authorize ifAnyGranted="ROLE_ADMIN">
    <li class="nav-header">Manage Users</li>
    <li><a href="<c:url value="/secure/users/new" />"><i class="icon-group"></i>Add User</a></li>
    <li><a href="<c:url value="/secure/users" />"><span class="glyphicon glyphicon-list"></span> Users</a></li>
    <li class="nav-header">System</li>
    <li><a href="<c:url value="/secure/system" />"><i class="icon-cogs"></i>System Properties</a></li>
  </sec:authorize>
</ul>
