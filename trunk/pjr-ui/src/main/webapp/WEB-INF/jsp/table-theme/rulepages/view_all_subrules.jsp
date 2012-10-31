<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<font color="#151B54">
<a href="<c:url value="/rule/view/all" />"> Home </a> &gt;&gt; <b> View All Subrule </b>
</font>

  


<script type="text/javascript">
$(document).ready(function() {
	   // Tooltip only Text
    $('.masterTooltip').hover(function(){
            // Hover over code
            var title = $(this).attr('tip');
            $(this).data('tipText', title).removeAttr('tip');
            $('<p class="tooltip"></p>')
            .text(title)
            .appendTo('body')
            .fadeIn('slow');
    }, function() {
            // Hover out code
            $(this).attr('tip', $(this).data('tipText'));
            $('.tooltip').remove();
    }).mousemove(function(e) {
            var mousex = e.pageX + 20; //Get X coordinates
            var mousey = e.pageY + 10; //Get Y coordinates
            $('.tooltip')
            .css({ top: mousey, left: mousex })
    });
    
        //Dialog box hide
        $("#dialog").hide();
        
        //Delete confirmation starts
        $(".delete").click(function(){
        	var $input = $(this);
    		$("#dialog").dialog({
    			resizable: false,
    			draggable: false,
    			modal: true,
    			show: {effect: 'fade', duration: 500},
				hide: {effect: 'fade', duration: 500},
    			buttons: {
    				"Yes": function() {
    					url=$input.attr("name");
    					window.location.href = url;
    				},
    				"No": function() {
    					$(this).dialog("close");
    				}
    			}
    		}); // dialog <ENDS>
            });
        //Delete confirmation ends
});
</script>

<table cellspacing="0" width="100%" class="ruletable">
	<tr>
		<!--<th align="left" width="12%">Subrule ID</th>-->
		<th align="left" class=ruletableth style="width:300px;">Subrule Name</th>
		<!--<th align="left" width="18%">Subrule Description</th>-->
		<th align="left" class=ruletableth style="width:100px;">Default Value</th>
		<th align="left" class=ruletableth style="width:50px;">Status</th>
		<th align="left" class=ruletableth style="width:50px;"></th>
		<th align="left" class=ruletableth style="width:50px;"></th>
		<th align="left" class=ruletableth style="width:95px;"></th>
		<th align="left" class=ruletableth style="width:95px;"></th>
		<th align="left" class=ruletableth style="width:60px;"></th>
	</tr>
	<c:forEach items="${subrules}" var="subrule">
		<tr>
			<!--<td class="ruletabletd">${subrule.id}</td>-->
			<td class="ruletabletd"><c:out value="${subrule.name}"/></td>
			<!--<td class="ruletabletd">${subrule.description}</td>-->
			<td class="ruletabletd"><c:out value="${subrule.defaultValue}"/></td>
			<td class="ruletabletd">
			<c:choose>
				<c:when test="${subrule.active}"><img src="<c:url value="/static/images/active.png"/>" height="24" width="24" class="masterTooltip" tip="Subrule is Active" /></c:when>
				<c:otherwise><img src="<c:url value="/static/images/disabled.png"/>" height="24" width="24" class="masterTooltip" tip="Subrule is Disabled" /></c:otherwise>
			</c:choose>
			</td>
			<td class="ruletabletd"><A href="<c:url value="/subrule/view/${subrule.id}"/>" >View</A></td>
			<td class="ruletabletd"><A href="<c:url value="/subrule/edit/${subrule.id}"/>" >Edit</A></td>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<td class="ruletabletd">
			<A href="<c:url value="/admin/operator/view/subrule/${subrule.id}"/>" >
			<img src="<c:url value="/static/images/icon_auto-assign_opr.png"/>" height="30" width="80" border="0" tip="Assign / Unassign Operator" class="masterTooltip" />
			</A>
			</td>
			<td class="ruletabletd"><A href="<c:url value="/admin/attribute/view/subrule/${subrule.id}"/>" >
			<img src="<c:url value="/static/images/icon_auto-assign_attr.png"/>" height="30" width="80" border="0" tip="Assign / UnAssign Attribute" class="masterTooltip"  />
			</A>
			</td>			
			<td class="ruletabletd">			
			<A class="delete" name="<c:url value="/admin/subrule/delete/${subrule.id}"/>" href="#">Delete</A>
			</td>
			</sec:authorize>
		</tr>
	</c:forEach>
</table>
<div id="dialog" title="Confirming Delete">Are you sure you want to Delete?</div>
<center>
		<font style="font-weight: bold; color: green;"><c:out value="${message}"></c:out></font>		
</center>
