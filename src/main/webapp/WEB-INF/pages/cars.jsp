<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>

    <form method="POST" action="${pageContext.request.contextPath}/Cars">

        <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
            <a href="${pageContext.request.contextPath}/AddCar" class="btn btn-primary btn-lg">Add Car</a>
            <button class="btn btn-danger btn-lg" type="submit">Delete Cars</button>
        </c:if>

        <div class="container text-center mt-3">
            <div class="row fw-bold">


                <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
                    <div class="col">Select</div>
                </c:if>

                <div class="col">License Plate</div>
                <div class="col">Parking Spot</div>
                <div class="col">Owner</div>
                <div class="col">Actions</div>
            </div>

            <c:forEach var="car" items="${cars}">
                <div class="row border-bottom py-2">


                    <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
                        <div class="col align-self-center">
                            <input type="checkbox" name="car_ids" value="${car.id}" />
                        </div>
                    </c:if>

                    <div class="col align-self-center">
                            ${car.licensePlate}
                    </div>
                    <div class="col align-self-center">
                            ${car.parkingSpot}
                    </div>
                    <div class="col align-self-center">
                            ${car.ownerName}
                    </div>

                    <div class="col">

                        <c:if test="${pageContext.request.isUserInRole('WRITE_CARS')}">
                            <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}">Edit Car</a>
                        </c:if>
                    </div>
                </div>
            </c:forEach>
        </div>
    </form>

    <h5 class="mt-3">Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>