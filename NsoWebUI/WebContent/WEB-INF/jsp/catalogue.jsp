<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NSO</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="main">
    <header>
        <div class="wrapper">
        	<div class="logo">
            	<a href="#"><img src="<c:url value="/resources/img/cisco-logo-inner.png" />"/></a>
            </div>
            <div class="navigation">
            	<ul>
                	<li><a href="#">Home</a></li>
                    <li><a href="#">settings</a></li>

					<li><a href="#">application</a></li>

					<li><a href="#">work queue</a></li>
					<%System.out.println("User session :"+session.getAttribute("user")); %>
					<li><a href="#" class="admin"><%=session.getAttribute("user")%><img src="<c:url value="/resources/img/dropdown.png" />"/></a></li>
                </ul>
            </div>
        </div>
    </header>
    <section>
    	 <div class="wrapper">
         	<div class="cont-01">
            	<ul>
                
                	<li><a href="#" class="provision"><img src="<c:url value="/resources/img/provision.png"/>"/></a><p><a href="#">L2 VPN provisioning</a></p></li>
                    <li><a href="#" class="service-instance"><img src="<c:url value="/resources/img/service-instance.png" />"/> /></a><p><a href="#">service instance</a></p></li>
                    <li><a href="#" class="reporting"><img src="<c:url value="/resources/img/report.png" />"/></a><p><a href="#">compliance reporting</a></p></li>
                    <li><a href="#" class="device"><img src="<c:url value="/resources/img/device-management.png"/>"/></a><p><a href="#">device management</a></p></li>
                   
                </ul>
            </div>
            <div class="cont-01">
            	<ul> <li><a href="#" class="turn"><img src="<c:url value="/resources/img/device-turn-up.png" />"/></a><p><a href="#">device turn up</a></p></li>
                    <li><a href="#" class="net-services"><img src="<c:url value="/resources/img/network-services.png" />"/></a><p><a href="#">Network Services</a></p></li>
                    <li><a href="#" class="validator"><img src="<c:url value="/resources/img/validator.png" />"/></a><p><a href="#">NED Validator</a></p></li>
                    <li><a href="#" class="workflow"><img src="<c:url value="/resources/img/workflow.png" />"/></a><p><a href="#">workflow builder</a></p></li>
                </ul>
            </div>
             <div class="cont-01">
            	<ul> <li><a href="#" class="service-path"><img src="<c:url value="/resources/img/service-path.png"/>"/></a><p><a href="#">service path</a></p></li>
                    <li><a href="#" class="golden-services"><img src="<c:url value="/resources/img/golden-services.png"/>"/></a><p><a href="#">golden services</a></p></li>
                    <li><a href="#" class="job-manager"><img src="<c:url value="/resources/img/job-manager.png" />"/></a><p><a href="#">job manager</a></p></li>
                    <li><a href="#" class="form-builder"><img src="<c:url value="/resources/img/form-builder.png" />"/></a><p><a href="#">form builder</a></p></li>
                </ul>
            </div>
            
            <div class="cont-01">
            	<ul> <li><a href="#" class="policy"><img src="<c:url value="/resources/img/policy-manager.png"  />"/></a><p><a href="#">policy manager</a></p></li>
                    <li><a href="#" class="service-manager"><img src="<c:url value="/resources/img/service-manager.png" />"/></a><p><a href="#">Service Manager</a></p></li>
                    <li><a href="#" class="provisioner"><img src="<c:url value="/resources/img/service-provisioner.png" />"/></a><p><a href="#">Service Provisioner</a></p></li>
                    <li><a href="#" class="mop"><img src="<c:url value="/resources/img/mop.png"/>"/></a><p><a href="#">mop</a></p></li>
                </ul>
            </div>
            
            <div class="cont-01">
            	<ul> <li><a href="#" class="configure"><img src="<c:url value="/resources/img/configuration-manager.png"/>"/></a><p><a href="#">Configuration Manager</a></p></li>
                    <li><a href="#" class="Networkview"><img src="<c:url value="/resources/img/network-view.png"/>"/></a><p><a href="#">Network View</a></p></li>
                    <li><a href="#" class="ACLManager"><img src="<c:url value="/resources/img/acl-manager.png"/>"/></a><p><a href="#">ACL Manager</a></p></li>
                  
                </ul>
            </div>
         </div>
    </section>

</div>

</body>
