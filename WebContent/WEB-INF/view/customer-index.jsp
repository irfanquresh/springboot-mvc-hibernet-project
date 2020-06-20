<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta content="initial-scale=1, shrink-to-fit=no, width=device-width"
	name="viewport">

<!-- CSS -->
<!-- Add Material font (Roboto) and Material icon as needed -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i|Roboto+Mono:300,400,700|Roboto+Slab:300,400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Add Material CSS, replace Bootstrap CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/material.css"
	rel="stylesheet">


<link href="https://getbootstrap.com/docs/4.1/assets/css/docs.min.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resources/css/docs.min.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resources/css/app.css?v=1.5"
	rel="stylesheet">

<title>Customer List - CRM</title>
</head>
<body class="doc-body">
	<a class="sr-only sr-only-focusable doc-skip" href="#doc-main-h1">
		<div class="container">
			<span class="doc-skip-text">Skip to main content</span>
		</div>
	</a>
	<header
		class="navbar navbar-dark d-lg-none fixed-top toolbar-waterfall">
		<button aria-controls="doc-navdrawer" aria-expanded="false"
			aria-label="Toggle Navdrawer" class="navbar-toggler mr-3"
			data-breakpoint="lg" data-target="#doc-navdrawer"
			data-toggle="navdrawer" data-type="permanent">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a aria-label="Daemonite Material" class="mr-auto doc-logo"
			href="/material/">M</a>
		<div class="ml-3">
			<div class="dropdown">
				<button aria-expanded="false" aria-haspopup="true"
					class="navbar-toggler" data-toggle="dropdown"
					id="doc-dropdown-follow" type="button">
					<i class="material-icons mx-auto">more_vert</i>
				</button>
				<div aria-labelledby="doc-dropdown-follow"
					class="dropdown-menu dropdown-menu-right">
					<a class="dropdown-item"
						href="https://github.com/Daemonite/material" target="_blank"><i
						class="material-icons mr-3">code</i>Fork me on GitHub</a> <a
						class="dropdown-item" href="http://www.daemon.com.au/"
						target="_blank"><i class="material-icons mr-3 text-danger">favorite</i>Made
						by Daemon</a>
				</div>
			</div>
		</div>
	</header>

	<div aria-hidden="true"
		class="navdrawer navdrawer-permanent-lg doc-navdrawer"
		id="doc-navdrawer" tabindex="-1">
		<div class="navdrawer-content">
			<div class="d-flex flex-column doc-navdrawer-body">
				<div class="navdrawer-header">
					<a aria-label="Daemonite Material" class="doc-logo"
						href="/material/">M</a> <span class="navbar-brand">CRM</span>
				</div>


				<nav class="navdrawer-nav">
					<a class="nav-item nav-link collapsed" data-toggle="collapse"
						href="#doc-navdrawer-getting-started"><strong>Getting
							started</strong></a>
					<div class="collapse pb-2 " id="doc-navdrawer-getting-started">
						<a class="nav-item nav-link pl-4 py-2 text-black-secondary"
							href="/material/docs/4.1/getting-started/introduction/"><span
							class="font-weight-normal">Introduction</span></a> <a
							class="nav-item nav-link pl-4 py-2 text-black-secondary"
							href="/material/docs/4.1/getting-started/migration/"><span
							class="font-weight-normal">Migration</span></a>
					</div>
					<div class="navdrawer-divider"></div>
					<a class="nav-item nav-link collapsed" data-toggle="collapse"
						href="#doc-navdrawer-components"><strong>Components</strong></a>
					<div class="collapse pb-2 " id="doc-navdrawer-components">
						<a class="nav-item nav-link pl-4 py-2 text-black-secondary"
							href="/material/docs/4.1/components/alerts/"><span
							class="font-weight-normal">Alerts</span></a>
					</div>

					<div class="navdrawer-divider"></div>
					<a class="nav-item nav-link collapsed" data-toggle="collapse"
						href="#doc-navdrawer-material"><strong>Material</strong></a>
					<div class="collapse pb-2 " id="doc-navdrawer-material">
						<a class="nav-item nav-link pl-4 py-2 text-black-secondary"
							href="/material/docs/4.1/material/buttons/"><span
							class="font-weight-normal">Buttons</span></a>
					</div>
				</nav>
				<div class="mt-auto">
					<div class="navdrawer-divider mt-0"></div>
					<div class="navdrawer-nav">
						<a class="nav-item nav-link text-black-secondary"
							href="https://github.com/Daemonite/material" target="_blank"><i
							class="material-icons mr-3">code</i>Fork me on GitHub</a> <a
							class="nav-item nav-link text-black-secondary"
							href="http://www.daemon.com.au/" target="_blank"><i
							class="material-icons mr-3 text-danger">favorite</i>Made by
							Daemon</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="jumbotron jumbotron-fluid mb-5 px-lg-3 doc-jumbotron">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<h1 class="typography-display-4" id="doc-main-h1">Hello Irfan</h1>
				</div>
			</div>
		</div>
	</div>
	<main class="doc-main px-lg-3">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-9">
					<div class="bd-content mb-5">


						<div class="row">
							<div class="col-md-9">
								<h2>Customer</h2>
							</div>
							<div class="col-md-3">
								<button type="button" class="btn btn-info"
									onclick="window.location.href='addForm';return false;">Add
									Customer</button>
							</div>
						</div>
						<div class="bd-example">
							<div class="table-responsive">
								<table class="table table-striped table-hover table-sm">
									<thead>
										<tr>
											<th scope="col">First</th>
											<th scope="col">Last</th>
											<th scope="col">Email</th>
											<th scope="col">Action</th>
											<th scope="col">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="tempCustomer" items="${customers}">
											<c:url var="updateLink" value="/customer/updateForm">
												<c:param name="customerId" value="${tempCustomer.id}"></c:param>
											</c:url>

											<c:url var="deleteLink" value="/customer/delete">
												<c:param name="customerId" value="${tempCustomer.id}"></c:param>
											</c:url>

											<tr>
												<td>${tempCustomer.firstName}</td>
												<td>${tempCustomer.lastName}</td>
												<td>${tempCustomer.email}</td>
												<td><a href="${updateLink}" class="btn btn-info">Update</a></td>
												<td><a href="${deleteLink}" class="btn btn-danger">Delete</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div>
				<div class="col-xl-3 d-none d-xl-block">
					<ul class="section-nav">
						<li class="toc-entry toc-h2"><a href="#examples">Examples</a></li>
						<li class="toc-entry toc-h2"><a href="#captions">Captions</a></li>
						<li class="toc-entry toc-h2"><a href="#responsive-tables">Responsive
								tables</a>
							<ul>
								<li class="toc-entry toc-h3"><a href="#always-responsive">Always
										responsive</a></li>
								<li class="toc-entry toc-h3"><a href="#breakpoint-specific">Breakpoint
										specific</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</main>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

	<!-- Then Material JavaScript on top of Bootstrap JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/js/material.js"></script>
</body>
</html>