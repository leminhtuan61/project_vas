CREATE DATABASE VAS
USE TuanLM16
CREATE SCHEMA VACCINE

 

--Duy

 

INSERT INTO VACCINE.customer(address, date_of_birth, email, full_name, gender, identity_card, password, phone, username) 
VALUES
('Washington, D.C.', '1990-05-08', 'john@gmail.com', 'John.F.Kenedy', 0, '123123', 'abcdefgh', '0123321231', 'john_kenedy'),
('Washington, D.C.', '1980-08-08', 'donald@gmail.com', 'Donald.J.Trump', 0, '412567', 'ghjkl', '8272635241', 'donald_trump'),
('Washington, D.C.', '1970-09-27', 'geogre@gmail.com', 'George W. Bush', 0, '823635', 'abcdefgh', '23432432', 'george_bush'),
('Washington, D.C.', '1954-09-12', 'bill@gmail.com', 'William J.Clinton', 0, '344131', 'abcdefgh', '4234243235', 'bill_clinton'),
('Washington, D.C.', '1912-12-09', 'washington@gmail.com', 'George Washington', 0, '3412353', 'abcdefgh', '1412412212', 'george_washington'),
('Washington, D.C.', '1831-12-12', 'adams@gmail.com', 'John Adams', 0, '765534', 'abcdefgh', '3562354567', 'john_adam'),
('Washington, D.C.', '1890-09-12', 'madison@gmail.com', 'James Madison', 0, '987654', 'abcdefgh', '124125678', 'james_madison'),
('Washington, D.C.', '1899-12-09', 'jackson@outlook.com', 'Andrew Jackson', 0, '456456', 'abcdefgh', '325325235', 'andrew_jackson'),
('Washington, D.C.', '1899-12-09', 'johnson@outlook.com', 'Lyndon.B.Johnson', 0, '564321', 'abcdefgh', '3465756867', 'lyndon_johnson'),
('Washington, D.C.', '1899-12-09', 'obama@outlook.com', 'Barrack Obama', 0, '725612', 'abcdefgh', '5434324324', 'barrack_obama')

 


INSERT INTO VACCINE.vaccine_type(vaccine_type_name, [description]) VALUES
('Diphtheria','Description for Diphtheria'),
('COVID-19', 'Description for COVID-19'),
('Hepatitis A', 'Description for Hepatitis A'),
('Hepatitis B', 'Description for Hepatitis B'),
('Varicella', 'Description for Varicella')

 


INSERT INTO VACCINE.vaccine(contraindication, indication, number_of_injection, origin, 
time_begin_next_injection, time_end_next_injection, usage, vaccine_name, vaccine_type_id) VALUES
('No contraindication', 'indication', 4, 'CDC', '2020-01-01', '2030-01-01', 'usage', 'Sputnik V', 2),
('No contraindication', 'indication', 5, 'CDC', '2010-02-06', '2035-10-08', 'usage', 'Havrix', 3),
('No contraindication', 'indication', 6, 'CDC', '2010-03-16', '2035-11-08', 'usage', 'Daptacel', 1),
('No contraindication', 'indication', 7, 'CDC', '2010-09-26', '2035-12-08', 'usage', 'Infanrix', 1),
('No contraindication', 'indication', 8, 'CDC', '2014-02-23', '2035-07-08', 'usage', 'Varivax', 5),
('No contraindication', 'indication', 8, 'CDC', '2014-02-23', '2035-07-08', 'usage', 'Recombivax HB', 4),
('No contraindication', 'indication', 4, 'CDC', '2020-01-01', '2030-01-01', 'usage', 'CoronaVac', 2),
('No contraindication', 'indication', 10, 'CDC', '2020-01-01', '2030-01-01', 'usage', 'EpiVacCorona', 2),
('No contraindication', 'indication', 1, 'CDC', '2020-01-01', '2030-01-01', 'usage', 'BBIBP-CorV', 2),
('No contraindication', 'indication', 2, 'CDC', '2020-01-01', '2030-01-01', 'usage', 'mRNA-1273', 2)

 


INSERT INTO VACCINE.injection_result(injection_date, injection_place, customer_id, next_injection_date, number_of_injection, prevention, vaccine_id) VALUES
('2020-01-10', 'Howard University Hospital', 1, '2020-02-27', 4, 'COVID-19', 4),
('2020-04-10', 'Kohala Hospital', 4, '2020-09-27', 3, 'COVID-19', 7),
('2020-04-10', 'Kohala Hospital', 3, '2020-09-27', 2, 'Hepatitis B', 6),
('2020-01-10', 'Hilo Medical Center', 5, '2020-09-27', 1, 'Hepatitis A', 2),
('2020-01-10', 'Hilo Medical Center', 5, '2020-09-27', 1, 'Diphtheria', 3),
('2020-04-10', 'Kohala Hospital', 1, '2020-09-27', 3, 'COVID-19', 7),
('2020-04-10', 'Kohala Hospital', 2, '2020-09-27', 6, 'COVID-19', 8),
('2020-04-10', 'Kohala Hospital', 3, '2020-09-27', 5, 'COVID-19', 9),
('2020-04-10', 'Kohala Hospital', 4, '2020-09-27', 4, 'COVID-19', 7),
('2020-04-10', 'Kohala Hospital', 5, '2020-09-27', 3, 'COVID-19', 7),
('2020-04-10', 'Kohala Hospital', 7, '2020-09-27', 2, 'COVID-19', 8),
('2020-04-10', 'Kohala Hospital', 9, '2020-09-27', 1, 'COVID-19', 8)

 

--Tuan
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1998','tuanpro@fsoft.com','Acacia',1,'123457','1234','0328668661')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1997','tuanpro@fsoft.com','Adela',0,'123458','1234','0328668662')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1996','tuanpro@fsoft.com','Adelaide',1,'123459','1234','0328668663')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1995','tuanpro@fsoft.com','Agatha',0,'123456','1234','0328668664')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1994','tuanpro@fsoft.com','L Hon',1,'123456','1234','0328668665')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1992','tuanpro@fsoft.com','Agnes',0,'123450','1234','0328668666')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1993','tuanpro@fsoft.com','Alethea',1,'123451','1234','0328668667')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1992','tuanpro@fsoft.com','Alida',0,'123422','1234','0328668668')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1992','tuanpro@fsoft.com','Aliyah',1,'123433','1234','0328668669')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1992','tuanpro@fsoft.com','Alma',0,'123411','1234','0328668670')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1992','tuanpro@fsoft.com','Almira',1,'123444','1234','0328668671')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1992','tuanpro@fsoft.com','Alula',0,'1234226','1234','0328668672')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1992','tuanpro@fsoft.com','Alva',1,'1232456','1234','0328668673')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1992','tuanpro@fsoft.com','Amanda',0,'1223456','1234','0328668623')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1992','tuanpro@fsoft.com','Amelinda',1,'1233456','1234','0328668613')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1993','tuanpro@fsoft.com','Amity',0,'1234564','1234','0328668113')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1994','tuanpro@fsoft.com','Angela',1,'1234565','1234','0328668223')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1996','tuanpro@fsoft.com','Annabella',0,'1234566','1234','0328611113')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1998','tuanpro@fsoft.com','Anthea',1,'1234561','1234','0328663333')
INSERT INTO VACCINE.customer(address,date_of_birth,email,full_name,gender,identity_card,PASSWORD,phone) VALUES ('Ha Noi','06/01/1998','tuanpro@fsoft.com','Arianne',0,'12345622','1234','032864443')

 

--Thanh
INSERT INTO VACCINE.news_type VALUES
('Health','Health'),
('Covid-19','Covid-19'),
('Pandemic','Pandemic'),
('Medical','Medical'),
('World','World')

 

 

 

INSERT INTO [VACCINE].[news] ([content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p>As the current <a href="https://www.healthline.com/health-news/here-are-the-states-where-covid-19-is-increasing">COVID-19 surge</a> continues, health officials are issuing warnings that intensive care units (ICUs) are near or in some cases past capacity.</p>

<p>Health officials in <a href="https://deadline.com/2020/12/californias-may-begin-to-exceed-not-just-their-icu-capacity-but-their-hospital-capacity-top-health-official-1234660271/" target="_blank">California</a> recently said the state could <a href="https://www.cbsnews.com/news/california-covid-hospitalizations-surge-january/" target="_blank">burn through ICU capacity</a>, including its makeshift surge facilities, by early January.</p>

<p><a href="https://news.yahoo.com/intensive-care-units-hospitals-coronavirus-pandemic-health-human-services-report-202137966.html" target="_blank">New Mexico</a> has already exceeded its ICU capacity. <a href="https://www.azcentral.com/story/news/local/arizona-health/2020/12/21/arizona-covid-19-dec-21-update-7-748-new-cases-1-new-known-death/3985205001/" target="_blank">Arizona</a> is dangerously close. And the same scenario is playing out in Arkansas, Idaho, Missouri, Oklahoma, and Rhode Island.</p>

<p>As people move forward with their holiday plans and gather indoors, more states could face a similar fate.</p>

<p><a href="https://images.newindianexpress.com/uploads/user/imagelibrary/2020/12/7/w1200X800/ICU_bed_availability.jpg" target="_self"><img alt="" src="https://images.newindianexpress.com/uploads/user/imagelibrary/2020/12/7/w1200X800/ICU_bed_availability.jpg" style="height:400px; width:600px" /></a></p>

<p>So, what happens when hospitals reach and exceed capacity?</p>

<p>If there&rsquo;s room, patients are transferred to other hospitals or makeshift wards. If there&rsquo;s not, staff shortages increase, care is rationed, and space runs out.</p>

<p><a href="https://www.docdanmd.com/" target="_blank">Dr. Daniel Fagbuyi</a>, an emergency physician who served as a biodefense expert in the Obama administration, told Healthline there are four S&rsquo;s to consider in a surge situation:</p>

<ul>
	<li>staff</li>
	<li>space</li>
	<li>supplies</li>
	<li>other stuff</li>
</ul>

<p>Let&rsquo;s start with staff.</p>

<p>If frontline healthcare workers treating people with COVID-19 get sick, there&rsquo;s less staff available to treat patients in the ICU.</p>

<p>Additionally, if there&rsquo;s an influx of patients, there <a href="https://abcnews.go.com/Health/wireStory/california-desperately-searches-nurses-doctors-74855403" target="_blank">won&rsquo;t be enough staff</a> to adequately treat everybody, including not only people with COVID-19 but also people who&rsquo;ve had heart attacks, a stroke, or been involved in accidents.</p>

<p>Combine the two and there&rsquo;s the potential for a significant staff shortage. In such a scenario, hospitals will need to hire extra employees to meet the demand.</p>

<p>Healthcare workers from different departments may step in, some of whom don&rsquo;t have an ICU or critical care background.</p>

<p>&ldquo;They&rsquo;re asking nonpulmonologists and noncritical care specialists to start helping with ICU cases,&rdquo; said <a href="https://www.vitals.com/doctors/Dr_Matthew_Heinz.html" target="_blank">Dr. Matthew Heinz</a>, a hospitalist in Tucson, Arizona.</p>
', N'Healthcare officials say staff shortages can occur when people with COVID-19 fill up ICU beds. ', N'What Happens When a Hospital Runs Out of ICU Beds?', 3, CAST(N'2020-12-28' AS Date))
INSERT [VACCINE].[news] ([content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p>In the words of Andy Williams, &ldquo;It&rsquo;s the most wonderful time of the year.&rdquo; However, this holiday season, some of the magic has been compromised by the COVID-19 pandemic.</p>

<p>While countries around the world are slowly rolling out <a href="https://www.medicalnewstoday.com/articles/covid-19-vaccine-live-updates#1">COVID-19 vaccination</a> programs, the majority of the population will not have had the opportunity to get inoculated by the end of the year.</p>

<p>And since coming into close contact with other people is the main way in which <a href="https://www.medicalnewstoday.com/articles/7543" target="_blank">SARS</a>-CoV-2 &mdash; the virus that causes COVID-19 &mdash; <a href="https://www.medicalnewstoday.com/articles/coronavirus-transmission">spreads</a>, traditional gatherings with family and friends are unsafe this holiday season.</p>

<p><a href="https://proudhappymama.com/wp-content/uploads/2019/11/Christmas-Family-Quotes-.jpg" target="_self"><img alt="" src="https://proudhappymama.com/wp-content/uploads/2019/11/Christmas-Family-Quotes-.jpg" style="height:400px; width:600px" /></a></p>

<p><em>Stay informed with <a href="https://www.medicalnewstoday.com/articles/live-updates-coronavirus-covid-19">live updates</a> on the current COVID-19 outbreak and visit our <a href="https://www.medicalnewstoday.com/coronavirus">coronavirus hub</a> for more advice on prevention and treatment.</em></p>

<p>In this Special Feature, we explain how you can safely celebrate during this holiday season.</p>

<p>This may be a year unlike all others, but there is no reason why we cannot enjoy the holidays while looking after our own and our loved ones&rsquo; health and well-being.</p>
', N'The winter holidays are upon us, but this year, the pandemic has made family gatherings more difficult and potentially unsafe. How can we celebrate without increasing our or other people?s risk of COVID-19?', N'COVID-19 and Christmas: How to celebrate safely', 3, CAST(N'2020-12-28' AS Date))
INSERT [VACCINE].[news] ([content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p>On the morning of Dec. 16, the threat of a Virginia snowstorm canceled school for 7-year-old Alain Bell. He instead spent the morning scribbling a scowling face in black marker onto his father&rsquo;s newly vaccinated upper arm.</p>

<p>&ldquo;It was his idea,&rdquo; Alain said over Zoom, pointing to his father, Dr. Taison Bell, 37, a critical care physician at UVA Health in Charlottesville. &ldquo;I feel good that he&rsquo;s not going to get sick.&rdquo;</p>

<p>Dr. Bell&rsquo;s actual face was all smiles. Shortly after 2 p.m. on Dec. 15, he became the second person in his hospital to receive a dose of Pfizer&rsquo;s new coronavirus vaccine. &ldquo;I feel fine,&rdquo; he said. &ldquo;But my right arm, if you were to interview it, is probably not excited about what&rsquo;s happened to it.&rdquo;</p>

<p><a href="https://static01.nyt.com/images/2020/12/18/science/00VIRUS-DIVIDED1/00VIRUS-DIVIDED1-superJumbo.jpg?quality=90&amp;auto=webp" target="_self"><img alt="" src="https://static01.nyt.com/images/2020/12/18/science/00VIRUS-DIVIDED1/00VIRUS-DIVIDED1-superJumbo.jpg?quality=90&amp;auto=webp" style="height:400px; width:600px" /></a></p>

<p>His limb experienced a bit of swelling and soreness, nothing out of the ordinary for a vaccine. It was a sign that the injection was doing its job: instructing Dr. Bell&rsquo;s cells to churn out a protein called spike, which will teach his immune system to recognize and thwart the new coronavirus, should he ever encounter it. His second dose, scheduled for early January, will clinch the process.</p>

<p>The shot introduced a microscopic shift that will have an outsize impact on his risk of getting Covid-19. But, Dr. Bell said, little else in his life will change until more of his community joins the vaccinated pool.</p>

<p>&nbsp;</p>
', N'Vaccinated health workers must navigate another new normal: households in which not all family members are immunized.', N'Dad Got the Vaccine, but No One Else Did ? Yet', 4, CAST(N'2020-12-28' AS Date))
INSERT [VACCINE].[news] ([content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p>A Boston physician said he developed a severe allergic reaction minutes after receiving Moderna&rsquo;s coronavirus vaccine on Thursday, in the first week of the nationwide rollout for the company&rsquo;s shots.</p>

<p>The case was the first of its kind reported to be linked to Moderna&rsquo;s vaccine. Federal agencies are investigating at least six cases involving people who suffered anaphylaxis after receiving the Pfizer-BioNTech vaccine, which contains similar ingredients, during the first few weeks of its distribution in the United States.</p>

<p><a href="https://static01.nyt.com/images/2020/12/25/science/25virus-moderna1/25virus-moderna1-superJumbo.jpg?quality=90&amp;auto=webp"><img alt="" src="https://static01.nyt.com/images/2020/12/25/science/25virus-moderna1/25virus-moderna1-superJumbo.jpg?quality=90&amp;auto=webp" style="height:400px; width:600px" /></a></p>

<p>Officials with the Food and Drug Administration and the Centers for Disease Control and Prevention had discussed the reactions involving some of the Pfizer cases, but have not determined whether an ingredient in the vaccine caused the allergic responses. A few health care workers in Britain had also experienced anaphylaxis after receiving the Pfizer vaccine earlier this month.</p>

<p>The incident on Thursday involved Dr. Hossein Sadrzadeh, a geriatric oncologist at Boston Medical Center, who has a severe shellfish allergy and had an appointment to get the Moderna shot in the afternoon. In an interview, Dr. Sadrzadeh said he experienced a severe reaction almost immediately after he was inoculated, feeling dizzy and with his heart racing.</p>

<p>In a statement, David Kibbe, a spokesman for Boston Medical Center, confirmed that Dr. Sadrzadeh had received Moderna&rsquo;s vaccine on Thursday. The statement said that Dr. Sadrzadeh &ldquo;felt he was developing an allergic reaction and was allowed to self-administer his personal EpiPen. He was taken to the Emergency Department, evaluated, treated, observed and discharged. He is doing well today.&rdquo;</p>

<p>Ray Jordan, a spokesman for Moderna, said on Thursday evening that the company could not comment publicly on an individual case. On Friday, Mr. Jordan added that the company&rsquo;s medical safety team would look into the matter, and he referred further questions to officials at Operation Warp Speed, the federal program overseeing vaccine distribution.</p>

<p>The F.D.A. would not comment on the new report on Friday.</p>

<p>Tom Skinner, a spokesman for the C.D.C., said that information on reactions to the new vaccines would be <a href="https://covid.cdc.gov/covid-data-tracker/#vaccinations" target="_blank">posted to the agency&rsquo;s website</a> starting next week. Belsie Gonz&aacute;lez, a spokeswoman for the C.D.C., referred further questions to local public health authorities.</p>
', N'The patient, who has a severe shellfish allergy, recovered quickly with treatment. Until now, reports of severe reactions had been linked to the Pfizer vaccine.', N'Boston Doctor Reports Serious Allergic Reaction After Getting Moderna?s Covid Vaccine', 3, CAST(N'2020-12-28' AS Date))
INSERT [VACCINE].[news] ([content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p>At what point does a country achieve herd immunity? What portion of the population must acquire resistance to the coronavirus, either through infection or vaccination, in order for the disease to fade away and life to return to normal?</p>

<p>Since the start of the pandemic, the figure that many epidemiologists have offered has been 60 to 70 percent. That range is still cited by the World Health Organization and is often repeated during discussions of the future course of the disease.</p>

<p>Although it is impossible to know with certainty what the limit will be until we reach it and transmission stops, having a good estimate is important: It gives Americans a sense of when we can hope to breathe freely again.</p>

<p>Recently, a figure to whom millions of Americans look for guidance &mdash; Dr. Anthony S. Fauci, an adviser to both the Trump administration and the incoming Biden administration &mdash; has begun incrementally raising his herd-immunity estimate.</p>

<p>In the pandemic&rsquo;s early days, Dr. Fauci tended to cite the same <a href="https://www.nytimes.com/2020/05/01/opinion/sunday/coronavirus-herd-immunity.html">60 to 70 percent estimate</a> that <a href="https://thehill.com/changing-america/resilience/natural-disasters/495635-coronavirus-pandemic-could-last-up-to-two-years" target="_blank">most experts</a> did. About a month ago, he began saying &ldquo;70, 75 percent&rdquo; in television interviews. And last week, in an <a href="https://www.cnbc.com/2020/12/16/cnbc-transcript-dr-anthony-fauci-speaks-with-cnbcs-meg-tirrell-live-during-the-cnbc-healthy-returns-livestream-today.html" target="_blank">interview with CNBC News</a>, he said &ldquo;75, 80, 85 percent&rdquo; and &ldquo;75 to 80-plus percent.&rdquo;</p>

<p><a href="https://static01.nyt.com/images/2020/12/27/science/27VIRUS-HERD-print1/21VIRUS-HERD-superJumbo.jpg?quality=90&amp;auto=webp" target="_blank"><img alt="Dr. Anthony S. Fauci in March. ?We really don?t know what the real number is,? he said recently.Credit...Doug Mills/The New York Times" src="https://static01.nyt.com/images/2020/12/27/science/27VIRUS-HERD-print1/21VIRUS-HERD-superJumbo.jpg?quality=90&amp;auto=webp" style="height:400px; width:600px" /></a></p>

<p>In a telephone interview the next day, Dr. Fauci acknowledged that he had slowly but deliberately been moving the goal posts. He is doing so, he said, partly based on new science, and partly on his gut feeling that the country is finally ready to hear what he really thinks.</p>

<p>Hard as it may be to hear, he said, he believes that it may take close to 90 percent immunity to bring the virus to a halt &mdash; almost as much as is needed to stop a measles outbreak.</p>

<p>Asked about Dr. Fauci&rsquo;s conclusions, prominent epidemiologists said that he might be proven right. The early range of 60 to 70 percent was almost undoubtedly too low, they said, and the virus is becoming more transmissible, so it will take greater herd immunity to stop it.</p>

<p>Dr. Fauci said that weeks ago, he had hesitated to publicly raise his estimate because many Americans seemed hesitant about vaccines, which they would need to accept almost universally in order for the country to achieve herd immunity.</p>

<p>Now that some polls are showing that many more Americans are ready, even eager, for vaccines, he said he felt he could deliver the tough message that the return to normal might take longer than anticipated.</p>

<p>&ldquo;When polls said only about half of all Americans would take a vaccine, I was saying herd immunity would take 70 to 75 percent,&rdquo; Dr. Fauci said. &ldquo;Then, when newer surveys said 60 percent or more would take it, I thought, &lsquo;I can nudge this up a bit,&rsquo; so I <a href="https://www.vox.com/coronavirus-covid19/2020/12/15/22176555/anthony-fauci-covid-19-vaccine-herd-immunity-goal" target="_blank">went to 80, 85.</a>&rdquo;</p>
', N'Scientists initially estimated that 60 to 70 percent of the population needed to acquire resistance to the coronavirus to banish it. Now Dr. Anthony Fauci and others are quietly shifting that number upward.', N'How Much Herd Immunity Is Enough?', 4, CAST(N'2020-12-28' AS Date))
INSERT [VACCINE].[news] ([content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p>Ever since the race to develop a coronavirus vaccine began last spring, upbeat announcements were stalked by ominous polls: No matter how encouraging the news, growing numbers of people said they would refuse to get the shot.</p>

<p>The time frame was dangerously accelerated, many people warned. The vaccine was a scam from Big Pharma, others said. A political ploy by the Trump administration, many Democrats charged. The internet pulsed with apocalyptic predictions from longtime vaccine opponents, who decried the new shot as the epitome of every concern they&rsquo;d ever put forth.</p>

<p>But over the past few weeks, as the vaccine went from a hypothetical to a reality, something happened. Fresh surveys show attitudes shifting and a clear majority of Americans now eager to get vaccinated.</p>

<p>In polls by<a href="https://news.gallup.com/poll/327425/willingness-covid-vaccine-ticks.aspx" target="_blank"> Gallup</a>, the<a href="https://www.kff.org/coronavirus-covid-19/report/kff-covid-19-vaccine-monitor-december-2020/" target="_blank"> Kaiser Family Foundation</a> and <a href="https://www.pewresearch.org/science/2020/12/03/intent-to-get-a-covid-19-vaccine-rises-to-60-as-confidence-in-research-and-development-process-increases/" target="_blank">the Pew Research Center</a>, the portion of people saying they are now likely or certain to take the vaccine has grown from about 50 percent this summer to more than 60 percent, and in one poll 73 percent &mdash; a figure that <a href="https://www.nytimes.com/2020/12/24/health/herd-immunity-covid-coronavirus.html">approaches what some public health experts sa</a>y would be sufficient for herd immunity.</p>

<p><img alt="A health care worker at the Virginia Hospital Center in Arlington, Va. took a selfie to commemorate getting the vaccine." src="https://static01.nyt.com/images/2020/12/23/science/00VIRUS-VAX-HESITATE3/merlin_181350519_1f9bfe28-a0d7-4412-ae66-d8d6f5ddd72b-articleLarge.jpg?quality=75&amp;auto=webp&amp;disable=upscale" /></p>

<p>A health care worker at the Virginia Hospital Center in Arlington, Va. took a selfie to commemorate getting the vaccine.Credit...Michael A. McCoy for The New York Times</p>

<p>Resistance to the vaccine is certainly not vanishing. <a href="https://www.theatlantic.com/ideas/archive/2020/12/campaign-against-vaccines-already-under-way/617443/" target="_blank">Misinformation and dire warnings</a> are gathering force <a href="https://www.politico.com/news/2020/12/21/social-media-vaccine-misinformation-449770" target="_blank">across social media.</a> At a meeting on December 20, members of an advisory panel to the Centers for Disease Control and Prevention cited strong indications that vaccine denouncements as well as acceptance are growing, so they could not predict whether the public would gobble up limited supplies or take a pass.</p>

<p>But the attitude improvement is striking. A similar shift on another heated pandemic issue was reflected in a different <a href="https://www.kff.org/coronavirus-covid-19/report/kff-health-tracking-poll-december-2020/" target="_blank">Kaiser poll</a> this month. It found that nearly 75 percent of Americans are now wearing masks when they leave their homes.</p>

<p>The change reflects a constellation of recent events: the uncoupling of the vaccine from Election Day; clinical trial results showing about 95 percent efficacy and relatively modest side effects for the vaccines made by Pfizer-BioNTech and Moderna; and the alarming surge in new coronavirus infections and deaths.</p>
', N'Polls show that pervasive skepticism is melting, partly because of the high efficacy rates in trials and the images of real people getting the shot.', N'Early Vaccine Doubters Now Show a Willingness to Roll Up Their Sleeves', 4, CAST(N'2020-12-29' AS Date))
INSERT [VACCINE].[news] ([content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p>Dec. 28, 2020 -- Millions of Americans have struggled to pay their rent since the <a href="https://www.webmd.com/cold-and-flu/features/what-is-pandemic">pandemic</a> started, as the economic crisis brought pay cuts, furloughs, and job losses, adding insult to the <a href="https://www.webmd.com/lung/coronavirus">coronavirus</a> nightmare. Tenants are being evicted; some end up living in crowded homeless shelters or couch-surfing with family members or friends.</p>

<p>The Eviction Lab at Princeton University estimates there have been more than 150,000 evictions during the pandemic in the 27 cities it tracks.</p>

<p>&ldquo;I spoke with one woman living with her 12-year-old daughter in an apartment who let a friend who had nowhere else to stay sleep in her living room. She is concerned about the risk of COVID-19 -- anytime you add a new member to your household, there&rsquo;s an added risk,&rdquo; says Danya Keene, PhD, an assistant professor at Yale School of Public Health in New Haven, CT.</p>

<p>Living in crowded situations also makes it harder to comply with public health measures like social distancing, hand-washing, and quarantining.</p>

<p>&ldquo;There is no question that evicting people during a pandemic is willfully placing millions of adults and children in severe jeopardy. Allowing evictions to continue not only threatens their health and safety, but endangers every individual they come into contact with,&rdquo; says Emily Benfer, a visiting law professor at Wake Forest University in Winston-Salem, N.C. Benfer co-authored a new paper with Keene that will be published in the <em>Journal of Urban Health</em> on the relationship between housing, eviction, and COVID-19 transmission.</p>

<p><img alt="photo of covid 19 virus" src="https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/slideshows/reasons_short_of_breath_slideshow/1800x1200_reasons_short_of_breath_slideshow_alt.jpg?resize=*:350px" /></p>

<p>Those most at risk for eviction are Black and Latino people, who were nearly twice as likely to report a wage or job loss as whites in April. They also were less likely to have 3 months of income saved to cover emergencies than whites, according to Pew Research Center surveys.</p>

<p>And people of color already faced discriminatory housing policies and a crisis in affordable housing.</p>

<p>&ldquo;The people with the highest risk of eviction also have the highest risk of being hospitalized for COVID-19 due to existing health conditions,&rdquo; says Benfer.</p>

<h2>Eviction Bans Curb COVID-19</h2>

<p>Public health experts support federal and state bans on evictions as a tool to reduce COVID-19 cases and deaths. Forty-three states and Washington, D.C., made evictions illegal during the spring lockdowns, and 27 states lifted them afterward. The moratoriums that were lifted lasted an average of 10 weeks, according to a new study from researchers at the University of California (Los Angeles and San Francisco), Johns Hopkins University, Boston University and Wake Forest University. The study, released Nov. 30, has not yet been peer-reviewed.</p>

<p>The states that lifted their eviction bans had 1.6 times the number of COVID-19 cases and deaths than the states that kept them, according to the study. Nationally, the results translated to a total of 433,700 excess coronavirus cases and 10,700 excess COVID-related deaths.</p>

<p>&ldquo;Our study shows state-level action is effective in preventing spread of COVID. Even barring action at the federal level, states can step in with their own moratoria,&rdquo; says lead author Kathryn Leifheit, PhD, a postdoctoral fellow in the Department of Health Policy and Management at the UCLA Fielding School of Public Health.</p>
', N'We know from data from the Eviction Lab that when moratoria are lifted, a lot more evictions occurred.', N'Eviction Bans Keep Renters Home, Curb COVID Spread', 3, CAST(N'2020-12-29' AS Date))
INSERT [VACCINE].[news] ([content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p><a href="https://images.newscientist.com/wp-content/uploads/2020/12/16125908/credit_ahn-young-joonapshutterstock_shutterstock_editorial_11026701d_web.jpg?width=800" target="_blank"><img alt="New Scientist Default Image" src="https://images.newscientist.com/wp-content/uploads/2020/12/16125908/credit_ahn-young-joonapshutterstock_shutterstock_editorial_11026701d_web.jpg?" style="height:400px; width:600px" /></a></p>

<p>Ahn Young-joon/AP/Shutterstock</p>

<p>UNTIL 2020, many experts thought it was impossible to halt the spread of a respiratory virus once it started to spread out of control. During the course of the year, many countries have shown it is possible to contain the coronavirus even without the help of a vaccine &ndash; but only a few have managed to keep it contained.</p>

<p>By late January, the crowded metropolis of Wuhan in China was reporting thousands of new covid-19 cases every day. It seemed inevitable that the outbreak would spread throughout the country of 1.4 billion people, especially as it was becoming clear &hellip;</p>
', N'While the coronavirus continues to rampage in many parts of the world, countries including China, New Zealand, Thailand, Vietnam, Taiwan and South Korea are returning to normality', N'2020 in review: The countries that got covid-19 under control', 5, CAST(N'2020-12-30' AS Date))
INSERT [VACCINE].[news] ([content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p>A team of researchers at the University of Edinburgh, UK, found that consistent mask-wearing was associated with positive well-being among their participants.</p>

<p><img alt="Study: Face covering adherence is positively associated with better mental health and wellbeing: a longitudinal analysis of the CovidLife surveys. Image Credit: r.classen / Shutterstock" src="https://d2jx2rerrg6sh3.cloudfront.net/image-handler/picture/2020/12/shutterstock_1678274461.jpg" style="height:400px; width:600px" /></p>

<p><em>Study: <a href="https://www.medrxiv.org/content/10.1101/2020.12.18.20248477v1">Face covering adherence is positively associated with better mental health and wellbeing: a longitudinal analysis of the CovidLife surveys</a>. Image Credit: r.classen / Shutterstock</em></p>

<p>The study, published on the pre-print <em><a href="https://www.medrxiv.org/content/10.1101/2020.12.18.20248477v1">medRxiv</a>* </em>server<em>, </em>surveyed more than 11,000 participants across the UK.</p>

<h2>Face covering</h2>

<p>The World Health Organization (WHO) recommends wearing a face mask as part of a comprehensive strategy of mitigating the transmission of SARS-CoV-2. The use of a mask alone is not sufficient to provide adequate protection, but it is effective along with other infection control measures.</p>

<p>The health agency also recommends that people wear a mask if they are around other people. When wearing the mask properly, it should cover the nose, mouth, and chin.</p>

<p>Meanwhile, the U.S. Centers for Disease Control and Prevention (CDC) urge the public to wear face coverings made with cloth. Surgical and medical masks are intended for healthcare workers. This is to avoid depleting the supply of this medical equipment, which is crucial in protecting frontline workers.</p>

<h2>The study</h2>

<p>The team conducted longitudinal analyses that collected data via the Qualtrics platform between April and June 2020. To arrive at the study findings, the researchers recruited 11,000 participants across the UK who completed the <a href="https://www.ed.ac.uk/generation-scotland/covidlife-volunteers/what-is-covidlife">CovidLife</a> surveys, which is an initiative set up by the University of Edinburgh to try and measure and understand the impact of the COVID-19 pandemic on the nation&#39;s health and well-being. Using this data, the mental health outcomes of the participants were then evaluated.</p>
', N'Wearing face masks or coverings can help reduce the risk of SARS-CoV-2 transmission by preventing infectious respiratory droplets from COVID-19 positive individuals from spreading to others when they sneeze, cough, talk, or breathe.', N'Researchers find correlation between consistent mask-wearing and improved well-being', 4, CAST(N'2020-12-30' AS Date))
INSERT [VACCINE].[news] ( [content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p><img alt="antidepressants" src="https://d2jx2rerrg6sh3.cloudfront.net/image-handler/picture/2020/12/shutterstock_672632047.jpg" style="height:448px; width:673px" /></p>

<p><em>Image Credit: Lunatta / Shutterstock.com</em></p>

<p>Although their exact mechanisms are not fully understood, many of them target certain neurotransmitters in the brain and increase their levels in the brain to help improve mood and reduce feelings of anxiety or stress.</p>

<p>Neurotransmitters are chemical messengers that send signals across neuronal synapses (a part of the central nervous system that allows neurons to pass electrical and chemical signals to other neurons) and antidepressants often target serotonin and noradrenaline, which is also called norepinephrine.</p>

<p>Some antidepressants also work by increasing the amount of dopamine in the brain, a neurotransmitter that is well known for lifting low moods.</p>

<p>While there are many factors to consider when beginning antidepressant treatment, many people do not think about the withdrawal symptoms that may arise from their chosen medication when they decide to stop using it or if they reduce the dose.</p>

<p>As a result, it is important to thoroughly discuss which antidepressants are best for you and compare the reported side effects and withdrawal symptoms for each one.</p>

<p>It is important to note that stopping antidepressant medication suddenly and without consulting a medical professional is not recommended.</p>

<h2>What are withdrawal symptoms?</h2>

<p>Withdrawal symptoms (also called antidepressant or SRI discontinuation syndrome) are unpleasant physical and mental effects from reducing the dose of or stopping an antidepressant. Withdrawal symptoms can be experienced with many medications and drugs, including alcohol.</p>

<p>Withdrawal symptoms can make it hard to come off certain antidepressant medications that are known for inducing severe withdrawal symptoms, but it does not mean a person is addicted to an antidepressant if they experience withdrawal symptoms. Withdrawal symptoms are more severe if an antidepressant has a short half-life.</p>

<h2>What does half-life mean?</h2>

<p>A half-life is the time it takes for the amount of a drug in your body to reduce by half. A half-life does not change depending on the dosage a person is taking or the amount of time they have been on medication. Additionally, the half-life of a medication can vary from person to person.</p>

<h2>Half-life and selective serotonin reuptake inhibitors (SSRIs)</h2>

<p>SSRIs are a family of antidepressants that improve mood by increasing serotonin levels in the brain. The approximate half-life of a range of common SSRI medications are:</p>

<ul>
	<li>Fluvoxamine &ndash; 17 to 22 hours</li>
	<li>Paroxetine &ndash; 24 hours</li>
	<li>Sertraline &ndash; 22 to 36 hours</li>
	<li>Escitalopram &ndash; 30 hours</li>
	<li>Citalopram &ndash; 36 hours</li>
	<li>Fluoxetine &ndash; 96 to 144 hours (4 to 6 days).</li>
</ul>
', N'Antidepressants are a type of psychiatric medication used to treat depression, anxiety, obsessive-compulsive disorder (OCD), and post-traumatic stress disorder (PTSD) among other mental health conditions.', N'Half-Life and Withdrawal Symptoms of Antidepressants', 4, CAST(N'2020-12-30' AS Date))
INSERT [VACCINE].[news] ([content], [preview], [title], [news_type_id], [post_date]) VALUES (N'<p>Early detection and frequent monitoring of iron levels can save patients from permanent disorders, such as impaired developments in children. This article discusses the development of ultrasensitive nanosensors for the detection of iron imbalances.</p>

<p><img alt="blood test" src="https://d2jx2rerrg6sh3.cloudfront.net/image-handler/picture/2020/12/shutterstock_1704588502.jpg" style="height:448px; width:673px" /></p>

<p><em>Image Credit: Cryptographer</em></p>

<h2><strong>Common diseases that occur due to iron imbalances</strong></h2>

<p>Excess iron concentration can accelerate the aging process. This is because it catalyzes the production of radical oxygen species, which is responsible for harmful oxidative stress leading to cell damage, DNA mutagenesis, and lipid peroxidation.</p>

<p>On sensing a potential threat in our body, an adequate amount of iron is made available to red blood cells. The remaining iron gets converted to ferritin and thus iron is not available to harmful invaders which could have potentially contributed to their growth.</p>

<p>This phenomenon results in a temporary decline in the hemoglobin level. It must be noted that this condition occurs only at the onset of an infection or inflammation and gets rectified once the patient is cured.</p>

<p>The main function of iron in the body is the transportation of oxygen in the blood. Iron deficiency is a condition when the blood contains a low concentration of healthy red blood cells. If this condition is not detected and treated at an early stage, iron deficiency anemia (IDA) may develop.</p>

<p>One of the diseases related to iron overdose is hemochromatosis. Hemochromatosis is regarded as a common hereditary disease. It is a medical condition where patients absorb a high concentration of iron from their diet.</p>

<p>Over a period of time, patients accumulate a high concentration of iron that causes damage to many organs including the liver. Several other diseases that can occur due to iron overdose are osteoporosis and osteopenia, atherosclerosis, Alzheimer&#39;s and other neurodegenerative diseases, sarcopenia, metabolic syndrome, etc.</p>

<h2><strong>Some of the Nanosensors Developed to Detect Iron Imbalances</strong></h2>

<h3><strong>Carbon-based Fluorescent Bio-Nanoprobe Technology</strong></h3>

<p>Pooria Lesani, a Ph.D. student in the School of Biomedical Engineering at the University of Sydney, has recently developed a novel carbon-based fluorescent bio-nanoprobe technology for rapid detection of free iron ions.</p>

<p>This multipurpose nanoscale bio-probe has the ability to accurately monitor iron disorders in cells, tissues, and body fluids at a very minute concentration, i.e., 1/1000th of a millimolar. The carbon-based fluorescent bio-nanoprobe technology is a non-invasive procedure, that involves subcutaneous or intravenous injections.</p>

<h3><strong>Graphene-based Biosensor </strong></h3>

<p>Researchers have built a graphene-based field-effect transistor (GFET) using graphene monolayer as the conducting channel for early detection of iron deficiency. This channel is activated using anti-ferritin antibodies to selectively trap the ferritin protein <a href="https://www.news-medical.net/health/What-is-an-Antigen.aspx">antigen</a>. This technology is rapid, straightforward, and inexpensive.</p>

<p>Graphene, besides having many unique properties, is also easy to synthesize. It is inexpensive and extensively commercially available. Iron is detected most accurately by assessing the combination of indicators such as ferritin.</p>

<p>Ferritin is known as an acute-phase reactant protein, whose concentration rises in the presence of infection or inflammation. Thus, ferritin is regarded as a major iron-storage molecule and is widely used as an iron status indicator.</p>
', N'It has been reported that 30% of the world?s population suffers from an iron imbalance. Many diseases such as anemia, hemochromatosis, Parkinson?s disease, cancer, and Alzheimer?s disease can occur due to chronic iron imbalance, i.e., either the concentration of iron in the blood is too high or too low.', N'Ultra-Sensitive Detection of Iron Disorders Using Nanosensors', 4, CAST(N'2020-12-30' AS Date))



INSERT INTO VACCINE.role VALUES ('ROLE_USER')
INSERT INTO VACCINE.role VALUES ('ROLE_ADMIN')

 

INSERT INTO VACCINE.role_employee VALUES (1,'admin')
INSERT INTO VACCINE.role_employee VALUES (1,'admin',1)
INSERT INTO VACCINE.role_employee VALUES ('user',1)

 

SELECT * FROM VACCINE.employee
SELECT * FROM VACCINE.[role]
SELECT * FROM VACCINE.role_employee