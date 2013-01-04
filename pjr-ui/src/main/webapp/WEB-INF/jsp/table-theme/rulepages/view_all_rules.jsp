<%@page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<script type="text/javascript">

// initialise plugins
jQuery(function(){
	jQuery('ul.sf-menu').superfish();
});

</script>

<style type="text/css" >

</style>

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
    					url=$input.attr("deleteurl");
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



<b><a href="#">Home</a></b>
<br/>
<table cellspacing="0" width="100%" class="ruletable">
	<tr>
		<!-- <th align="left">Rule Id</th> -->
		<th align="left" class=ruletableth style="width:300px;">Rule Name</th>
		<th align="left" class=ruletableth style="width:100px;">Execution Order</th>
		<th align="left" class=ruletableth style="width:50px;">Status</th>
		<th align="left" class=ruletableth style="width:50px;"></th>
		<th align="left" class=ruletableth style="width:40px;"></th>
		<th align="left" class=ruletableth style="width:75px;"></th>
		<th align="left" class=ruletableth style="width:75px;"></th>
		<th align="left" class=ruletableth style="width:60px;"></th>
		<th align="left" class=ruletableth style="width:80px;"></th>
	</tr>	
	<c:forEach items="${rules}" var="rule">
		<tr>
			<!-- <td class="ruletabletd">${rule.ruleId}</td> -->
			<td class="ruletabletd"><c:out value="${rule.ruleName}"/></td>
			<!-- <td class="ruletabletd">${rule.ruleDes}</td> -->

			<!-- <td class="ruletabletd">${rule.returnValue}</td> -->
			<td class="ruletabletd"><c:out value="${rule.executionOrder}"/></td>		
			<td class="ruletabletd">
			<c:choose>
				<c:when test="${rule.active}"><img src="<c:url value="/static/images/active.png"/>" height="24" width="24" class="masterTooltip" tip="Rule is Active" /></c:when>
				<c:otherwise><img src="<c:url value="/static/images/disabled.png"/>" height="24" width="24" class="masterTooltip" tip="Rule is Disabled" /></c:otherwise>
			</c:choose>
			</td>							
			
			<td class="ruletabletd"><A href="<c:url value="/rule/view/${rule.ruleId}"/>" >View</A></td>
			<td class="ruletabletd"><A href="<c:url value="/rule/edit/${rule.ruleId}"/>" >Edit</A></td>
			
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<td class="ruletabletd"><A href="<c:url value="/admin/subrule/view/rule/${rule.ruleId}"/>" >
			<img src="<c:url value="/static/images/icon_auto-assign_subrule.png"/>" height="30" width="80" border="0"  class="masterTooltip" tip="Assign / UnAssign Subrules" />
			</A></td>
			<td class="ruletabletd"><A href="<c:url value="/admin/operator/view/rule/${rule.ruleId}"/>" >
			<img src="<c:url value="/static/images/icon_auto-assign_opr.png"/>" height="30" width="80" border="0"  class="masterTooltip" tip="Assign / Unassign Operator" />
			</A>
			</td>									
			<td class="ruletabletd">
			<A class="delete" href="#" deleteurl="<c:url value="/admin/rule/delete/${rule.ruleId}"/>" >Delete</A></td>
			<td class="ruletabletd">
				<A  href="<c:url value="/admin/rule/duplicate?ruleIdToCopy=${rule.ruleId}"/>"  >Duplicate</A>
			</td>			
			</sec:authorize>					
		</tr>
	</c:forEach>
</table>
<div id="dialog" title="Confirming Delete">Are you sure you want to Delete?</div>