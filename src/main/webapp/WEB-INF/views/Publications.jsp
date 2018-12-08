<%@ include file="common/Header.jsp" %>
<%@ include file="common/NavBar.jsp" %>

<br/>
<br/>

<div class="ui centered grid">
	<div class="column row">
		<div class="ten wide computer column">
			<div class="input-group input-group-md mb-3">
				<div class="input-group-prepend">
					<button class="btn btn-outline-secondary dropdown-toggle"
						type="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"><i class="tag icon"></i> Tags</button>
					<div class="dropdown-menu" aria-labelledby="dLabel">
						<div class="ui fluid mini icon input">
							<input type="text" placeholder="Search..."> 
							<i class="circular search link icon"></i>
						</div>
						<div role="separator" class="dropdown-divider"></div>
						<c:forEach items="${tags}" var="tag">
							<div class="ui checkbox">
								<input type="checkbox" name="example">
								<label>${tag.name}</label>
							</div>
						</c:forEach>
					</div>
				</div>
				
				<div class="form-control" aria-label="Text input with dropdown button">
					<div class="ui mini fluid icon input" style="with:100%; height:100%;">
						<input type="text" name="search" placeholder="Search questions here...">
						<i class="search icon"></i>
					</div>
				</div>
				<div class="input-group-append">
					<div class="input-group-text">
						Voting: 
						<span><i class=" sort alphabet down icon"></i><i class=" sort alphabet up icon"></i></span>
					</div>
					<div class="input-group-text">
						Date: 
						<span><i class=" sort amount down icon"></i><i class=" sort amount up icon"></i></span>
					</div>
				</div>
			</div>
		</div>

	</div>

	<c:forEach items="${publications}" var="pub">
		<div class="column row">
			<div class="ten wide computer column">
				<div class="ui fluid card">
					<div class="center aligned content">
						<div class="left floated">
							<c:set var="user" value="${pub.editor}" scope="page"/>
							<img class="ui avatar image"
								src="/assets/img/${user.photo}">
							<c:out value="${user.firstName} ${user.lastName}"/>
						</div>
						<div class="right floated meta">
							<span class="date">${pub.date}</span>
							<i class="check circle outline icon"></i>
						</div>
					</div>
					<div class="center aligned description">
						<p>${pub.description}</p>
					</div>
					<div class="center aligned content">
						<span class="left floated">
							<a href="/review?id=${pub.id}">
								<i class="comment alternate outline icon"></i> ${pub.commentNb} comments
							</a> |
							<i class="icon_pointer pencil alternate icon ${pub.id}"></i>
						</span>
						<c:forEach items="${pub.tags}" var="tag">
							<a href="#">#${tag.name}</a>
						</c:forEach>
						<span class="right floated">
							<i class="icon_pointer thumbs down outline icon"></i>${pub.upVote }
							<i class="icon_pointer thumbs up outline icon"></i>${pub.downVote }
							<i class="star icon"></i>
						</span>
					</div>
					<div class="extra content ${pub.id}" style="display:none">
						<div class="ui mini fluid icon input">
							<input type="text" placeholder="Add your response">
							<i class="right floated large paper plane outline icon"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
</div>

<%@ include file="common/Footer.jsp" %>

<script src="../lib/js/addResponse.js"></script>
