<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Add Car">
    <h1>Add Car</h1>

    <form class="needs-validation" method="POST" action="${pageContext.request.contextPath}/AddCar">

            <%-- License Plate Field --%>
        <div class="mb-3">
            <label for="license_plate" class="form-label">License Plate</label>
            <input type="text" class="form-control" id="license_plate" name="license_plate" required>
        </div>

            <%-- Parking Spot Field --%>
        <div class="mb-3">
            <label for="parking_spot" class="form-label">Parking Spot</label>
            <input type="text" class="form-control" id="parking_spot" name="parking_spot" required>
        </div>

            <%-- Owner Dropdown Selector --%>
        <div class="mb-3">
            <label for="owner_id" class="form-label">Owner</label>
            <select class="form-select" id="owner_id" name="owner_id" required>
                <option value="">Choose...</option>
                    <%-- Iterating over users as per Image 2 --%>
                <c:forEach var="user" items="${users}" varStatus="status">
                    <option value="${user.id}">${user.username}</option>
                </c:forEach>
            </select>
        </div>

            <%-- Submit Button --%>
        <button type="submit" class="btn btn-primary">Save</button>

    </form>
</t:pageTemplate>