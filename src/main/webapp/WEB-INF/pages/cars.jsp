<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>

    <%--
        1. Form Wrapper: Wraps the buttons and the list.
           Action points to the Cars servlet (POST method).
    --%>
    <form method="POST" action="${pageContext.request.contextPath}/Cars">

            <%-- Buttons: Add Car and the new Delete Cars button --%>
        <a href="${pageContext.request.contextPath}/AddCar" class="btn btn-primary btn-lg">Add Car</a>
        <button class="btn btn-danger btn-lg" type="submit">Delete Cars</button>

        <div class="container text-center mt-3">
                <%-- Header Row --%>
            <div class="row fw-bold">
                <div class="col">Select</div> <%-- Header for checkboxes --%>
                <div class="col">License Plate</div>
                <div class="col">Parking Spot</div>
                <div class="col">Owner</div>
                <div class="col">Actions</div>
            </div>

            <c:forEach var="car" items="${cars}">
                <div class="row border-bottom py-2">
                        <%--
                            2. Checkbox Column:
                               name="car_ids" (plural) allows multiple values to be sent.
                               value="${car.id}" sends the specific ID of the checked car.
                        --%>
                    <div class="col align-self-center">
                        <input type="checkbox" name="car_ids" value="${car.id}" />
                    </div>

                        <%-- Existing Data Columns --%>
                    <div class="col align-self-center">
                            ${car.licensePlate}
                    </div>
                    <div class="col align-self-center">
                            ${car.parkingSpot}
                    </div>
                    <div class="col align-self-center">
                            ${car.ownerName}
                    </div>

                        <%-- Edit Button Column --%>
                    <div class="col">
                        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}">Edit Car</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </form>

    <h5 class="mt-3">Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>