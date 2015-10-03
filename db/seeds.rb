gun_control = Issue.create(
  title: "Gun Control" ,
  summary: "The Supreme Court has defined the 2nd amendment as granting individual citizens gun rights, but also held that regulations and restrictions are constitutional. Gun control advocates seek tighter federal restrictions and regulation on gun purchases and licensing, limits on ammunition capacity and types of guns available, and implementation of safety innovations. They point to statistics showing America’s rate of gun deaths highest among developed nations as evidence that stricter gun control is needed. Gun rights advocates believe that the right to bear arms is too important to be tampered with and necessary for the preservation of the nation as the defense against a potentially abusive government. They argue for more guns in society with fewer restrictions and do not believe that more restrictions would effectively limit gun violence."
)

fourth_amendment = Issue.create(
  title: "4th Amendment / Privacy",
  summary: "The 4th Amendment guarantees rights of privacy and protects against government intrusion and search and seizure of property without a warrant. Following 9/11, Congress and the President enacted the USA PATRIOT Act with the intention of aiding in the fight against terrorism. This created the National Security Agency (NSA) and granted them broad surveillance powers, making it easier to collect email, phone, and other private records from American citizens. Opponents of the USA PATRIOT Act believe that the government acted outside of the search and surveillance limits set by the 4th Amendment. Supporters believe that the USA PATRIOT Act granted the government the access it needed to protect American citizens from future terrorist attacks."
)

campaign_finance = Issue.create(
  title: "Campaign Finance Reform",
  summary: "This began as a lawsuit brought on by Citizens United, a nonprofit corporation, asserting that the FEC unconstitutionally enforced the Bipartisan Campaign Reform Act of 2002 by preventing the release of their unfavorable film about Hillary Clinton during the 2008 primary elections. Campaign finance, freedom of speech, and corporate personhood became the focal point of this case. The ruling in Citizens United v. FEC effectively negated previous campaign finance legislation, ending limits on corporate political spending (as long as it is not direct to candidates) and granting individual First Amendment rights of free speech to corporations and unions. Supporters argue that the 1st article of the Constitution is absolute and that, as corporations are associations of individuals, to restrict their rights of free speech is to deny their most basic and bedrock of American rights. Opponents believe that this ruling essentially allows large corporations to buy and sell elections, putting the political interests and influence of profit-driven corporations above those of individual citizens, making room for unchecked corruption in the political process."
)

immigration = Issue.create(
  title: "Immigration",
  summary: "America has traditionally been a destination for refugees of political conflict and people seeking a better life for themselves and their families. Immigrants make up about 13% of the current U.S. population. Of the just over 41 million immigrants currently here, between 11 and 12 million are here illegally. In recent decades anger over diminished job prospects and depressed wages coupled with a post-9/11 fear of terrorism has resulted in a heightened debate over our immigration policies. Many people feel that by providing cheap labor, illegal immigrants are taking jobs away from American citizens, suggesting deportation as the best way to stop this. Others argue that these illegal workers are being exploited and by providing them a legal path to citizenship we can regulate the job market. The 14th Amendment of the Constitution says that all persons born in the U.S. are citizens, but some people think that even this is too lenient and that American born children of illegal immigrants should not be granted citizenship. Others are working towards building a path to citizenship for the illegal immigrant parents of U.S. born citizens. Border security enforcement, deportation, and who should be entitled to a path to citizenship are the main discussion points. "
)

iran_deal = Issue.create(
  title: "Iran Deal",
  summary: "The U.S. and Iran have had a troubled relationship for decades Iran has been on the United States’ list of State Sponsors of Terrorism since 1984. Iran currently has enough of the ingredients needed to build a nuclear weapon in 2-3 months, with the ability to grow those ingredients exponentially if left unchecked. The Iran Deal is a long-term nuclear deal negotiated between the U.S., Russia, China, U.K., France, Germany, the EU, and Iran meant to dramatically limit Iran’s ability, and time it would take, to obtain a nuclear weapon by tying up their nuclear programs. In exchange for lifting crippling UN Security Council economic sanctions, Iran agrees to reduce its stockpile of uranium by 98%. The remaining uranium cannot be enriched enough to make weapons. They will greatly reduce or remove their tools used to create highly enriched uranium and weapons-grade plutonium. Any facilities, known or unknown, will be open to inspectors from the International Atomic Energy Agency 24/7. If Iran doesn’t comply with the deal, UN sanctions can be put back in place. Supporters of the deal believe that, while admittedly imperfect, this deal favors peace over war and could remove the threat of nuclear weapons in the Middle East. Opponents of the deal are skeptical that Iran will honor the deal and are wary that their nuclear program will not be completely dismantled. Some also fear that by lifting sanctions, this deal could leave Iran with more money to support terrorist groups (particularly anti-Israel groups) and strengthen their power in the region."
)

abortion = Issue.create(
  title: "Abortion",
  summary: "In Roe v. Wade (1973) the Supreme Court held that the Constitution protects a woman's right to an abortion. The decision allowed the State to step in only at the point at which a fetus can survive outside of the mother’s womb (known as viability), at which point each state could set legal restrictions in place. Some anti-abortion activists want to change the law to define a fetus as a citizen, who’s rights are protected as such upon conception. Many also hope to redefine fetal viability as occurring after 20 weeks rather than what Roe v. Wade defined as somewhere between 24 – 28 weeks. Other legislation aims to restrict access to abortions by eliminating federal funding for women’s health programs that include abortions. Pro-choice activists argue that the government has no right to decide what is best for a woman’s body or to violate doctor-patient confidentiality. Many also disagree with the definition of fetal viability as occurring after 20 weeks as medical research does not suggest that a fetus will survive outside of the woman’s
  body at that stage. They also believe that more sex-education with greater access to birth control will reduce abortions."
)

Candidate.create(
  first_name: "Hillary",
  last_name: "Clinton",
  bio: "Hillary Diane Rodham Clinton (born October 26, 1947) is an American politician who served as the 67th United States Secretary of State under President Barack Obama from 2009 to 2013. The wife of Bill Clinton, the 42nd President of the United States, she was First Lady of the United States during his tenure from 1993 to 2001. She served as a United States Senator from New York from 2001 to 2009.
        An Illinois native, Hillary Rodham graduated from Wellesley College in 1969, where she became the first student commencement speaker, then earned her J.D. from Yale Law School in 1973.",
  quotes: [
    {
      body: "We have got to  something about gun violence in America — and I will take it on. I believe we are smart enough, we are compationate enough to figure out how to balance the legitimate 2nd Ammendment rights with preventive measures and control measures so that... we will not see more deaths - needless, senseless deaths.",
      source: "Speech given at the Des Moines Area Community College, August 26, 2015",
      issue_id: gun_control.id
    },
    {
      body: "I respect the Second Amendment. I respect the rights of lawful gun owners to own guns, to use their guns, but I also believe that most lawful gun owners whom I have spoken with for many years across our country also want to be sure that we keep those guns out of the wrong hands. And as president, I will work to try to bridge this divide, which I think has been polarizing and, frankly, doesn’t reflect the common sense of the American people. We will strike the right balance to protect the constitutional right but to give people the feeling & the reality that they will be protected from guns in the wrong hands.",
      source: "2008 Philadelphia primary debate, on eve of PA primary , Apr 16, 2008",
      issue_id: gun_control.id
    },
    {
      body: "No one wants their personal emails made public and I think most people understand that and respect that privacy.",
      source: "Interview with NPR, NPR.org, March 12, 2015.",
      issue_id: fourth_amendment.id
    },
    {
      body: "I think the NSA needs to be more transparent about what it is doing, sharing with the Ameriseller people, which it wasn’t.",
      source: "MSNBC.com May 7, 2015.",
      issue_id: fourth_amendment.id
    },
    {
      body: "I will do everything I can to appoint Supreme Court justices who protect the right to vote and do not protect the right of billionaires to buy elections.",
      source: "New York Times interview, NYTimes.com, May 19, 2015.",
      issue_id: campaign_finance.id
    },
    {
      body: "I would consider supporting an amendment among these lines that would prevent the abuse of our political system by excessive amounts of money if there is no other way to deal with the Citizen’s United decision.",
      source: "MSNBC inteview, June 30, 2014.",
      issue_id: campaign_finance.id
    },
    {
      body: "Immigration helped keep the US population young and dynamic at a time when many of our partners and competitors were aging.",
      source: "Hard Choices, by Hillary Clinton, p.550, June 10, 2014.",
      issue_id: immigration.id
    },
    {
      body: "There must be a path to legalization. I would introduce that in the first 100 days of my presidency.",
      source: "2008 Democratic debate at University of Texas in Austin, Feb. 21, 2008.",
      issue_id: immigration.id
    },
    {
      body: "I’m very proud of the role I’ve played in building the coalition and the sanctions that brought Iran to the negotiating table.",
      source: "Politico.com, July 14, 2015.",
      issue_id: iran_deal.id
    },
    {
      body: "I'm hoping that the agreement is finally approved and I'm telling you if it's not, all bets are off.",
      source: "CNN.com, Aug. 11, 2015.",
      issue_id: iran_deal.id
    },
    {
      body: "I think abortion should remain legal, but it needs to be safe and rare.",
      source: "2008 Democratic Compassion Forum at Messiah College, April 13, 2008.",
      issue_id: abortion.id
    },
    {
      body: "I have supported adoption, foster care. I helped to create the campaign against teenage pregnancy, which fulfilled our original goal 10 years ago of reducing teenage pregnancies by about a third. And I am committed to do even more.",
      source: "2008 Democratic Compassion Forum at Messiah College, April 13, 2008.",
      issue_id: abortion.id
    }
  ]
)

Candidate.create(
  first_name: "Bernie",
  last_name: "Sanders",
  bio: "Bernard Sanders (born September 8, 1941) is an American politician and the junior United States Senator from Vermont. He is a candidate for the Democratic Party's nomination for president in the 2016 U.S. presidential election.Sanders is the longest-serving independent in U.S. congressional history.
        A self-described democratic socialist, he favors policies similar to those of social democratic parties in Europe, particularly those instituted by the Nordic countries. He caucuses with the Democratic Party and has been the ranking minority member on the Senate Budget Committee since January 2015.",
  quotes: [
    {
      body: "'I think guns and gun control is an issue that needs to be discussed', Sanders told NPR's David Greene in an interview airing on Thursday's Morning Edition. 'Let me add to that, I think that urban America has got to respect what rural America is about, where 99 percent of the people in my state who hunt are law abiding people.",
      source: "Interview with NPR, NPR.org, June 24, 2015.",
      issue_id: gun_control.id
    },
    {
      body: "I have a lifetime voting record from the NRA of D minus, D-. I voted very strongly for instant background checks, I want to see them made stronger - probably the most important thing that we can do. I voted, in a state, by the way, which has almost no gun control, not an easy vote, I voted against the NRA and I voted to ban certain types of semiautomatic weapons. I voted to eliminate this gun show loophole which allows people to purchase guns without a background check ",
      source: " Interview with CNN, CNN.com, Aug. 30, 2015 ",
      issue_id: gun_control.id
    },
    {
      body: "I voted against the Patriot Act every time, and it still needs major reform.",
      source: "Town hall meeting at the IBEW, covered by Time.com, May 7, 2015.",
      issue_id: fourth_amendment.id
    },
    {
      body: "Do we really want to live in a country where the NSA gathers data on virtually every single phone call in the United States- including as many as 5 billion cellphone records per day? I don’t.",
      source: "Town hall meeting at the IBEW, covered by Time.com, May 7, 2015.",
      issue_id: fourth_amendment.id
    },
    {
      body: "Freedom of speech does not mean the freedom to buy the United States government.",
      source: "Bernie Sanders 2016 Campaign website, Aug. 18, 2015.",
      issue_id: campaign_finance.id
    },
    {
      body: "To restore our one person-one vote democracy, Congress must pass a constitutional amendment to overturn Citizens United and move toward public funding of elections.",
      source: "Bernie Sanders 2016 Campaign website, Aug. 18, 2015.",
      issue_id: campaign_finance.id
    },
    {
      body: "Voted YES on continuing federal funds for declared 'sanctuary cities'.",
      source: "Bill Table S.Amdt.4309 to S.Con.Res  vote number 08-S069, March 13, 2008.",
      issue_id: immigration.id
    },
    {
      body: "There’s such thing as illegal employers as well. People do not come over the border and get jobs without the full expectation their employers understand exactly what’s going on, pay them under the table and in fact exploit them.",
      source: "NBCNews.com, July 28, 2015.",
      issue_id: immigration.id
    },
    {
      body: "We have to negotiate with Iran. And the alternative of not reaching an agreement, you know what it is? It's war.",
      source: "CBS's 'Face the Nation'",
      issue_id: iran_deal.id
    },
    {
      body: "[The Iran Deal] is a victory for diplomacy over saber-rattling and could keep the United States from being drawn into another never-ending war in the Middle East.",
      source: "WashingtonTimes.com, July 14, 2015.",
      issue_id: iran_deal.id
    },
    {
      body: "My position is that a woman's decision whether to have an abortion is a private one, and that this principle must hold true for all women, regardless of income.",
      source: "Outsider in the House, by Bernie Sanders, p.159, June 17, 1997.",
      issue_id: abortion.id
    },
    {
      body: "Bernie believes in protecting a woman's right to choose and has a lifetime pro-choice record",
      source: "2016 presidential campaign website FeelTheBern.org, 'Issues' , Sep 5, 2015",
      issue_id: abortion.id
    }
  ]
)

Candidate.create(
  first_name: "Donald",
  last_name: "Trump",
  bio: "Donald John Trump (born June 14, 1946) is an American real estate developer, television personality, business author and political candidate.
        He is the chairman and president of The Trump Organization, and the founder of Trump Entertainment Resorts.[1] Trump's career, branding efforts, lifestyle and outspoken manner helped make him a celebrity, a status amplified by the success of his NBC reality show, The Apprentice.",
  quotes: [
    {
      body: "The problem is once you get into [stronger background checks] you start getting into a situation, the slippery slope, where all of a sudden you are going to really violate the Second Amendment. I don't want to do anything to violate the Second Amendment. To me the Second Amendment is very important. ",
      source: "MSNBC interview Jul 8, 2015 ",
      issue_id: gun_control.id
    },
    {
      body: "Yes, I have a gun, and yes, I have a permit for it.",
      source: "MSNBC interview Jul 8, 2015 ",
      issue_id: gun_control.id
    },
    {
      body: "'I think we have to err on the side of security.' In regards to NSA surveillance programs versus personal privacy.",
      source: "Fox News interview, FoxNews.com, June 1, 2015.",
      issue_id: fourth_amendment.id
    },
    {
      body: "'If anyone wants to listen to my phone calls, it’s fine.' In regards to NSA surveillance programs versus personal privacy.",
      source: "Fox News interview, FoxNews.com, June 1, 2015.",
      issue_id: fourth_amendment.id
    },
    {
      body: "I love the idea of campaign finance reform.",
      source: "DailyCaller.com, Aug. 14, 2015.",
      issue_id: campaign_finance.id
    },
    {
      body: "One of the things you should do is everybody should be known. If somebody gives a million or two million or five million it should be known.",
      source: "DailyCaller.com, Aug. 14, 2015.",
      issue_id: campaign_finance.id
    },
    {
      body: "We need strong borders. We need a wall.",
      source: "CBS News on 2015 Conservative Political Action Conf. Feb. 27, 2015.",
      issue_id: immigration.id
    },
    {
      body: "Making taxpayers pay for 351,000 criminals who should never have been here in the first place is ridiculous.",
      source: "Time to Get Tough, by Donald Trump, p.136 Dec. 5, 2011.",
      issue_id: immigration.id
    },
    {
      body: "I think it’s an outrage, I think it’s done by people of gross incompetence, I think it’s a tremendous win for Iran and many of our enemies and I think it’s something that shouldn’t be allowed,",
      source: "Breitbart.com, July 22, 2015.",
      issue_id: iran_deal.id
    },
    {
      body: "'We will be respected outside of this country. We are not respected now.' In regards to relations with Iran.",
      source: "2015 CNN GOP debate.",
      issue_id: iran_deal.id
    },
    {
      body: "I'm pro-life, but I changed my view a number of years ago. One of the primary reasons I changed [was] a friend of mine's wife was pregnant, and he didn't really want the baby. He was crying as he was telling me the story. He ends up having the baby and the baby is the apple of his eye. It's the greatest thing that's ever happened to him. And you know here's a baby that wasn't going to be let into life. And I heard this, and some other stories, and I am pro-life.",
      source: "David Brody interview on CBN.com, April 8, 2011.",
      issue_id: abortion.id
    },
    {
      body: "If you look at it, I said, ‘It really, really troubles me, and it really, really bothers me, the whole concept of abortion.",
      source: "STEVEN ERTELT on LifeNews.com, Jan. 26, 2015",
      issue_id: abortion.id
    }
  ]
)

Candidate.create(
  first_name: "Rand",
  last_name: "Paul",
  bio: "Randal Howard Paul (born January 7, 1963) is an American politician and physician. Since 2011, Paul has served in the United States Senate as a member of the Republican Party representing Kentucky. He is the son of former U.S. Representative Ron Paul of Texas.
        Born in Pittsburgh, Pennsylvania, Paul attended Baylor University and is a graduate of the Duke University School of Medicine. Paul began practicing ophthalmology in 1993 in Bowling Green, Kentucky, and established his own clinic in December 2007. Throughout Paul's life, he volunteered for his father's campaigns. In 2010, Paul entered politics by running for a seat in the United States Senate. Paul has described himself as a Constitutional conservative and a supporter of the Tea Party movement, and has advocated for a balanced budget amendment, term limits, and privacy reform.",
  quotes: [
    {
      body: "How many politicians claim they are supports of the 2nd amendment and then vote to restrict handguns? We need to send people to Washington that only understand the 2nd amendment but the entire Bill of Rights. ",
      source: "2010 Rand Paul Senate campaign website, July 19, 2010. ",
      issue_id: gun_control.id
    },
    {
      body: "As President, I vow to uphold our entire Bill of Rights, but specifically our right to bear arms. ",
      source: "Rand Paul 2016 presidential campaign website April 7, 2015 ",
      issue_id: gun_control.id
    },
    {
      body: "I have fought for several years now to end the illegal spying of the NSA on ordinary Americans.",
      source: "Rand Paul 2016 Campaign Website, Sept. 1, 2015.",
      issue_id: fourth_amendment.id
    },
    {
      body: "Forcing us to choose between our rights and our safety is a false choice and we are better than that as a nation and as a people.",
      source: "Statement made to Politico, May 30, 2015.",
      issue_id: fourth_amendment.id
    },
    {
      body: "I think money corrupts the process. I do, however, agree with Citizens United in the sense that I think speech, whether you pay for it or not, is speech and the thing is, is that, lets say i own the Chicago Tribune - I've got a much bigger voice than millions of people and yet no one is pruposing that we restrict how much Chicago Tribune articles they write and where their bias is, so i think paid speech really has to be protected.",
      source: "University of Chicago's Institute of Politics, Apr 22, 2014.",
      issue_id: campaign_finance.id
    },
    {
      body: "What I want to do first is secure the border.",
      source: "CBS Face the Nation 2015 coverage:2016 presidential hopefuls April 12, 2015.",
      issue_id: immigration.id
    },
    {
      body: "I am for immigration reform, but I insist that you secure the border first because if you have a beacon, of some kind of forgiveness, without a secure border, the whole world will come.",
      source: "Meet the Press 2014 interviews of 2016 presidential hopefuls, June 22, 2014.",
      issue_id: immigration.id
    },
    {
      body: "While I continue to believe that negotiations are preferable to war, I would prefer to keep the interim agreement in place instead of accepting a bad deal.",
      source: "Politico.com, July 14, 2015.",
      issue_id: iran_deal.id
    },
    {
      body: "What I would have preferred in this agreement would be that we gradually reduce sanctions over a several-year period, so therefore we can continue to use those as leverage to try and enforce compliance on Iran’s part.",
      source: "interview with The Daily Signal, Aug. 3, 2015.",
      issue_id: iran_deal.id
    },
    {
      body: "Our government should not be responsible for funding abortions, and as President, I will attempt to stop the flow of taxpayer dollars to groups who perform or advocate for abortion.",
      source: "2016 presidential campaign website, RandPaul.com, 'Issues', April 7, 2015.",
      issue_id: abortion.id
    },
    {
      body: "I believe we may be able to save millions of lives, and do no harm, by allowing states to pass their own anti-abortion laws. By giving this power to the states, I sincerely believe we would save hundreds of thousands of lives.",
      source: "2016 presidential campaign website, RandPaul.com, 'Issues', April 7, 2015.",
      issue_id: abortion.id
    }
  ]
)

Candidate.create(
  first_name: "Jeb",
  last_name: "Bush",
  bio: " John Ellis Bush (born February 11, 1953) is an American businessman and politician who served as the 43rd Governor of Florida from 1999 to 2007.
        Bush is the second son of former President George H. W. Bush and former First Lady Barbara Bush, a brother of former President George W. Bush, and grandson of the late Senator Prescott Sheldon Bush. He grew up in Houston, Texas. He graduated from the Phillips Academy in Andover, Massachusetts and attended the University of Texas, where he earned a degree in Latin American affairs. Following his father's successful run for Vice President in 1980, he moved to Florida and pursued a career in real estate development. In 1986, Bush was named Florida's Secretary of Commerce, a position he held until his resignation in 1988 to help his father's successful campaign for the Presidency." ,
  quotes: [
    {
      body: "I got an A plus rating from the NRA every year, we have the highest number of people with a concealed weapons permit... We're a freedom loving state. We protected the second amendment, but we also reduced violent crime by a dramatic amount... If you want to have reduction in violence... then you have to have a clear consistent message that if you use guns in the commission of a crime then there's gonna be a price, and that's what we did in Florida.",
      source: "Town hall meeting in Henderson, Nevada, June 27, 2015 ",
      issue_id: gun_control.id
    },
    {
      body: "We created a balance that’s focused on lowering gun violence but protecting the Second Amendment. ",
      source: "Candidacy announcement, covered by CNN.com, June 27, 2015 ",
      issue_id: gun_control.id
    },
    {
      body: "There’s not a shred of evidence that anybody’s civil liberties have been violated by [NSA surveillance programs].",
      source: "Campaign Rally held in New Hampshire, Business Insider May 21, 2015",
      issue_id: fourth_amendment.id
    },
    {
      body: "There’s a place to find common ground between personal civil liberties and NSA doing its job.",
      source: "DigitalTrends.com, Aug. 20, 2015.",
      issue_id: fourth_amendment.id
    },
    {
      body: "I don't understand [the Citizens United decision], to be honest with you b/c it allows for the restriction of direct contributions to campaigns and then unrestricted contributions to 3rd parties. it creates a real challenge for a potential candidate to figure out how you go about this. in a perfect world, i would say, which we don't have b/c the supreme court has ruled as it did, you'd have very few restrictions for candidates and total transparency... I think accountability is really what matters and so if someone wants to give you alot of money, fine, but you aught to put it on the internet in 24 hours and you aughtta be held to account for whoever's giving you that dough. how we get from where we are to that, i just don't think it's gonna be happening any time soon. ",
      source: "Conversation with the Candidate: Jeb Bush, May 29, 2015 WMUR9 New Hampshire",
      issue_id: campaign_finance.id
    },
    {
      body: "We need to deal with people that come with a visa and overstay. We need to be much more strategic on how we deal with border enforcement, border security.",
      source: "Fox News/Facebook Top Ten First Tier debate transcript Aug. 6, 2015.",
      issue_id: immigration.id
    },
    {
      body: "Either a path to citizenship or a path to legalization. The important point is that illegal immigrants should not get better benefits at a lower cost than people that have been waiting patiently.",
      source: "Meet the Press 2013 series on 2016 presidential hopefuls March 10, 2013.",
      issue_id: immigration.id
    },
    {
      body: "I’m deeply worried about this agreement because I think it’s going to create the possibility of nuclear proliferation in the region and a much more unstable Middle East that will impact us,",
      source: "Politico.com, July 17, 2015.",
      issue_id: iran_deal.id
    },
    {
      body: "The people of Iran, the region, Israel, America, and the world deserve better than a deal that consolidates the grip on power of the violent revolutionary clerics who rule Tehran with an iron fist.",
      source: "Jeb Bush 2016 campaign website, July 14, 2015.",
      issue_id: iran_deal.id
    },
    {
      body: "It is entirely appropriate that an advocate be appointed to represent the unborn child's best interests in all decisions.",
      source: "HuffingtonPost.com, March 25, 2015.",
      issue_id: abortion.id
    },
    {
      body: "I, for one, don’t think Planned Parenthood ought to get a penny",
      source: "Politifact.com, Aug. 26, 2015.",
      issue_id: abortion.id
    }
  ]
)

Candidate.create(
  first_name: "Ben",
  last_name: "Carson",
  bio: "Benjamin SolomonCarson, Sr. (born September 18, 1951) is an American author, politician, and retired Johns Hopkins neurosurgeon. On May 4, 2015, Carson announced he was running for the Republican nomination in the 2016 presidential election at a rally in Detroit, his hometown.
        Carson was the first surgeon to successfully separate twins conjoined at the head. In 2008, he was awarded the Presidential Medal of Freedom by President George W. Bush.After delivering a widely publicized speech at the 2013 National Prayer Breakfast, he became a popular conservative figure in political media for his views on social and political issues.",
  quotes: [
    {
      body: "The baton of freedom is in our hands. We must make absolutely sure that we will never let the right to keep & bear arms be removed from those who follow us in this nation. Let me make it absolutely clear that I am extremely pro-Second Amendment. I will never let anyone tamper with that right.",
      source: "Ben Carson's Facebook page, cited on 2016committee.org , Feb 18, 2014",
      issue_id: gun_control.id
    },
    {
      body: "I used to think guns needed to be registered, but if you register them they just come and find you and take your guns.",
      source: "Ben Carson's Facebook page, cited on 2016committee.org , Feb 18, 2014",
      issue_id: gun_control.id
    },
    {
      body: "There is no reason to monitor the activities of everyday Americans.",
      source: "Email to The Daily Signal May 20, 2015",
      issue_id: fourth_amendment.id
    },
    {
      body: "We can protect our national security without invading the rights of law-abiding citizens.",
      source: "Email to The Daily Signal May 20, 2015",
      issue_id: fourth_amendment.id
    },
    {
      body: "I am in no way willing to get in bed with special interest groups or lick the boots of billionaires",
      source: "2015 CNN GOP debate.",
      issue_id: campaign_finance.id
    },
    {
      body: "The overwhelming majority of Americans want the southern borders of our country secured and our immigration laws enforced.",
      source: "America the Beautiful, by Ben Carson, p. 39, Jan. 24, 2012",
      issue_id: immigration.id
    },
    {
      body: "Is it moral for us, for example, to take advantage of cheap labor from illegal immigrants while denying them citizenship? I’m sure you can tell from the way I phrased the question that I believe we have taken the moral low road on the issue.",
      source: "National Journal 2016 series: Republicans on immigration, Feb. 23, 2015",
      issue_id: immigration.id
    },
    {
      body: "We've not stopped anything, except we are now starting a nuclear arms race in the region. It is perhaps the worst deal in the history of America.",
      source: "NBC's 'Meet The Press.', Aug. 2, 2015.",
      issue_id: iran_deal.id
    },
    {
      body: "I think it is one of the most dangerous situations that we face, not just for the Middle East but for the rest of the world in a long time.” In regards to Iran becoming a nuclear power.",
      source: "Fox News Sunday., Aug. 16, 2015.",
      issue_id: iran_deal.id
    },
    {
      body: "My entire professional life has been devoted to saving and enhancing lives. Thus, the thought of abortion for the sake of convenience does not appeal to me.",
      source: "Washington Times, Ben Carson Op-Ed, 'Physician's View' , Jan 21, 2014",
      issue_id: abortion.id
    },
    {
      body: "As a physician who does not believe in abortion, when faced with a patient who has severe medical problems, I would refer someone for an abortion.",
      source: "Politico.com, Aug. 18, 2015.",
      issue_id: abortion.id
    },
  ]
)

