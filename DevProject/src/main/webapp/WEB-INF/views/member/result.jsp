<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REGISTER USER</title>
</head>
<body>
	<table border="1">
			<tr>
				<td>유저 ID</td>
				<td>
					${member.userId }
				</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td>
					${member.password }
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
					${member.userName }
				</td>
			</tr>
			<tr>
				<td>E-Mail</td>
				<td>
					${member.email }
				</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>
					${member.dateOfBirth }
				</td>
			</tr>
			<tr>
				<td>성별</td>
				<td> 
					${member.gender }
				</td>
			</tr>
			<tr>
				<td>개발자 여부</td>
				<td>
					${member.developer }
				</td>
			</tr>
			<tr>
				<td>외국인 여부</td>
				<td>
				<c:if test="${member.foreigner eq true }">
					외국인
				</c:if>
				<c:if test="${member.foreigner eq false }">
					외국인 X
				</c:if>
				</td>
			</tr>
			<tr>
				<td>국적</td>
				<td>
				<c:forEach items="${member.nationality }" var="nation">
					<c:if test="${nation eq 'korea' }">
						한국 <br>
					</c:if>
					<c:if test="${nation eq 'germany' }">
						독일 <br>
					</c:if>
					<c:if test="${nation eq 'austrailia' }">
						호주 <br>
					</c:if>
					<c:if test="${nation eq 'canada' }">
						캐나다 <br>
					</c:if>
					<c:if test="${nation eq 'usa' }">
						미국 <br>
					</c:if>
				</c:forEach>
				</td>
			</tr>
			<tr>
				<td>소유차량</td>
				<td>
				<c:forEach items="${member.cars }" var="car">
					<c:if test="${car eq 'jeep' }">
						지프 <br>
					</c:if>
					<c:if test="${car eq 'bmw' }">
						BMW <br>
					</c:if>
					<c:if test="${car eq 'audi' }">
						아우디 <br>
					</c:if>
					<c:if test="${car eq 'volvo' }">
						볼보 <br>
					</c:if>
				</c:forEach>
				</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
				<c:forEach items="${member.hobby }" var="hobby">
					<c:if test="${hobby eq 'sports' }">
						스포츠 <br>
					</c:if>
					<c:if test="${hobby eq 'music' }">
						음악 <br>
					</c:if>
					<c:if test="${hobby eq 'movie' }">
						영화 <br>
					</c:if>
				</c:forEach>
				</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td>
					${member.address.postCode }
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					${member.address.location }
				</td>
			</tr>
			<c:forEach items="${member.cardList }" var="card"  varStatus="status">
				<tr>
					<td>카드${status.count} - 번호</td>
					<td>
						${card.no }
					</td>
				</tr>
				<tr>
					<td>카드${status.count} - 유효년월</td>
					<td>
						${card.vaildMonth }
					</td>
				</tr>
			</c:forEach>

			<tr>
				<td>소개</td>
				<td>
					${member.introduction }
				</td>
			</tr>
		</table>
</body>
</html>