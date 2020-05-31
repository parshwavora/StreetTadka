<%@ Page Title="" Language="C#" MasterPageFile="~/Salesman/Salesmanmasterpage.master" AutoEventWireup="true" CodeFile="SalesmenProfile.aspx.cs" Inherits="Salesman_SalesmenProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-content">
						<div class="page-header">
							<h1>
								Admin Profile Page
								<small>
									<i class="icon-double-angle-right"></i>
									profile
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<%--<div class="clearfix">
									<div class="pull-left alert alert-success no-margin">
										<button type="button" class="close" data-dismiss="alert">
											<i class="icon-remove"></i>
										</button>

										<i class="icon-umbrella bigger-120 blue"></i>
										Click on the image below or on profile fields to edit them ...
									</div>

									<div class="pull-right">
										<span class="green middle bolder">Choose profile: &nbsp;</span>

										<div class="btn-toolbar inline middle no-margin">
											<div data-toggle="buttons" class="btn-group no-margin">
												<label class="btn btn-sm btn-yellow active">
													<span class="bigger-110">1</span>

													<input value="1" type="radio">
												</label>

												<label class="btn btn-sm btn-yellow">
													<span class="bigger-110">2</span>

													<input value="2" type="radio">
												</label>

												<label class="btn btn-sm btn-yellow">
													<span class="bigger-110">3</span>

													<input value="3" type="radio">
												</label>
											</div>
										</div>
									</div>
								</div>--%>

								<div class="hr dotted"></div>

								<div>
									<div id="user-profile-1" class="user-profile row">
										<div class="col-xs-12 col-sm-3 center">
											<div>
												<span class="profile-picture">
													<asp:image runat="server" class="editable img-responsive editable-click editable-empty editable-open" id="img1" ></asp:image>
												</span>

												<div class="space-4"></div>

												<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
													<div class="inline position-relative">
														<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
															<i class="icon-circle light-green middle"></i>
															&nbsp;
															<span class="white"><asp:label runat="server" id="Name" ></asp:label></span>
														</a>

														<ul class="align-left dropdown-menu dropdown-caret dropdown-lighter">
															<li class="dropdown-header"> Change Status </li>

															<li>
																<a href="#">
																	<i class="icon-circle green"></i>
																	&nbsp;
																	<span class="green">Available</span>
																</a>
															</li>

															<li>
																<a href="#">
																	<i class="icon-circle red"></i>
																	&nbsp;
																	<span class="red">Busy</span>
																</a>
															</li>

															<li>
																<a href="#">
																	<i class="icon-circle grey"></i>
																	&nbsp;
																	<span class="grey">Invisible</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>

											<%--<div class="space-6"></div>

											<div class="profile-contact-info">
											<%--	<div class="profile-contact-links align-left">
													<a class="btn btn-link" href="#">
														<i class="icon-plus-sign bigger-120 green"></i>
														Add as a friend
													</a>

													<a class="btn btn-link" href="#">
														<i class="icon-envelope bigger-120 pink"></i>
														Send a message
													</a>

													<a class="btn btn-link" href="#">
														<i class="icon-globe bigger-125 blue"></i>
														www.alexdoe.com
													</a>
												</div>

												<div class="space-6"></div>

												<div class="profile-social-links center">
													<a href="#" class="tooltip-info" title="" data-original-title="Visit my Facebook">
														<i class="middle icon-facebook-sign icon-2x blue"></i>
													</a>

													<a href="#" class="tooltip-info" title="" data-original-title="Visit my Twitter">
														<i class="middle icon-twitter-sign icon-2x light-blue"></i>
													</a>

													<a href="#" class="tooltip-error" title="" data-original-title="Visit my Pinterest">
														<i class="middle icon-pinterest-sign icon-2x red"></i>
													</a>
												</div>
											</div>

											<div class="hr hr12 dotted"></div>

											<div class="clearfix">
												<div class="grid2">
													<span class="bigger-175 blue">25</span>

													<br>
													Followers
												</div>

												<div class="grid2">
													<span class="bigger-175 blue">12</span>

													<br>
													Following
												</div>
											</div>

											<div class="hr hr16 dotted"></div>--%>
										</div>

										<div class="col-xs-12 col-sm-9">
											

											<div class="space-4"></div>

											<div class="profile-user-info profile-user-info-striped">
												<div class="profile-info-row">
													<div class="profile-info-name"> Name </div>

													<div class="profile-info-value">
														<span class="editable editable-click" id="fullname"><asp:label runat="server" id="Label1" ></asp:label></span>
													</div>
												</div>
                                                <div class="profile-info-row">
													<div class="profile-info-name"> Username </div>

													<div class="profile-info-value">
														<span class="editable editable-click" id="username"><asp:label runat="server" id="Label2" ></asp:label></span>
													</div>
												</div>
                                                <div class="profile-info-row">
													<div class="profile-info-name"> Birthdate </div>

													<div class="profile-info-value">
														<span class="editable editable-click" id="bday"><asp:label runat="server" id="Label6" ></asp:label></span>
													</div>
												</div>
												<div class="profile-info-row">
													<div class="profile-info-name"> E-mail </div>

													<div class="profile-info-value">
														<span class="editable editable-click" id="email"><asp:label runat="server" id="Label3" ></asp:label></span>
													</div>
												</div>
                                                <div class="profile-info-row">
													<div class="profile-info-name"> Phone </div>

													<div class="profile-info-value">
														<span class="editable editable-click" id="phone"><asp:label runat="server" id="Label4" ></asp:label></span>
													</div>
												</div>
                                                <div class="profile-info-row">
													<div class="profile-info-name"> Gender </div>

													<div class="profile-info-value">
														<span class="editable editable-click" id="gender"><asp:label runat="server" id="Label5" ></asp:label></span>
													</div>
												</div>
                                                <div class="profile-info-row">
													<div class="profile-info-name"> Address </div>

													<div class="profile-info-value">
														<span class="editable editable-click" id="address"><asp:label runat="server" id="Label7" ></asp:label></span>
													</div>
												</div>
											</div>

											<div class="space-20"></div>
                                            </div>
                                        </div>
                                    </div></div></div></div>
</asp:Content>

