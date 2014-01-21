<?xml version="1.0" encoding="UTF-8"?>
  
   
   
   
<structure version="4" encodinghtml="UTF-8" encodingrtf="ISO-8859-1" encodingpdf="UTF-8">
	<schemasources>
		<namespaces>
			<nspair prefix="n1" uri="http://printing.award.kc.kuali.bu.edu/awardnotice"/>
		</namespaces>
		<schemasources>
			<xsdschemasource name="$XML1" main="1" schemafile="BUAwardNotice.xsd" workingxmlfile="BUAwardNotice.xml">
				<xmltablesupport/>
				<textstateicons/>
			</xsdschemasource>
		</schemasources>
	</schemasources>
	<parameters/>
	<scripts>
		<javascript name="javascript"/>
	</scripts>
	<globalstyles/>
	<parts>
		<editorproperties/>
		<properties/>
		<styles/>
		<children>
			<globaltemplate match="/">
				<editorproperties/>
				<properties/>
				<styles/>
				<children>
					<template match="$XML1">
						<editorproperties elementstodisplay="1"/>
						<properties/>
						<styles/>
						<children>
							<template match="n1:AwardNotice">
								<editorproperties elementstodisplay="1"/>
								<properties/>
								<styles/>
								<children>
									<template match="n1:AwardHeader">
										<editorproperties elementstodisplay="1"/>
										<properties/>
										<styles/>
										<children>
											<table>
												<editorproperties/>
												<properties border="1" cellpadding="0" cellspacing="0" frame="border" width="100%"/>
												<styles/>
												<children>
													<tablebody>
														<editorproperties/>
														<properties/>
														<styles/>
														<children>
															<tablerow>
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<text fixtext="Date:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<text fixtext=" ">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																			<template match="n1:TransactionDate">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format string="MM / DD / YYYY" datatype="date"/>
																					</content>
																					<button>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<action>
																							<datepicker/>
																						</action>
																					</button>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<text fixtext="Transaction Type:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<text fixtext=" ">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																			<template match="n1:TransactionType">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="string"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<text fixtext="SAP Grants Number:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<template match="n1:SAPGrantNumber">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="string"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																</children>
															</tablerow>
															<tablerow>
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<text fixtext="Fund Center:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<template match="n1:FundsCenterInfo">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<template match="n1:Address1">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="string"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																					<text fixtext=",">
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																					</text>
																					<template match="n1:Address2">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="string"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																					<text fixtext=",">
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																					</text>
																					<template match="n1:Address3">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="string"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																					<newline>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																					</newline>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties colspan="2"/>
																		<styles/>
																		<children>
																			<text fixtext="Investigator(s):">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<table>
																				<editorproperties/>
																				<properties border="0" cellpadding="0" cellspacing="0" width="100%"/>
																				<styles border="0" border-bottom="0" border-bottom-style="none"/>
																				<children>
																					<tablebody>
																						<editorproperties/>
																						<properties/>
																						<styles border="0"/>
																						<children>
																							<template match="n1:Investigators">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<template match="n1:Investigator">
																										<editorproperties elementstodisplay="1"/>
																										<properties/>
																										<styles/>
																										<children>
																											<tablerow>
																												<editorproperties/>
																												<properties/>
																												<styles border="0"/>
																												<children>
																													<tablecell>
																														<editorproperties/>
																														<properties colspan="2"/>
																														<styles border="0"/>
																														<children>
																															<template match="n1:PersonName">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																															<text fixtext="(">
																																<editorproperties/>
																																<properties/>
																																<styles/>
																																<children/>
																															</text>
																															<template match="n1:Role">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																															<text fixtext=")">
																																<editorproperties/>
																																<properties/>
																																<styles/>
																																<children/>
																															</text>
																														</children>
																													</tablecell>
																												</children>
																											</tablerow>
																										</children>
																										<addvalidations/>
																									</template>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablebody>
																				</children>
																			</table>
																		</children>
																	</tablecell>
																</children>
															</tablerow>
															<tablerow>
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<tablecell>
																		<editorproperties/>
																		<properties colspan="3"/>
																		<styles/>
																		<children>
																			<text fixtext="Title:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<text fixtext=" ">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																			<template match="n1:Title">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="string"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																</children>
															</tablerow>
															<tablerow>
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<text fixtext="Sponsor:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<text fixtext=" ">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																			<template match="n1:SponsorDescription">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="string"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties width="33%"/>
																		<styles/>
																		<children>
																			<text fixtext="Prime Sponsor:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<text fixtext=" ">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																			<template match="n1:PrimeSponsorDescription">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="string"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties width="34%"/>
																		<styles/>
																		<children>
																			<text fixtext="Sponsor Award ID:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<text fixtext=" ">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																			<template match="n1:SponsorAwardNumber">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="string"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																</children>
															</tablerow>
															<tablerow>
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<text fixtext="Dept. Admin:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<table>
																				<editorproperties/>
																				<properties border="0" cellpadding="0" cellspacing="0"/>
																				<styles/>
																				<children>
																					<tablebody>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children>
																							<template match="n1:DepartmentAdminList">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<template match="n1:Admin">
																										<editorproperties elementstodisplay="1"/>
																										<properties/>
																										<styles/>
																										<children>
																											<tablerow>
																												<editorproperties/>
																												<properties/>
																												<styles/>
																												<children>
																													<tablecell>
																														<editorproperties/>
																														<properties colspan="3"/>
																														<styles/>
																														<children>
																															<template match="n1:Name">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																															<text fixtext=",">
																																<editorproperties/>
																																<properties/>
																																<styles/>
																																<children/>
																															</text>
																															<template match="n1:Phone">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																															<text fixtext=",">
																																<editorproperties/>
																																<properties/>
																																<styles/>
																																<children/>
																															</text>
																															<template match="n1:Email">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																														</children>
																													</tablecell>
																												</children>
																											</tablerow>
																										</children>
																										<addvalidations/>
																									</template>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablebody>
																				</children>
																			</table>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<text fixtext="OSP Admin:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<table>
																				<editorproperties/>
																				<properties border="0" cellpadding="0" cellspacing="0" width="100%"/>
																				<styles/>
																				<children>
																					<tablebody>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children>
																							<template match="n1:OSPAdminList">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<template match="n1:Admin">
																										<editorproperties elementstodisplay="1"/>
																										<properties/>
																										<styles/>
																										<children>
																											<tablerow>
																												<editorproperties/>
																												<properties/>
																												<styles/>
																												<children>
																													<tablecell>
																														<editorproperties/>
																														<properties colspan="3"/>
																														<styles/>
																														<children>
																															<template match="n1:Name">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																															<text fixtext=",">
																																<editorproperties/>
																																<properties/>
																																<styles/>
																																<children/>
																															</text>
																															<template match="n1:Phone">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																															<text fixtext=",">
																																<editorproperties/>
																																<properties/>
																																<styles/>
																																<children/>
																															</text>
																															<template match="n1:Email">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																														</children>
																													</tablecell>
																												</children>
																											</tablerow>
																										</children>
																										<addvalidations/>
																									</template>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablebody>
																				</children>
																			</table>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<text fixtext="PAFO Admin:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																			<table>
																				<editorproperties/>
																				<properties border="0" cellpadding="0" cellspacing="0" width="100%"/>
																				<styles/>
																				<children>
																					<tablebody>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children>
																							<template match="n1:PAFOAdminList">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<template match="n1:Admin">
																										<editorproperties elementstodisplay="1"/>
																										<properties/>
																										<styles/>
																										<children>
																											<tablerow>
																												<editorproperties/>
																												<properties/>
																												<styles/>
																												<children>
																													<tablecell>
																														<editorproperties/>
																														<properties colspan="3"/>
																														<styles/>
																														<children>
																															<template match="n1:Name">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																															<text fixtext=",">
																																<editorproperties/>
																																<properties/>
																																<styles/>
																																<children/>
																															</text>
																															<template match="n1:Phone">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																															<text fixtext=",">
																																<editorproperties/>
																																<properties/>
																																<styles/>
																																<children/>
																															</text>
																															<template match="n1:Email">
																																<editorproperties elementstodisplay="1"/>
																																<properties/>
																																<styles/>
																																<children>
																																	<content>
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																		<addvalidations/>
																																		<format datatype="string"/>
																																	</content>
																																</children>
																																<addvalidations/>
																															</template>
																														</children>
																													</tablecell>
																												</children>
																											</tablerow>
																										</children>
																										<addvalidations/>
																									</template>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablebody>
																				</children>
																			</table>
																		</children>
																	</tablecell>
																</children>
															</tablerow>
														</children>
													</tablebody>
												</children>
											</table>
										</children>
										<addvalidations/>
									</template>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<paragraph>
										<editorproperties/>
										<properties/>
										<styles border="2" border-color="black"/>
										<children>
											<newline>
												<editorproperties/>
												<properties/>
												<styles/>
												<children/>
											</newline>
											<newline>
												<editorproperties/>
												<properties/>
												<styles/>
												<children/>
											</newline>
											<text fixtext="This Action:">
												<editorproperties/>
												<properties/>
												<styles font-weight="bold"/>
												<children/>
											</text>
											<table>
												<editorproperties/>
												<properties border="1" cellpadding="0" cellspacing="0" width="100%"/>
												<styles/>
												<children>
													<tableheader>
														<editorproperties/>
														<properties/>
														<styles/>
														<children>
															<tablerow>
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<tablecell headercell="1">
																		<editorproperties/>
																		<properties width="15%"/>
																		<styles/>
																		<children>
																			<text fixtext="Inetrnal Order #">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																		</children>
																	</tablecell>
																	<tablecell headercell="1">
																		<editorproperties/>
																		<properties width="20%"/>
																		<styles/>
																		<children>
																			<text fixtext="Description">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																		</children>
																	</tablecell>
																	<tablecell headercell="1">
																		<editorproperties/>
																		<properties width="15%"/>
																		<styles/>
																		<children>
																			<text fixtext="Legacy Source Number">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																		</children>
																	</tablecell>
																	<tablecell headercell="1">
																		<editorproperties/>
																		<properties width="15%"/>
																		<styles/>
																		<children>
																			<text fixtext="PI(s)">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																		</children>
																	</tablecell>
																	<tablecell headercell="1">
																		<editorproperties/>
																		<properties width="10%"/>
																		<styles/>
																		<children>
																			<text fixtext="F&amp;A Rate">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																		</children>
																	</tablecell>
																	<tablecell headercell="1">
																		<editorproperties/>
																		<properties width="15%"/>
																		<styles/>
																		<children>
																			<text fixtext="Change to Obligated  Dir.">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																		</children>
																	</tablecell>
																	<tablecell headercell="1">
																		<editorproperties/>
																		<properties width="15%"/>
																		<styles/>
																		<children>
																			<text fixtext="Change to Obligated F&amp;A">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																		</children>
																	</tablecell>
																	<tablecell headercell="1">
																		<editorproperties/>
																		<properties width="10%"/>
																		<styles/>
																		<children>
																			<text fixtext="Total Change">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																		</children>
																	</tablecell>
																</children>
															</tablerow>
														</children>
													</tableheader>
													<tablebody>
														<editorproperties/>
														<properties/>
														<styles/>
														<children>
															<template match="n1:ObligatedChangeHistory">
																<editorproperties elementstodisplay="1"/>
																<properties/>
																<styles/>
																<children>
																	<template match="n1:ObligatedChange">
																		<editorproperties elementstodisplay="1"/>
																		<properties/>
																		<styles/>
																		<children>
																			<tablerow>
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children>
																					<tablecell>
																						<editorproperties/>
																						<properties width="15%"/>
																						<styles/>
																						<children>
																							<template match="n1:InetrnalOrderNumber">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<content>
																										<editorproperties/>
																										<properties/>
																										<styles/>
																										<children/>
																										<addvalidations/>
																										<format datatype="string"/>
																									</content>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablecell>
																					<tablecell>
																						<editorproperties/>
																						<properties width="20%"/>
																						<styles/>
																						<children>
																							<template match="n1:Description">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<content>
																										<editorproperties/>
																										<properties/>
																										<styles/>
																										<children/>
																										<addvalidations/>
																										<format datatype="string"/>
																									</content>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablecell>
																					<tablecell>
																						<editorproperties/>
																						<properties width="15%"/>
																						<styles/>
																						<children>
																							<template match="n1:LegacySourceNumber">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<content>
																										<editorproperties/>
																										<properties/>
																										<styles/>
																										<children/>
																										<addvalidations/>
																										<format datatype="string"/>
																									</content>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablecell>
																					<tablecell>
																						<editorproperties/>
																						<properties width="15%"/>
																						<styles/>
																						<children>
																							<template match="n1:PI">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<content>
																										<editorproperties/>
																										<properties/>
																										<styles/>
																										<children/>
																										<addvalidations/>
																										<format datatype="string"/>
																									</content>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablecell>
																					<tablecell>
																						<editorproperties/>
																						<properties width="10%"/>
																						<styles/>
																						<children>
																							<template match="n1:FnARate">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<content>
																										<editorproperties/>
																										<properties/>
																										<styles/>
																										<children/>
																										<addvalidations/>
																										<format datatype="double"/>
																									</content>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablecell>
																					<tablecell>
																						<editorproperties/>
																						<properties width="15%"/>
																						<styles/>
																						<children>
																							<template match="n1:ObligatedChangeDirect">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<content>
																										<editorproperties/>
																										<properties/>
																										<styles/>
																										<children/>
																										<addvalidations/>
																										<format datatype="double"/>
																									</content>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablecell>
																					<tablecell>
																						<editorproperties/>
																						<properties width="15%"/>
																						<styles/>
																						<children>
																							<template match="n1:ObligatedChangeIndirect">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<content>
																										<editorproperties/>
																										<properties/>
																										<styles/>
																										<children/>
																										<addvalidations/>
																										<format datatype="double"/>
																									</content>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablecell>
																					<tablecell>
																						<editorproperties/>
																						<properties width="10%"/>
																						<styles/>
																						<children>
																							<template match="n1:TotalChange">
																								<editorproperties elementstodisplay="1"/>
																								<properties/>
																								<styles/>
																								<children>
																									<content>
																										<editorproperties/>
																										<properties/>
																										<styles/>
																										<children/>
																										<addvalidations/>
																										<format datatype="double"/>
																									</content>
																								</children>
																								<addvalidations/>
																							</template>
																						</children>
																					</tablecell>
																				</children>
																			</tablerow>
																		</children>
																		<addvalidations/>
																	</template>
																</children>
																<addvalidations/>
															</template>
															<tablerow>
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<tablecell>
																		<editorproperties/>
																		<properties align="right" colspan="4"/>
																		<styles/>
																		<children>
																			<text fixtext="Total Obligated Change Amount:">
																				<editorproperties/>
																				<properties/>
																				<styles font-weight="bold"/>
																				<children/>
																			</text>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties width="10%"/>
																		<styles/>
																		<children>
																			<template match="n1:ObligatedChangeHistory">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<template match="n1:FnARateTotal">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="double"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties width="15%"/>
																		<styles/>
																		<children>
																			<template match="n1:ObligatedChangeHistory">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<template match="n1:ObligatedChangeDirectTotal">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="double"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties width="15%"/>
																		<styles/>
																		<children>
																			<template match="n1:ObligatedChangeHistory">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<template match="n1:ObligatedChangeIndrectTotal">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="double"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties width="10%"/>
																		<styles/>
																		<children>
																			<template match="n1:ObligatedChangeHistory">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<template match="n1:TotalChangeTotal">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="double"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																</children>
															</tablerow>
														</children>
													</tablebody>
												</children>
											</table>
											<newline>
												<editorproperties/>
												<properties/>
												<styles/>
												<children/>
											</newline>
										</children>
									</paragraph>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<text fixtext="Cumulative Obligated Amount for Grant">
										<editorproperties/>
										<properties/>
										<styles font-weight="bold"/>
										<children/>
									</text>
									<text fixtext=" ">
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</text>
									<template match="n1:AwardHeader">
										<editorproperties elementstodisplay="1"/>
										<properties/>
										<styles/>
										<children>
											<template match="n1:SAPGrantNumber">
												<editorproperties elementstodisplay="1"/>
												<properties/>
												<styles/>
												<children>
													<content>
														<editorproperties/>
														<properties/>
														<styles/>
														<children/>
														<addvalidations/>
														<format datatype="string"/>
													</content>
												</children>
												<addvalidations/>
											</template>
										</children>
										<addvalidations/>
									</template>
									<text fixtext=" ">
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</text>
									<text fixtext="as of this action:">
										<editorproperties/>
										<properties/>
										<styles font-weight="bold"/>
										<children/>
									</text>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<table>
										<editorproperties/>
										<properties border="1" cellpadding="0" cellspacing="0" width="100%"/>
										<styles/>
										<children>
											<tableheader>
												<editorproperties/>
												<properties/>
												<styles/>
												<children>
													<tablerow>
														<editorproperties/>
														<properties/>
														<styles/>
														<children>
															<tablecell headercell="1">
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<text fixtext="Obligation Start/End:">
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children/>
																	</text>
																</children>
															</tablecell>
															<tablecell headercell="1">
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<text fixtext="Obligated Direct">
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children/>
																	</text>
																</children>
															</tablecell>
															<tablecell headercell="1">
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<text fixtext="Obligated F&amp;A">
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children/>
																	</text>
																</children>
															</tablecell>
															<tablecell headercell="1">
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<text fixtext="Obligated Total">
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children/>
																	</text>
																</children>
															</tablecell>
														</children>
													</tablerow>
												</children>
											</tableheader>
											<tablebody>
												<editorproperties/>
												<properties/>
												<styles/>
												<children>
													<template match="n1:ObligatedAmountTotal">
														<editorproperties elementstodisplay="1"/>
														<properties/>
														<styles/>
														<children>
															<tablerow>
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<template match="n1:ObligationStartDate">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format string="MM / DD / YYYY" datatype="date"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																			<text fixtext="-">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																			<newline>
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</newline>
																			<template match="n1:ObligatedEndDate">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format string="MM / DD / YYYY" datatype="date"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<template match="n1:ObligatedDirectTotal">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="double"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<template match="n1:ObligatedIndirectTotal">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="double"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<template match="n1:ObligatedTotal">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="double"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																</children>
															</tablerow>
														</children>
														<addvalidations/>
													</template>
												</children>
											</tablebody>
										</children>
									</table>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<text fixtext="Anticipated Amount for Grant">
										<editorproperties/>
										<properties/>
										<styles font-weight="bold"/>
										<children/>
									</text>
									<text fixtext=" ">
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</text>
									<template match="n1:AwardHeader">
										<editorproperties elementstodisplay="1"/>
										<properties/>
										<styles/>
										<children>
											<template match="n1:SAPGrantNumber">
												<editorproperties elementstodisplay="1"/>
												<properties/>
												<styles/>
												<children>
													<content>
														<editorproperties/>
														<properties/>
														<styles/>
														<children/>
														<addvalidations/>
														<format datatype="string"/>
													</content>
												</children>
												<addvalidations/>
											</template>
										</children>
										<addvalidations/>
									</template>
									<text fixtext=" ">
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</text>
									<text fixtext="as of this action:">
										<editorproperties/>
										<properties/>
										<styles font-weight="bold"/>
										<children/>
									</text>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<table>
										<editorproperties/>
										<properties border="1" cellpadding="0" cellspacing="0" width="100%"/>
										<styles/>
										<children>
											<tableheader>
												<editorproperties/>
												<properties/>
												<styles/>
												<children>
													<tablerow>
														<editorproperties/>
														<properties/>
														<styles/>
														<children>
															<tablecell headercell="1">
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<text fixtext="Project Start/End:">
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children/>
																	</text>
																</children>
															</tablecell>
															<tablecell headercell="1">
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<text fixtext="Anticipated Direct">
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children/>
																	</text>
																</children>
															</tablecell>
															<tablecell headercell="1">
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<text fixtext="Anticipated F&amp;A">
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children/>
																	</text>
																</children>
															</tablecell>
															<tablecell headercell="1">
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<text fixtext="Anticipated Total">
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children/>
																	</text>
																</children>
															</tablecell>
														</children>
													</tablerow>
												</children>
											</tableheader>
											<tablebody>
												<editorproperties/>
												<properties/>
												<styles/>
												<children>
													<template match="n1:AnticipatedAmountTotal">
														<editorproperties elementstodisplay="1"/>
														<properties/>
														<styles/>
														<children>
															<tablerow>
																<editorproperties/>
																<properties/>
																<styles/>
																<children>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<template match="n1:ProjectStartDate">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format string="MM / DD / YYYY" datatype="date"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																			<text fixtext="-">
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</text>
																			<newline>
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children/>
																			</newline>
																			<template match="n1:ProjectEndDate">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format string="MM / DD / YYYY" datatype="date"/>
																					</content>
																					<button>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<action>
																							<datepicker/>
																						</action>
																					</button>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<template match="n1:AnticipatedDirectTotal">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="double"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<template match="n1:AnticipatedIndirectTotal">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="double"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																	<tablecell>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<template match="n1:AnticipatedTotal">
																				<editorproperties elementstodisplay="1"/>
																				<properties/>
																				<styles/>
																				<children>
																					<content>
																						<editorproperties/>
																						<properties/>
																						<styles/>
																						<children/>
																						<addvalidations/>
																						<format datatype="double"/>
																					</content>
																				</children>
																				<addvalidations/>
																			</template>
																		</children>
																	</tablecell>
																</children>
															</tablerow>
														</children>
														<addvalidations/>
													</template>
												</children>
											</tablebody>
										</children>
									</table>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<text fixtext="For more detailed information about your award, including a line-item budget for each Sponsored Program/Internal Order, please visit the">
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</text>
									<link>
										<editorproperties/>
										<properties/>
										<styles/>
										<children>
											<text fixtext=" Business Warehouse">
												<editorproperties/>
												<properties/>
												<styles/>
												<children/>
											</text>
										</children>
										<target>
											<fixtext value="https://ppo.buw.bu.edu/"/>
										</target>
										<action>
											<none/>
										</action>
										<bookmark/>
										<hyperlink>
											<fixtext value="https://ppo.buw.bu.edu/"/>
										</hyperlink>
									</link>
									<text fixtext=". ">
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</text>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<line>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</line>
									<text fixtext="Comments:">
										<editorproperties/>
										<properties/>
										<styles font-weight="bold"/>
										<children/>
									</text>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<table>
										<editorproperties/>
										<properties border="0" cellpadding="1" cellspacing="1"/>
										<styles/>
										<children>
											<tablebody>
												<editorproperties/>
												<properties/>
												<styles/>
												<children>
													<template match="n1:Comments">
														<editorproperties elementstodisplay="1"/>
														<properties/>
														<styles/>
														<children>
															<template match="n1:Comment">
																<editorproperties elementstodisplay="1"/>
																<properties/>
																<styles/>
																<children>
																	<tablerow>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<tablecell>
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children>
																					<template match="n1:CommentTxt">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="string"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																				</children>
																			</tablecell>
																		</children>
																	</tablerow>
																</children>
																<addvalidations/>
															</template>
														</children>
														<addvalidations/>
													</template>
												</children>
											</tablebody>
										</children>
									</table>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<line>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</line>
									<text fixtext="Please see sponsor documentation for any applicable terms and conditions.">
										<editorproperties/>
										<properties/>
										<styles font-weight="bold"/>
										<children/>
									</text>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<text fixtext="Highlighted Terms and Conditions:">
										<editorproperties/>
										<properties/>
										<styles font-weight="bold"/>
										<children/>
									</text>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<table>
										<editorproperties/>
										<properties border="0" cellpadding="0" cellspacing="0"/>
										<styles/>
										<children>
											<tablebody>
												<editorproperties/>
												<properties/>
												<styles/>
												<children>
													<template match="n1:TermsAndConditions">
														<editorproperties elementstodisplay="1"/>
														<properties/>
														<styles/>
														<children>
															<template match="n1:TermAndCondition">
																<editorproperties elementstodisplay="1"/>
																<properties/>
																<styles/>
																<children>
																	<tablerow>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<tablecell>
																				<editorproperties/>
																				<properties colspan="2"/>
																				<styles/>
																				<children>
																					<template match="n1:TermType">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="string"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																					<table>
																						<editorproperties/>
																						<properties border="0" cellpadding="0" cellspacing="0"/>
																						<styles/>
																						<children>
																							<tablebody>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children>
																									<template match="n1:Terms">
																										<editorproperties elementstodisplay="1"/>
																										<properties/>
																										<styles/>
																										<children>
																											<template match="n1:Term">
																												<editorproperties elementstodisplay="1"/>
																												<properties/>
																												<styles/>
																												<children>
																													<tablerow>
																														<editorproperties/>
																														<properties/>
																														<styles/>
																														<children>
																															<tablecell>
																																<editorproperties/>
																																<properties/>
																																<styles/>
																																<children>
																																	<text fixtext="     ">
																																		<editorproperties/>
																																		<properties/>
																																		<styles/>
																																		<children/>
																																	</text>
																																	<template match="n1:TermTxt">
																																		<editorproperties elementstodisplay="1"/>
																																		<properties/>
																																		<styles/>
																																		<children>
																																			<content>
																																				<editorproperties/>
																																				<properties/>
																																				<styles/>
																																				<children/>
																																				<addvalidations/>
																																				<format datatype="string"/>
																																			</content>
																																		</children>
																																		<addvalidations/>
																																	</template>
																																</children>
																															</tablecell>
																														</children>
																													</tablerow>
																												</children>
																												<addvalidations/>
																											</template>
																										</children>
																										<addvalidations/>
																									</template>
																								</children>
																							</tablebody>
																						</children>
																					</table>
																				</children>
																			</tablecell>
																		</children>
																	</tablerow>
																</children>
																<addvalidations/>
															</template>
														</children>
														<addvalidations/>
													</template>
												</children>
											</tablebody>
										</children>
									</table>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<line>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</line>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<text fixtext="Reporting Requirements:">
										<editorproperties/>
										<properties/>
										<styles font-weight="bold"/>
										<children/>
									</text>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<table>
										<editorproperties/>
										<properties border="1" cellpadding="0" cellspacing="0" width="100%"/>
										<styles/>
										<children>
											<tableheader>
												<editorproperties/>
												<properties/>
												<styles/>
												<children>
													<tablerow>
														<editorproperties/>
														<properties/>
														<styles/>
														<children>
															<tablecell headercell="1">
																<editorproperties/>
																<properties align="center"/>
																<styles/>
																<children>
																	<text fixtext="Type of Report">
																		<editorproperties/>
																		<properties/>
																		<styles font-weight="bold"/>
																		<children/>
																	</text>
																</children>
															</tablecell>
															<tablecell headercell="1">
																<editorproperties/>
																<properties align="center"/>
																<styles/>
																<children>
																	<text fixtext="Frequency">
																		<editorproperties/>
																		<properties/>
																		<styles font-weight="bold"/>
																		<children/>
																	</text>
																</children>
															</tablecell>
														</children>
													</tablerow>
												</children>
											</tableheader>
											<tablebody>
												<editorproperties/>
												<properties/>
												<styles/>
												<children>
													<template match="n1:ReportingRequirements">
														<editorproperties elementstodisplay="1"/>
														<properties/>
														<styles/>
														<children>
															<template match="n1:ReportingRequirement">
																<editorproperties elementstodisplay="1"/>
																<properties/>
																<styles/>
																<children>
																	<tablerow>
																		<editorproperties/>
																		<properties/>
																		<styles/>
																		<children>
																			<tablecell>
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children>
																					<template match="n1:ReportType">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="string"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																				</children>
																			</tablecell>
																			<tablecell>
																				<editorproperties/>
																				<properties/>
																				<styles/>
																				<children>
																					<template match="n1:Frequency">
																						<editorproperties elementstodisplay="1"/>
																						<properties/>
																						<styles/>
																						<children>
																							<content>
																								<editorproperties/>
																								<properties/>
																								<styles/>
																								<children/>
																								<addvalidations/>
																								<format datatype="string"/>
																							</content>
																						</children>
																						<addvalidations/>
																					</template>
																				</children>
																			</tablecell>
																		</children>
																	</tablerow>
																</children>
																<addvalidations/>
															</template>
														</children>
														<addvalidations/>
													</template>
												</children>
											</tablebody>
										</children>
									</table>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<line>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</line>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<text fixtext="Please note: Research law and policy dictate that no activities considered Òhuman subjects researchÓ can be conducted until full IRB approval is obtained. ">
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</text>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<text fixtext="Activities that are considered part of Òhuman subjects research,Ó and are thus prohibited until IRB approval is obtained, include any recruitment activities, study interventions including data collection, data analysis, and any collection or analysis of biological specimens. Prohibited recruitment activities include publishing recruitment materials, reviewing medical records to find potentially suitable subjects, contacting potential subjects, and any other activities that are part of the screening or enrollment process. ">
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</text>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<text fixtext="Some examples of activities that are considered ÒpreparingÓ for research and are allowable during this restricted phase include hiring, support and training of research staff, preparing study forms and documents, preparing recruitment materials, and preparing IRB applications. If you have questions about whether an activity is allowable prior to IRB approval, please contact the IRB directly (BUMC: medirb@bu.edu or X8-7207; CRC: irb@bu.edu or 617-358-6115.">
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</text>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
									<newline>
										<editorproperties/>
										<properties/>
										<styles/>
										<children/>
									</newline>
								</children>
								<addvalidations/>
							</template>
						</children>
						<addvalidations/>
					</template>
				</children>
			</globaltemplate>
		</children>
	</parts>
	<pagelayout>
		<editorproperties/>
		<properties papermargintop="100"/>
		<styles/>
		<children>
			<globaltemplate match="#footerall">
				<editorproperties/>
				<properties/>
				<styles/>
				<children>
					<table>
						<editorproperties/>
						<properties width="100%"/>
						<styles/>
						<children>
							<tablebody>
								<editorproperties/>
								<properties/>
								<styles/>
								<children>
									<tablerow>
										<editorproperties/>
										<properties/>
										<styles/>
										<children>
											<tablecell>
												<editorproperties/>
												<properties colspan="2"/>
												<styles padding="0"/>
												<children>
													<newline>
														<editorproperties/>
														<properties/>
														<styles/>
														<children/>
													</newline>
													<line>
														<editorproperties/>
														<properties color="black" size="1"/>
														<styles top="-37pt"/>
														<children/>
													</line>
												</children>
											</tablecell>
										</children>
									</tablerow>
									<tablerow>
										<editorproperties/>
										<properties/>
										<styles/>
										<children>
											<tablecell>
												<editorproperties/>
												<properties align="left"/>
												<styles font-size="smaller" padding="0"/>
												<children>
													<text fixtext="Page: ">
														<editorproperties/>
														<properties/>
														<styles font-weight="bold"/>
														<children/>
													</text>
													<field>
														<editorproperties/>
														<properties/>
														<styles font-weight="bold"/>
														<children/>
													</field>
												</children>
											</tablecell>
											<tablecell>
												<editorproperties/>
												<properties align="right" width="150"/>
												<styles font-size="smaller" padding="0"/>
												<children/>
											</tablecell>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</globaltemplate>
			<globaltemplate match="#headerodd">
				<editorproperties/>
				<properties/>
				<styles/>
				<children>
					<table>
						<editorproperties/>
						<properties width="100%"/>
						<styles/>
						<children>
							<tablebody>
								<editorproperties/>
								<properties/>
								<styles/>
								<children>
									<tablerow>
										<editorproperties/>
										<properties/>
										<styles/>
										<children>
											<tablecell>
												<editorproperties/>
												<properties colspan="3" height="30"/>
												<styles padding="0"/>
												<children/>
											</tablecell>
										</children>
									</tablerow>
									<tablerow>
										<editorproperties/>
										<properties align="center" valign="baseline"/>
										<styles/>
										<children>
											<tablecell>
												<editorproperties/>
												<properties align="left" valign="top" width="20%"/>
												<styles font-size="smaller" padding="0"/>
												<children>
													<image>
														<editorproperties/>
														<properties/>
														<styles/>
														<children/>
														<target>
															<xpath value="$XML1/n1:AwardNotice/n1:BULogoPath"/>
														</target>
														<imagesource>
															<xpath value="$XML1/n1:AwardNotice/n1:BULogoPath"/>
														</imagesource>
													</image>
												</children>
											</tablecell>
											<tablecell>
												<editorproperties/>
												<properties align="center" valign="baseline" width="100%"/>
												<styles font-size="smaller" padding="0"/>
												<children>
													<paragraph paragraphtag="h2">
														<editorproperties/>
														<properties/>
														<styles/>
														<children>
															<text fixtext="Sponsored Programs Award Notification">
																<editorproperties/>
																<properties/>
																<styles font-weight="bold"/>
																<children/>
															</text>
														</children>
													</paragraph>
												</children>
											</tablecell>
										</children>
									</tablerow>
									<tablerow>
										<editorproperties/>
										<properties/>
										<styles/>
										<children>
											<tablecell>
												<editorproperties/>
												<properties colspan="3"/>
												<styles padding="0"/>
												<children>
													<line>
														<editorproperties/>
														<properties color="black" size="1"/>
														<styles/>
														<children/>
													</line>
												</children>
											</tablecell>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</globaltemplate>
		</children>
	</pagelayout>
</structure>