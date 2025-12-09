<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Edit Car">
    <h1>Edit Car</h1>

    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">

            <%-- License Plate Field --%>
        <div class="mb-3">
            <label for="license_plate" class="form-label">License Plate</label>
                <%-- Added value="${car.licensePlate}" to pre-fill data --%>
            <input type="text" class="form-control" id="license_plate" name="license_plate" value="${car.licensePlate}" required>
            <div class="invalid-feedback">
                License Plate is required.
            </div>
        </div>

            <%-- Parking Spot Field --%>
        <div class="mb-3">
            <label for="parking_spot" class="form-label">Parking Spot</label>
                <%-- Added value="${car.parkingSpot}" to pre-fill data --%>
            <input type="text" class="form-control" id="parking_spot" name="parking_spot" value="${car.parkingSpot}" required>
            <div class="invalid-feedback">
                Parking Spot is required.
            </div>
        </div>

            <%-- Owner Dropdown Selector --%>
        <div class="mb-3">
            <label for="owner_id" class="form-label">Owner</label>
            <select class="form-select" id="owner_id" name="owner_id" required>
                <option value="">Choose...</option>
                <c:forEach var="user" items="${users}" varStatus="status">
                    <%-- Logic to pre-select the current owner: checks if ownerName matches username --%>
                    <option value="${user.id}" ${car.ownerName eq user.username ? 'selected' : ''}>${user.username}</option>
                </c:forEach>
            </select>
            <div class="invalid-feedback">
                Please select an owner.
            </div>
        </div>

            <%-- Hidden Input for Car ID (Required for doPost) --%>
        <input type="hidden" name="car_id" value="${car.id}" />

            <%-- Submit Button --%>
        <button type="submit" class="btn btn-primary">Save Changes</button>

    </form>

</t:pageTemplate>