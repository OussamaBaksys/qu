<%@ include file="common/Header.jsp" %>
<%@ include file="common/NavBar.jsp" %>

<br/>
<br/>

<div class="container">
	<div class="row justify-content-center">
		
		<!--  profile panel -->
		<c:set var="user" value="${publication.editor}" scope="page"/>
		<div class="col-md-3" >
			<div class="card text-center">
				<div class="card-body">
					<div class="card-title">
						<div class="container">
							<div class="row justify-content-center justify-content-sm-center justify-content-md-center justify-content-xl-center">
								<div class="col-auto col-sm-auto col-md-auto col-xl-auto">
									<img class="ui small centered circular image" src="../assets/img/${user.photo}" style=" border: 1px grey solid; width: 90px; height: 90px">
									<i class="large bell slash icon" style="position: absolute; bottom: -2px; right: 20px; color:red;"></i>
								</div>
							</div>
						</div>
					</div>
					<p class="card-text">
						<c:out value="${user.firstName} ${user.lastName}"/>
					</p>
					<p class="card-text">
						<span class="text-muted date">
							<i class="calendar alternate outline icon"></i>
							Published on <fmt:formatDate value="${publication.date}" dateStyle="default" type="both"/>
						</span>
					</p>
					<p class="card-text">
						<i class="check circle outline icon"></i>
						<small class="text-muted">
							Last updated <fmt:formatDate value="${publication.lastUpdatedDate}" dateStyle="default"/>
						</small>
					</p>
				</div>
			</div>
			<br/>
		</div>
		
		
		<div class="col-md-9" >
			<!-- qeustion -->
			<div class="col row">
				<div class="col-md-12">
					<div class="ui fluid raised secondary segment">
						<a class="ui red ribbon label">
							<i class="star icon"></i>
						</a>
						<div class="ui top right attached label">
							<i class="large red bell slash outline icon"></i>
						</div>
						<p style="text-align: center; padding: 20px;">${publication.description}</p>
					</div>
				</div>
			</div>
			
			
			<!-- voting -->
			<div class="col row">
				<div class="col-md-6">
					<div class="ui left floated basic segment">
						<i class="tags icon"></i>
						<c:forEach items="${publication.tags}" var="tag">
							<a href="#">#${tag.name}</a>
						</c:forEach>
					</div>
				</div>
				<div class="col-md-6">
					<div class="ui right floated basic segment">
						<div class="mini ui labeled button" tabindex="0">
							<div class="mini ui red button">
								<i class="thumbs up outline icon"></i>
							</div>
							<a class="mini ui basic red left pointing label">${publication.upVote}</a>
						</div>
						<div class="mini ui labeled button" tabindex="0">
							<div class="mini ui basic blue button">
								<i class="thumbs down outline icon"></i>
							</div>
							<a class="mini ui basic left pointing blue label">${publication.downVote}</a>
						</div>
					</div>
				</div>
			</div>
			
			<!-- options -->
			<div class="col row">
				<div class="col-md-6">
					<div class="ui left floated basic segment">
						<h3>${publication.commentNb} Comments</h3>
					</div>
				</div>
				<div class="col-md-6">
					<div class="ui right floated basic segment">
						<div class="ui mini basic icon right floated buttons">
							<button class="ui button">Date:</button>
							<button class="ui button">
								<i class="sort amount down icon"></i>
							</button>
							<button class="ui button">
								<i class="sort amount up icon"></i>
							</button>
						</div>

						<div class="ui mini basic icon right floated buttons">
							<button class="ui button">Vote:</button>
							<button class="ui button">
								<i class="sort alphabet down icon"></i>
							</button>
							<button class="ui button">
								<i class="sort alphabet up icon"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col ui divider"></div>
			
			<!-- comments -->
			<div class="col">
				<div class="ui threaded comments">
					
					<c:forEach items="${comments}" var="comment">
						<div class="comment">
							<c:set var="user" value="${comment.editor}" scope="page"/>
							<a class="avatar"><img src="/assets/img/${user.photo}"></a>
							<div class="content">
								<a class="author">${user.firstName} ${user.lastName}</a>
								<div class="metadata">
									<span class="date">${comment.date}</span>
								</div>
								<div class="text">
									<p>${comment.reply}</p>
								</div>
								<div class="actions">
									<a class="reply">Reply</a> <i class="thumbs down outline icon"></i>${comment.downVote}
									<i class="thumbs up outline icon"></i>${comment.upVote}
								</div>
							</div>

							<!-- sub comments -->
							<c:if test="${not empty comment.subComments}" var="subComments">
								<div class="comments">
									<c:forEach items="${comment.subComments}" var="subComment">
										<div class="comment">
											<c:set var="user" value="${subComment.editor}" scope="page" />
											<a class="avatar"><img src="/assets/img/${user.photo}"></a>
											<div class="content">
												<a class="author">${user.firstName} ${user.lastName}</a>
												<div class="metadata">
													<span class="date">${subComment.date}</span>
												</div>
												<div class="text">
													<p>${subComment.reply}</p>
												</div>
												<div class="actions">
													<a class="reply">Reply</a> <i
														class="thumbs down outline icon"></i>${subComment.downVote}
													<i class="thumbs up outline icon"></i>${subComment.upVote}
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</c:if>
						</div>
					</c:forEach>
					<form class="ui reply form">
						<div class="field">
							<textarea></textarea>
						</div>
						<div class="ui blue labeled submit icon button">
							<i class="icon edit"></i> Add Reply
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>



<%@ include file="common/Footer.jsp" %>

<script src="../lib/js/addResponse.js"></script>
