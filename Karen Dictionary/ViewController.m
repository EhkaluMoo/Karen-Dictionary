//
//  ViewController.m
//  Karen Dictionary
//
//  Created by Ehkalu Moo on 11/22/14.
//  Copyright (c) 2014 Ehkalu Moo. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
{
    NSMutableArray *titleArray;
    NSMutableArray *subtitleArray;
    NSMutableArray  *tenseArray;
    
}
@property (strong, nonatomic) NSArray *array;
@property (strong, nonatomic) NSArray *searchResults;

@end

@implementation ViewController

@synthesize mytableview;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mytableview.delegate = self;
    self.mytableview.dataSource = self;
 

    
    titleArray = [[NSMutableArray alloc] initWithObjects:@"a    ",@"aback  ",@"abandon/abandonment ",@"abase ",@"abash ",@"abate/ abatement  ",@"abbess ",@"abbey ",@"abbot ", @"abbreviation  ", @"abdomen  ",@"abduction  ",@"abed ",@"abide   ",@"ability   ",@"able   ",@"abolish   ",@"abortion   ",@"about   ",@"above    ",@"abrasion   ",@"abroad  ",@"abrupt   ",@"abscess   ",@"absence   ",@"absent   ",@"absolute   ",@"absolutely   ",@"absorb  ",@"absurd  ",@"abstain  ",@"abundant  ",@"abuse  ",@"academic ",@"accelerate   ",@"acceleration   ",@"accent   ",@"accept   ",@"access   ",
                  
                  @"accessory   ",@"accident  ",@"accidentally   ",@"accommodate   ",@"accompany   ",@"accomplish   ",@"accord   ",@"accordion   ",@"account   ",@"accountant  ",@"accurate",@"accuse ",@" accustom    ",@" ache    ",@"achievement   ",@"acid   ",@"acid rain   ,",@"acknowledge   ",@" acquaintance  ",@"acquire   ",@"acrobat   ",@"across   ",@" act   ",@" action   ",@" active   ",@"activity   ",@"actor  ",@" actress  ",@" actual   ",@" acute  ",@"adam's apple  ",@"adapt   ",@"add   ",@"addict   ",@"addicted   ",@" addition   ",@"additional   "
                  
                  ,@"address   ",@" adequate   ",@"adhesive  ",@" adjacent   ",@" adjective  ",@"adjust   ",@"administration  ",@"administrator ",@" admiral ",@"admiration  ",@"admire ",@"admit " ,@"adolescent " ,@"adopt   ",@" adore   ",@" adult  ",@"adultery",@" advance ",@" advantage  ",@" adventure  ",@" adverb",@"adversity",@"advertise   ",@"advertisement   ",@"advice   ",@"advise   ",@"advocate  ",@"adze   ",@"aerial ",@"aeroplane  ",@"aestivation   ",@"affair  ",@"affect  ",@"affection  ",@"affiliate   ",@"afford  ",@"afforestation  ",@"afloat   ",
                  
                  @"afraid   (a)",@" after   (prep)",@" afternoon   (n)",@" afterwards   (adv)",@" again   (adv)",@" against   (prep)",@" age   (n)",@" agency   (n)",@" agenda   (n)",@"agent   (n)",@" aggressive   (a)",@"agile   (a)",@" ago   (adv)",@" agony   (n)",@" agree   (v)",@" agriculture   (n)",@" agroforestry   (n)",@" ahead   (prep)",@" aid   (v)(n)",@"AIDS   (n)",@"ailment   (n)",@"aim   (n)(v)",@"air   (n)",@" air-conditioner   (n)",@"aircraft-carrier   (n)",@" airforce   (n)",@" airforceman   (n)",@" air-hostess   (n)",@" airplane   (n)",@" airport   (n)",@" aisle   (n)",@" ajar   (a)",@"alarm  (n)(v)",@"alarm clock   (n)",
                  
                  @"album   (n)",@" alcohol   (n)",@" alert   (a)",@" algae   (n)",@" alibi   (n)",@" alien   (n)(a)",@" alight   (a)",@"alike   (a)/(adv)",@"alive   (a)",@"all   (a)",@"allegation    (n)",@"allergy   (n)",@"alley   (n)",@"alliance    (n) ",@"alligator   (n)",@"allow   (v)",@"ally   (n)",@"almost   (adv)",@"alms   (n)",@"alone   (a)",@" along   (adv)",@" aloud    (adv)",@" alphabet   (n)",@" already   (adv)",@" also   (adv)",@" altar   (n)",@" alter   (v)",@" alteration   (n)",@" alternate   (v)/(a)",@" although   (conj)",@" altitude   (n)",@" altogether   (adv)",@" always   (adv)",@" amateur   (n)",@" amaze   (v)",@" ambassador   (n)",@" amber   (a)/(n)",@" ambition   (n)",
                  
                  @"ambulance   (n)",@"ambush   (n)(v)",@"amend   (v)",@" amendment   (n)",@" amiss   (a)",@" ammunition   (n)",@" amnesty   (n)",@" among   (prep)",@" amount   (n)",@" amphibian   (n)",@" ample   (a)",@" amplifier   (n)" ,@"mputate   (v)",@"amulet   (n)" ,@"amuse (v)" ,@"amusement   (n)" ,@"amusing   (a)",@"an   (det)",@"anaemia   (n)" ,@"anaesthetic   (n)" ,@"anaesthetist   (n)" ,@"analyse   (v)" ,@"analysis   (n)" ,@"anarchy   (n)" ,@"ancestor   (n)",@" anchor   (n)" ,@"ancient   (a)" ,@"and   (conj)" ,@"angel   (n)" ,@"anger   (n)" ,@"angle   (n)" ,@"angry   (v)" ,@"animal   (n)" ,@"animist   (n)" ,@"animosity   (n)",@" ankle   (n)" ,@"annihilate   (v)" ,@"anniversary (n)" ,@"announce   (v)",
                  
                  @"annoy   (v)",@" annual   (a)",@" anonymous   (a)",@" anorexia   (n)",@"another   (a)",@" answer   (n)(v)",@"ant   (n)",@" Antarctic   (n)",@" antelope   (n)",@" anthem   (n)",@" anthill   (n)",@" anticipate   (v)",@" antimony   (n)",@" anus   (n)",@" anvil   (n)",@" anxiety   (n)",@" anxious   (a)",@" any   (a)",@" any longer   (pron)",@" anybody   (pron)",@" anymore  (pron)",@" anyone   (pron)",@" anything   (pron)",@" anyway   (adv)",@" anywhere  (adv)",@" aorta   (n)",@" apart   (adv)",@" apartment   (n)",@" apathetic   (a)",@" ape   (n)",@" aphelion   (n)",@" apologise   (v)",@"apparent   (a)",@" appeal   (v) (n)",@"appear   (v)",@"appearance   (n)",@"appendix   (n)",
                  
                  
                  @"appetite   (n)",@"applaud   (v)",@" applause   (n)",@" apple   (n)",@" apply   (v)",@"appoint   (v)",@" appointment   (n)",@"appreciate   (v)",@" apprentice   (n)",@" approach   (v)",@" appropriate   (a)",@" approve   (v)",@" approximate   (a)(v)",@"apricot   (n)",@" April   (n)",@" apron   (n)",@" aquaculture   (n)",@" aquifer   (n)",@" Arakanese  (n)",@" arch   (n)",@" archaeology   (n)",@" archipelago   (n)",@" architect  (n)",@" architecture   (n)",@"Arctic   (n)",@" are   (v)",@" area   (n)",@" argue   (v)",@" argument   (n)",@" aricca nut   (n)",@" arise   (v)",@" arithmetic  (n)",@" arm   (n)",@" armchair   (n)",@" armour   (n)",@" armpit   (n)",
                  
                  @"arms   (n)",@" army   (n)",@" aroma   (n)",@" around   (prep)",@" arrange   (v)",@" arrangement   (n)",@" arrest   (v)",@" arrive   (v)",@" arrogant   (a)",@" arrow   (n)",@" art   (n)",@" artery   (n)",@" article   (n)",@"  artificial   (a)",@" artist   (n)",@" arts   (n)",@" as   (con/ prep)",@" ascend   (v)",@" ASEAN   (n)",@" ash   (n)",@" ashamed   (a)",@" ashtray   (n)",@" asia   (n)",@" aside   (adv)",@" ask   (v)",@" asleep   (a)",@" asparagus   (n)",@" aspect   (n)",@" ass   (n)",@" assassinate   (v)",@" assault   (n)(v) ",@"assemble   (v)",@" asset   (n)",@" assign   (v)(n)",
                  
                  @"assimilate   (v)",@"assist   (v)",@" assistance   (n)",@" assistant   (n)",@" association   (n)",@" assorted   (a)",@" assume   (v)",@" assurance   (n)",@" asteriod   (n)",@" asthma   (n)",@" astonish   (v)",@" astonishment   (n)",@" astronaut   (n)",@" astronomer   (n)",@" astronomy   (n)",@" asylum   (n)",@"at   (prep)",@" atheist   (n)",@" athlete   (n)",@" athletics   (n)",@" atlas   (n)",@" atmosphere   (n)",@" atoll   (n)",@" atom   (n)",@" attach   (v)",@" attack   (v)",@" attempt   (v)",@" attend   (v)",@" attic   (n)",@" attitude   (n)",@" attract   (v)",@" attractive   (adj)",@" aubergine   (n)",@" auction   (n)",@" audible   (a)",@" audience   (n)",@" aunt   (n)",@" author   (n)",@" authority   (n)",@" automatic   (a)",
                  
                  @"automatic teller machine  (ATM)   (n)",@"autonomy   (n)",@"autumn/fall   (n)",@" available   (a)",@" avenue   (n)",@" average   (n)",@" avert   (v)",@" avid   (a)",@" avoid   (v)",@" await   (v)",@" awake   (a)",@" award   (n)(v)",@"aware   (a)",@" away   (adv)",@"awful   (a)",@" awkward   (a)",@" awl   (n)",@" axe   (n)",@" axis (of earth)   (n)",@" axle   (n)",
                  
                  @"baby   (n)",@" baby bottle   (n)",@"baby sit   (v)",@" bachelor   (n)",@" back   (prep/n)",@"backache   (n)",@" backbone   (n)",@" background   (n)",@"back-hoe   (n)",@" backing   (n)",@" backlash   (n)",@" backlog   (n)",@" back-up   (n)",@" backwards   (adv)",@" bacon   (n)",@" bacteria   (n)",@" bad   (a)",@" badge   (n)",@" badger   (n)",@" badminton   (n)",@" baffle   (v)",@" bag   (n)",@" baggage   (n)",@" baggy   (a)",@" baht   (n)",@" bail   (n)",@" bail out   (v)",@" bait   (n)",@" bake   (v)",@" baker   (n)",@" baking powder   (n)",@" balance   (n)",
                  
                  @"balcony n  bald a ball n  ballet n balloon n ballot n balm n bamboo n ban v banal a banana n band n bandage n bandit n  bane n bang v",@"bangle n banish v banister n bank n banner n banquet n banyan tree n baptize v bar n   barbaric a barbecue n v barbed-wire n barber n bare a bargain v",nil];
    
    
    
    tenseArray = [[NSMutableArray alloc] initWithObjects:@"-noun",@"-adverb",@"-verb/-noun",@"-verb",@"-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-verb",@"-verb",@"-noun",@"-adj",@"-verb",@"-noun",@"-prep",@"-prep",@"-noun",@"-adv",@"-adj",@"-noun",@"-noun",@"-adj",@"-adj",@"-adv",@"-verb",@"-verb",@"-adj",@"-adj",@"-noun/-verb",@"-adj",@"-verb",@"-noun",@"-noun",@"-verb",@"-noun/-verb",
                  
                  @"-noun",@"-noun",@"-adverb",@"-verb",@"-verb",@"-verb",@"-noun/-verb",@"-noun",@"-noun",@"-noun",@"-adj",@"-verb",@"-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun",@"-verb",@"-noun",@"-prep",@"-verb",@"-noun",@"-adj",@"-noun",@"-noun",@"-noun",@"-adj",@"-adj",@"-noun",@"-verb",@"-verb",@"-noun",@"-adj",@"-noun",@"-adj",
                  
                  @"-noun",@"-adj",@"-adj",@"-adj",@"-noun",@"-verb",@"-noun",@"-noun",@"-noun",@"-noun",
                  @"-verb",@"-verb",@"-noun",@"-verb",@"-verb",@"-noun",@"-noun",@"-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun",@"-noun",@"-verb",@"-noun/-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun",@"-verb",@"-verb",@"-noun",@"-adjective",
                  
                  @"-adjective",@"-preposition",@"-noun",@"-adverb",@"-adverb",@"-preposition",@"-noun",@"-noun",@"-noun",@"-noun",@"-adjective",@"-adjective",@"-adverb",@"-noun",@"-verb",@"-noun",@"-noun",@"-preposition",@"-verb/-noun",@"-noun",@"-noun",@"-noun/-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-adjective",@"-noun/-verb",@"-noun"
                  
                  ,@"-noun",@"-noun",@"-adjective",@"-noun",@"-noun",@"-noun/-adjective",@"-djecetive",@"-adjective/-adverb",@"-adjective",@"-adjective",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun",@"-adverb",@"-noun",@"-adjective",@"-adverb",@"-adverb",@"-noun",@"-adverb",@"-adverb",@"-noun",@"-verb",@"-noun",@"-verb/-adjective",@"-conjuction",@"-noun",@"-adverb",@"-adverb",@"-noun",@"-verb",@"-noun",@"-adjective/-noun",@"-noun"
                  
                  ,@"-noun",@"-noun/-verb",@"-verb",@"-noun",@"-adjective",@"-noun",@"-noun",@"-preposition",@"-noun",@"-noun",@"-adjective",@"-noun",@"-verb",@"-noun",@"-verb",@"-noun",@"-adjective",@"-indefinite article",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-adjective",@"-conjuction",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun",@"-verb"
                  
                  ,@"-verb",@"-adjective",@"-adjective",@"-noun",@"-adjective",@"-noun/-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-adjective",@"-adjective",@"-pronoun",@"-pronoun",@"-pronoun",@"-pronoun",@"-pronoun",@"-adverb",@"-adverb",@"-noun",@"-adverb",@"-noun",@"-adjective",@"-noun",@"-noun",@"-verb",@"-adjective",@"-verb/-noun",@"-verb",@"-noun",@"-noun"
                  
                  ,@"-noun",@"-verb",@"-noun",@"-noun",@"-verb",@"-verb",@"-noun",@"-verb",@"-noun",@"-verb",@"-adjective",@"-verb",@"-adjective/-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun",@"verb",@"-noun",@"-noun",@"-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun"
                  
                  ,@"-noun",@"-noun",@"-noun",@"-preposition",@"-verb",@"-noun",@"-verb",@"-verb",@"-adjective",@"-noun",@"-noun",@"-noun",@"-noun",@"-adjective",@"-noun",@"-noun",@"-conjection/-preposition",@"-verb",@"-noun",@"-noun",@"-adjective",@"-noun",@"-noun",@"-adverb",@"-verb",@"-adjective",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun/-verb",@"-verb",@"-noun",@"-verb/-noun"
                  
                  ,@"-verb",@"-verb",@"-noun",@"-noun",@"-noun",@"-adjective",@"-verb",@"-noun",@"-noun",@"-noun",@"-verb",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-preposition",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-noun",@"-verb",@"-verb",@"-verb",@"-verb",@"-noun",@"-noun",@"-verb",@"-adjective",@"-noun",@"-noun",@"-adjective",@"-noun",@"-noun",@"-noun",@"-noun",@"-adjective"
                  
                  ,@"-noun",@"-noun",@"-noun",@"-adjective",@"-noun",@"-noun",@"-verb",@"-adjective",@"-verb",@"-verb",@"-adjective",@"-noun/-verb",@"-adjective",@"-adverb",@"-adjective",@"-adjective",@"-noun",@"-noun",@"-noun",@"-noun"
                  
                  ,@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"", nil];
    
    
    
    
    
    subtitleArray =[[NSMutableArray alloc] initWithObjects:@"wX<w (rHR< cg)",@"o;vDRuwkR(vXw>csK;cHed;o;wkRtd.tCd)<*kRuhRto; (vXw>urXur.tylR)<o;vDRxl.",@"(w>)pl;uGHmnduGHmoyS>yS>(w>)[;o'.uGHm<(w>)wuDR(t) o;vXRb.<(w>)ymvDRwJmuGHmw>eD>eD>",@"rRzk.vDR(to;)<rR[;*DRtvRuyDR", @"'k;rJmqS;<rRrJmqS;",@"(w>)qH;vDRpSRvDR<(w>)rRp>vDR",@"rJmoH.v;tcd.",@"y&H.uGH.tpDRoDwz.ttd.w>tvD>",@"pDRoD'd.<oDcg'd.", @"w>uwdRtzk.I w>uwdRwzsX.vXyuGJ;tDRvXtzk. t'd< (rh) ] rhwrh>",@"[XzX",@"w>zD.ql.ySR< w>Ch>pdmql.ySR",@"oq.xD.w>tXtcH< rRxGJw>tXtcH",@"wD'D;w>tX.vDR< 'due.rRxGJw>od.w>oD",@"w>ohw>b.I t'd<etd.'D;w>ohw>b.vXw>od.vdvHm",@"uJ ̃ oh ̃ vXttd.'D;*H>bg ̃ wRv.vXurRw>t*D>",@"rR[;*DRuGHm ̃ rRuwX>uGHm",@"[k;[;*DR ̃ w>zdvDRvl;",@"1I C.C. 2I b.C;'D;",@"1I t'Dcd. ̃ tzDcd. 2I (upDR)xD.xDe‹>'H;",@"vDRobsL",@"vDRobsL",@"owl>uvm",@"w>0h",@"w>wtd.b.< tw[Jb.< twyX>xD.b.",@"wtd.vX—b.I t'd< pDRvgySJRwtd.vX[H.b.",@"tvXtySJR< vXmvXmqhqh",@"vXmvXmqhqh< eD>eD>",@"pl>oH;",@"vXtwClvdmo;'D;w>oh.nge>yX>< vXtwvDRemySRb.I",@"w[h.w>z;< [;qSJ;vXu[h.w>z;",@"vXttgt*D>",@"w>rRw&Dwyg ̃ w>rRtXrRoD< w>rRur.rRw&Dwyg ̃ y,JG ̃ rRtXrRoD< rRur.",@"vXtb.C;'D;w>rRvdvHm'd.vJ>xD< vXt'k;eJ.zsgw>oh.nge>yX>vX ([J) vXvHm{dRvJ>{dR",@"cs›xD.< rRcs›xD.",@"w>rRcs›xD.w>",@"uvk>uwdRtoD.",@"wl>vdm",@"1I w>vJREkmb.< w>vJRqlttd.tcGJ;td. 2I w>rRM>tgxD. w> 3I w>td.vXeupl;ugtDRt*D>1I vJREkmb.< vJRqlttd.tcGJ;td. 2I rRM>tgxD.w>3I td.vXw>upl;ugtDRt*D>",
                    
                    @"1I ySRvXttd.ySdRrRpXRw>tXw>oD2I w>tyD;tvDvXtrRpXRw>trd>yS>< yD;vDtbsJ.",@"w>b.zk;I w>rRto;b.zk;b.ysD>",@"b.qX.b.wDR< b.twDR",@"1I rRb.vdmw>< rRClvdmzd;vdmto;'D;w>*R2I uwDRM>w>td.w>qd;tvD>< [h.'k;td.",@"1I vJRCkm'D; 2I ydmtcH",@"rR0HRrRuJ< rRvXrRySJR",@"w>Clvdmto;< w>vDRyvdmvdmto;< w>rRClrRzd; Clvdmto;< vDRyvdmvdmto;< rRClrRzd;",@"we>xk;pk",@"1I t*h>tusdR 2I php&D",@"ySRzD.php&D",@"vXtvDRwH>vDRqJ;",@"qSd;< ymw>ur.vXySRvdR",@"'k;rRnDEk> (to;)< 'k;uJxD.tvk>tv>",@"wuHy0H< qg",@"w>rRM> ̃ w>rR0HRw>",@"1I *mqH. 2I wRqH.",@"*mqH.w>plRxH",@"tX.vDRtDvDRvXtoh.ng< tX.vDRvXt'd;M>vH< 'k;oh.ng",@"w>oh.ngvdmo;< ySRvXyoh.ngtDR< w>oh.ng",@"M>< rRM>< yS›RM>< CkrRM>",@"ySRwcUcHwcU,D>",@"vJR)cD*m ̃ (rR)'D.wlm",@"1I eJ.'d 2I rR(w>)",@"1I w>eJ.'d 2I w>rR(w>)",@"vXt[l;*JR",@"w>[l;w>*JR< w>zH;w>rR",@"cGg*JR'd",@"rk.*JR'd",@"eD>eD> ̃ vXtrh>0JeD>eD>",@"1I w>qgvXe;'D;yX>xD.owl>uvm2I w>wl>b.vXtqge;e;uvJm",@"udmwe‹o.< udm,l>wMo.",@"rRb.vdm< rRw>'fod;ub.bsd;b.'guhR",@"ymzSd.(w>) ̃ ymzSd.'D; ̃ rRtgxD.",@"ySRvXtnDek>tDoH;< tDrdm< pJuoH.rlRbSD;",@"uJxD.tvk>tv>I t'd< nDEk>tDoH;",@"w>ymzSd. ̃ w>rRtgxD.",@"vXw>*RtrJmng< toD(wrHR)",
                    
                    @"td.qd;vD>usJ ̃ vD>td.vD>qd;",@"vXtvX0JvD.0JvXw>wrHRrHRt*D>",@"vXtpJbl; ̃ vXtyHm",@"vXtbl;'D;",@"rHRu,X ̃ eD>u,X",@"usJRvdR ̃ usJRb.",@"w>yXw>qSX",@"ySRyXqSXw>",@"xHok;rk>cd.usX>",@"w>ym'd.< w>ymzsgvXtrh>w>vDRpH;y-wXR",@"b.ol.b.o;",@"1I wl>vdm 2I tX.vDR(w>vXtrR0J)",@"ySRvd.bd",@"vk>zd",@"tJ.vXo;'DzsX.",@"ySR'd.wkm",@"w>tJ.bXrgtJ.bX0R",@"vJRqlng ̃ 'd.xD.xDxD.",@"w>b.bsK;",@"w>rRw>vXo;'l",@"0D>u,X",@"w>wwX>weg< w>uDw>cJ< w>[J0HtX",@"'k;[lxD.ogvDR< bd;b.oh.ng",@"w>bd;b.oh.ng",@"w>[h.ul.",@"[h.ul.w>",@"ySRvXtwdpXRw>uwdRpXRw>< rRpXRw>'ftw>emtd.0Jtod;< uwdRpXRw>'ftw>emtod;",@"uGgwJ",@"uGJRvhvdRt'H; ̃ uGJR[lzsgt'H;",@"ubD,lR",@"q.zduD>zdtd.'k;zJw>ud>uwD>",@"1I w>trl;t&>< w>vXtrRto;< 2I w>vXtb.C;'D;ySR (w*R) 3I w>tJ.bXrg0R< w>rHCkmvXwzsDto;",@"rRb.'d",@"w>tJ.",@"w>&hvdmrRoud;w>< rRb.xGJvdmw>",@"wl>w>tyS›R",@"w>uwDRoh.yS>< w>ol.vDRoh.yS>",@"vXtxD.zD",
                    
                    @"ysHRw>",@"1I 0HRtvD>cH 2I tvD>cH",@"rk>Ch>vDR ̃ [gcD ̃ [gvDRcD(tuwD>)",@"vXcH(e‹.) ̃ vXcHvXvm ̃ w>e‹.tvD>cH",@"u'D;(wbsD)",@"xD'g",@"o;teH.tvg",@" 1I cX.p;w>rR 2I cX.p;u&X",@"1I w>td.zSd.w>&J.vDR ̃ w>td.zSd.w>*h>w>usdR2I w>rR&J.usJRwuGD.",@"ySRcX.p;",@"vXtCkqdw>th.vdmqd;uhvdm< vXt'k;td.xD.qdw>'k;w>,R<                    vXtrRql.w>",@"vXtpkcs›cD.cs› ̃ vXtyh>tcs›",@"ylRuGHm",@"(vXtySJR'D;) w>ol.tlo;uJR< w>wl>b.e;e;uvJm",@"o;vDRyvdm ̃ tX.vDRwl>vdm",@"w>ol.w>zs; ̃ pHmySJRol.zs;",@"w>ol.CgCkmbk[kw>rk>w>bd",@"vXng ̃ rJmng",@"rRpXR<w>[h.rRpXR",@"w>qgth;(pf)",@"w>td.ql.td.cs›wtd.< w>ql;w>qgtD.< w>ql;w>qgtD.qH;udm",@"w>uG>pd<w>ynd.  AApl.bsX(usd)",@"uvHR",@"uvHRck.'X",@"ubDwDubD,lR",@"uvHRok;rk>",@"uvHRok;zd",@"ubD,lRrk.wl>wrSHR",@"ubD,lR",@"ubD,lRoe‹",@"bX.pXRusJ ̃ usJbX.pXR< usJzdvXttd.vXw>cHrHRtbX.pXR t'd< usJvXttd.vXvD>qh.eDRcHusdRtuql;vXo&dmylR",@"td.[dwpJ;< td;xD.to;wpJ;",@"w>rRzk;rRysD> ̃ w>oD.yvD> ([h.yvD> ̃ rRyvD>w>)",@"e.&H.qhvh",
                    
                    @"vHmymzSd.w>*DR",@"oH; ̃ oH;pDxH",@"vXttd.oyS›RrJm ̃ vXtpD.rJmpD.eg",@"tHiJm< [D.qS;< eD.'d;qS;",@"w>uwdRylRzsJ;to;vXtpH;vXogtd.wylR'.zJw>uJxD.o; tcg",@"ySRwcDbDrk>zd< ySRvXttd.vXxHuD>t*Rwbh.< w>vXttd.vXrlzsX.t*RwzsX. (vXtb.C;'D;wcDxHwcDuD>< vXtvDRqD)",@"pH.vDR ̃ ,k>vDR ̃ pD>vDR",@"'fod;vdmto;< vDR*mvdmto;< vDRyvdm",@"vXtrl0J",@"cJvXm",@"yJRwcDwXR ̃ w>ymxD.w>ur.",@"wzD;vdm< wb.vdm('D;oGH.xH) t'd< w>tD.w>tD",@"usJzdusJq.",@"od.rSHR",@"wr.vXtcd.zk.wuvkm< w&h",@"[h.tcGJ; ̃ ysJ ̃ ysJvDR",@"w>ymzSd.xD.o; ̃ od.rSHR",@"bl;wh>r;vX< C.C.",@"(w>) [h.o;unDRw>",@"xJw*R{dR",@"(vXusJ)'Dbd ̃ ydmxGJ",@"oD.'d.< (ud;) 'd.'d.",@"vHmrd>yS>",@"(rR)wh>vH",@"ph>uD;",@"w>vk>vD>",@"vJvdm",@"w>qDwvJbSDb.uhRw> ̃ w>vJvdm",@"w*RwbsD< wcgwbsD< vXtrR,>cD,>cD",@"b.q. ̃ emouh< emuh< oemuh",@"w>upDRxD.",@"ymCkmcJvXm< wylRCD",@"xDbd",@"ySRvXtrRw>vXtw>o;pJ'.0J",@"rRurXur.",@"rD>oD",@"tbDyS>< tbDC;< vX>qSHbD",@"w>o;ql.< w>ol.ql.o;*JR< w>uG>pd< qXrRM>w>",
                    
                    @"odvh.wDySRqg",@"w>cd;clol.'D;'k;ySR < cd;clol.'k;ySR",@"(w>) rR*hRxD.uhRw>< bSDb.uhRw>",@"w>bSDb.",@"w-uX;b.< ur.0J",@"usdcsHySmo.",@"w>ys>zsJ;(vXw>ur.)",@"vXtusg ̃ u'Ju'J",@"w>ymzSd.w> (tM>) ySJRtHRySJREkR< ySJRxD.< xD.b;",@"cdxHq.zduD>zd< q.zduD>zdvXttd.vXxH'D;cd t'd< 'h.",@"vXvD.vXurRw>t*D>< vXySJR",@"w>rR'd.xD.w>uvk>< pJ;rR'd.w>uvk>",@"ul;wJmuGHmI cD.rhwrh>pk'k.wDRrh>[;*DRyb.ul;wJmuGHmtDR",@"w>ypD>",@"rRrkm (ySRo;) ̃ rRzSHySRo;",@"w>rRrkmrRck.ySRo; ̃ w>rRzSHySRo;",@"vXtvDReHR",@"w (cg<rHR)",@"oGH.*H>p>w>qg",@"uoH.o;oyhR",@"uoH.o;oyhRo&.",@"yJmxHeDRz;(w>)",@"w>yJmxHeDRz;",@"vd.yRwtd.oEl",@"ySRvXyvDRpXR",@"eD.ouhR",@"w>td.ymvXysXR",@"'D;",@"rlcd.uvl;",@"w>o;xD. ̃ w>ol.'d.o;xD.",@"(t)eX. ̃ toeX.",@"o;xD.< o;zsd;",@"q.zduD>zd",@"ySRrd>vk>y>v>zd< ySRbgoH;cd.rk>Cg",@"w>ol.[ho;[h vXtrRtd.xD.w>rRw>xD'gySR*R",@"cD.'hudm",@"rRvDRwlmuGHm",@"eH.qJ;qX <qXuhRtvD>",@"bd;b.&RvDR ̃ bd;b.oh.ng"
                    
                    ,@"rRthe‹ rRo;xD.<rRwHmwm (ySRo;)",@"weH.wbsD",@"ySRtrHRwzsgb.",@"w>wtJ.'d;tD.w>rh>vXtJ.'d;CJRtCd< w>'k.CJRvDRo; (vDRqD'.w>ydmrk.zdwz.)",@"t*Rw—toDw— u'D;w—",@"w>pH;qX< pH;qXw>",@"wX>< wX>CH.",@"t.w.wh;",@"wRz;",@"w>o;0H.b.C;w>bl.w>bg< xHuD>< 'Duvkmw>o;0H.",@"bsX.",@"1I qdurd.qd< xH.pd 2I rRqdympXR",@"tJ.wH.rd.eH.",@"cHylR",@"x;vm",@"ol.ud>o;*DR",@"o;ud>uGH ̃ o;ol*JR",@"w(rHR)*hRw(rHR)*hR< wrHRrHR*hR< wcgcg*hR",@"vXRb.",@"ySRw*Rv>v>",@"vXRb.",@"ySRw*Rv>v>",@"w>wrHRv>v>",@"'fvJ.*hR'fvJ.*hR",@"wylRv>v>",@"thtD>w.I oGH.usdRt'd.uwX>vXbl;'D;o;vXpkph.wcD",@"pDRpkR< w>td.vDRz;to",@"[H.'X;zSd.",@"vXto;wtd.b.",@"wRtk;wuvkm t'd< uDR&H;v.<cFH>yJ.pH.",@"w>vD>vX,HRuwX>'D;rk>",@"tX.vDR(w>ur.)<Chun;",@"vXttd.zsg0J",@"ywHouGHmun;< ywHChun;< w>ywHChun;<w>ywHouGHmun;",@"td.zsgxD.< [JzsgxD.< td.zsg",@"w>td.zsg",@"1I ySHmz;'h 2I w>ydmxGJ"
                    
                    ,@"w>o;td.(w>tD.)< w>rd.tD.rd.tDo;< o;ChtD.w>< w>udmylR0H.",@"ud;yolpH;y-wXR",@"w>ud;yolpH;y-wXR",@"tJyX.o.<zDo.",@"1I ywHxD.w>rR 2I pl;ug 3I w>rRb.C; 4I zSLuoH.",@"[h.vDRrl'g<CkxXxD.vXrl'g",@"1I w>CkxXxD.vXrl'g 2I w>oh.qXz;uwD>vXuxH.vdm o;t*D>",@"oh.ngw>bsK;w>zSd.< ymvk>'d.yS›R'd.< b.ol.b.o;",@"rRvdoDw>rR< ySRvXtrRvdohto;vXySRw*RtpkylR",@"ok;bl;o;< [Jbl;< bl;xD.",@"-uX;0J< b.0J",@"b.to;< tX.vDRtDvDRvXtb.",@"C.C.<w,mw>",@"w±l;rDRwDRo.< w±l;xHrdRwdRo.",@"vgthjzh.< vgvGH>vgwvg",@",.w'DI t'd< ySRzDrhRzduuR0Jt*D>",@"w>bk.xHq.zduD>zd< w>bk.q.zduD>zdvXttd.vXxHusg",@"vX>pSH>xH",@"ySR&X.cX.zd",@"yJ}wDcd.'DI w>uh.usDRvXyJ}wDtzDcd.",@"w>rRvdb.C;w>Ckoh.ngcl.xk;xD.uhRw>zdw>vHRvXysXR",@"uD;u±l>",@"ySRohwhxD.bSDxD.w>",@"w>whzsgxD.w>ol.xD.uh>*DRtw>ohw>b.< w>whzsgxD.w>ol.xD.uh>*DR",@"t.wh;",@"rh>< td.",@"w>t'd.tvJ>< th&,>< vD>u0DR",@"*h>vdmbSDvdm",@"w>*h>vdmbSDvdm ̃ w>uwdR*h>vdmw>",@"oJ;o.",@"1I [JyX>xD.< zsgxD. 2I *JRqXxX.",@"w>*H>w>'G;",@"pk'k.wDR",@"c;wD.pk< vD>qh.eDRwD.pk",@"oCd;uwDR",@"wHmvm",
                    
                    @"w>pku0JR",@"cdok;rk>< cdok;",@"w>eXrleXqSD",@"1I 0;0;<0;w&H;< vXtCXR0;0; 2I zJtHRzJe‹.",@"uwJmuwDR< &J.usJR",@"w>uwJmuwDR< w>&J.vDRusJRvDR",@"zD.(vXtb.xGJyXRuD>zD.w>)",@"wkR< vJRwkR< [JwkR",@"vXtym'd.ymxDto;< vXtymto;uzXvX",@"ys>",@"w>ohw>b.vXySRrR0J'fod;urRrkmb.ySRo;< vRul.oh",@"oGH.vJRusdR",@"1I w>uGJ;zk. (vXrJ;upH< w>y&Xwz.tylR) 2I vHmtqXzdvXoJp;w>bsXtylR3I w>zdw>vHRwrHR",@"t,DR<Xtb.w>whtDRvXySRunD",@"ySRwhw>*DR",@"'GJvRul.oh",@"'fod;< tzXrk>< ow;'D;< wkR",@"vJRxD.<xD. (qlx;cD< qlw>z;zD)",@"th±SX.rk>xD.uvHRxH;xHuD>u&X (t.pH.,.)",@"z.qg< csg",@"vXtvDRrJmqS;",@"rdmth.'X",@"th±SX.",@"qltuyR< vXtuyR",@"oHuG><rX< Chw>< rRvdm",@"td.rHoyhR< vXtrHb.to;",@"[D.ql.ysd>< w>ysd>'k.",@"1I w>td.zsg< tw>td.zsg<2I w>xH.vX (w>uDw>cJw>td.o;wz.tuh>t*DR)",@"1I uoh.,DR 2I ySRtrX;",@"ul.oH",@"w>rRtXwysK>wysDRw>< w>'k;wysK>wysDRw> < rRtXwysK>wysDRw>< 'k;wysK>wysDRw>< wD>zk;ySR*R",@"td.zSd.< ymzSd.< xXzSd.0mzSd.",@"w>pkvD>cD.cd.< w>vk>'d.yS›R'd.vXtuH>tpD*hR",@"(w>) eDRvDR< w>[h.vDRtd.'D;t*h>tusdR < [h.eDRvDRCkm'D;w>ymyeD.",
                    
                    @"1I pl>pSD> 2I rRvDRysdmto;'D;ySRt*R< w>'k;uJtDRwuvkmCD'D;ySR*R",@"rRpXR",@"w>rRpXR< w>wdpXRrRpXR",@"ySRrRpXRw>",@"tzk< tu&X",@"vXttd.tuvkmuvkm",@"emw>vXto;< qdurd.ymw>vXto;< qdurd.w,m",@"w>emeD>uD>w>< w>tk.uDR",@"rlzsX.jyH",@"w>o;bH;< w>ogtH;",@"urXur.< 'k;vDRurXur.(ySRto;)< rRuwkR (ySRto;)",@"w>'k;vDRurXur.< w>o;uwkR",@"ySRrlysDzd",@"ySRohrluydmyDng",@"rluydmyDng",@"w>td.u'k< w>td.u'ktvD>< xH%l>uD>oJ;w>td.u'k",@"vX< zJ",@"ySRvXtemvX,GRwtd.b.",@"ySRvdmuGJzd< ySRvXtvdmuGJw>Ch>w>pH.",@"w>vdmuGJw>Ch>w>pH.",@"vHm[D.cd.*DR (vHmvXtd.'D;xHuD>t*DRwz.)",@"uvHRuxX< uvHRvXttd.0;w&H;[D.cd.zsX.< uvHRu[k",@"uD;vX>zD (uD;vXttd.xD.cDzsdvX>zD)",@"w>rd>yS>tqH;uwX>",@"'k;pJbl;< bs;pJ",@"xD.('k;w>)< 'k;xD'g< 'k;w>",@"rRuG>< rRuG>uG>< *kmusJ;pX;rRw>",@"1I xD. 2I 'due.w>< ue.Ckm",@"'X;w'dvm< 'X;vXtzDcd.uwX>wuxX",@"w>ymol.ymo;",@"xk;e‹>(ySRo;)< &J>e‹>w>",@"uG>*hR< vXtxk;M> (ySRo;)< vXt&J>M>w>",@"wuDRuGJRo.< wuDRo.",@"w>qgyS›RwRw>",@"vXye>[loh",@"ursX>vXt'due.w>< rl;ursX>",@"rk>*>",@"ySRuGJ;vHm",@"w>e‹>pde‹>urDR< ySRM>pdM>urDR",@"'.w>< w>wrHRrHRvXt[l;0;'.w>",
                    
                    @"pJ;xk;xD.ph< th.xH>tJ. (rf) ",@"eD>up>w>yXvDRo;< w>yXvDRo;< w>pH.nD.yXvDRo;'.0J",@"w>*d>xD.oDuwD> (w>ud>cg'D;w>*d>cgtbX.pXRw>uwD>)",@"vXw>rRe‹>tDRoh",@"usJvXttd.'D;oh.xl.zdcHuyRvXm",@"w>xd.Cl",@"1I w'DCmw> 2I 'k;CmuyRuGHmw>",@"o;vDw>'d.'d.rk>rk>",@"[;qSJ;< y'h.",@"td.cd;vDRtcd.< td.cd;uG>v>",@"zk;oHeD.xD.",@"w>[h.vRuyDR < [h.vR[h.uyDR< [h.cd.z;",@"vXtoh.ngb.< vXtoh.ng",@"([;)qlb;< ([;)qlC.CXR",@"w*hRb.",@"vXtwb.vD>b.p;",@"x;vlbd",@"uGg",@"[D.cd.usH.",@"y.bd ̃ 0.&d",
                    
                    @"zdo.tD.Ek>",@"zdo.w>Ek>xHud< zdo.w>Ek>xHyvD",@"uG>xGJzdo.",@"zd.o.cGg< ySRzd.o.cGg",@"vXvD>cH < (ysd>< csXCH)",@"ysd>qg< csXCHqg",@"ysd>CH",@"1I w>vXtrRwh>vHto;< w>vXtrRto;vXySRtcd.tCXR 2I w>vXttd.zsgvXtcsXwcD 3I w>uvk> rhwrh> w>'hvXee>[lw>tvD>cH",@"bDzs;< eD.zs;",@"1I rRpXR (vDRqD'.w>wd>ph) 2I w>'hw>tlwcgvXtrRrkmw>uvk>                  3I w>uH;nmq;us;",@"w>[JuhRb.u'guhR",@"w>rRvXtd.wh>tbsJ.tpJ>< w>rRvXrRw0HR",@"1I w>rRpXR 2I w>ulqJw>*h>w>usdRt&h'd.vXcD.zFLxX.tylR",@"qlvD>cH<u'guhRqlcH",@"xd;n.ChubsH;",@"w>qgtC>< bJ;xH&H,gI t'd< w>vlbSD;w>qgtC>",@"1I tX 2I e; 3I w*hRb.I",@"w>yeD.",@"zsH",@"w>'dqDql.",@"rRobH.bk.wHmrkmwHmwmw>",@"xX.",@"w>bd.w>pSXR",@"vXtusD< vXtwCH;b.",@"b; (uFD.wJ.ph)",@"w>[h.tk.uDR",@"y;xD.uGHmxH< bsX.xD.uGHmxH< 0J;xD.uGHmxH",@"wcGJq.< w>tq.vXy'd;w>zdw>vHRu[JtD.tDRt*D>",@"uk>w>< bXw>",@"ySRuk>ud.",@"qD.'.< uoH.rRuzDud.",@"1I pDRyD>< pDR,GJR 2I php&DtylRphtd.wh>uXR(w>)",
                    
                    @"'X;uok.< vD>uok.< w>tvD>vXytd.uok.t*D>zJ [H.tcsXwpJ;zd",@"vhR< usd< cd.vhR",@"w>tzsX.< w>zsX.ovX.",@"w>*JRuvH. (bJvh)",@"w>tluzd",@"1I p;cduhvXySRxXEkmvXw>zD.w>z;t*D>< w>z;vHmuh< 2I w>zD.w>z;tusJvXw>olp;cduh",@"uoH.zSL",@"0.",@"}wDw>< }wDCm",@"vXtwvDRo;pJ< vXtwvDRol.yd>o;0;",@"wuGHo.",@"1I ySRtu±l> t'd< w>bs.u±l> 2I w>oHusHu±l> 3I w>tuGDR< w>tbd t'd< &XRbX.wbdI",@",.ys›bH",@"wrsm",@"w>vXtrR[;*DRw>< w>vXtrRwwX>wegw>",@"'dw>< wD>w>< rRoD.w>vXpkql.ql.(w>toD.ql.ql.)",@"xHzSH.",@"[DxD.uGHm< pH.nD.[DxD.uGHmvXxHuD>",@"CDtpkzD.",@"phwX;< ph&d.zD",@"v.w,>< eD.w,>",@"w>tD.trl;z;'d.",@"csX.",@"'d;bsXxH",@"1I w>qgoH;tvD> ̃ w>tDoH;tvD> 2I tbd< tusD. t'd< x;wusD.",@"vDR*mySR&X>ySRpX>< b.C;'D;ySRrHRpuk.zd",@"x;u.w>n.(u.w>n.)",@"ysHRx;q+.",@"ySRwHmcd.ql.< ySRwHmcd.",@"1I bh.qh 2I td.vhRu'd",@"vdmw>tyS›R",@"w>tyS›RqH;",
                    
                    @"1I ok;ql.ql.udRudR< b.xH;ql.ql.udRudR< EkmvDRrRwHmwm w>zJySRwJw>tcg(csHutdz;'d.)",@"oh.bh.< oh.zH;(rDR)",@"bkrk,DR",@"-uD>< bkzD",@"b.&d.rH.xX. (w>xd.uvHR tw>qD.oeH;yD;vD)",@"'X;z;xD< ySRok;zdtd.t'X;z;xD",@"1I usdyDR 2I xH'Xz;'d.",@"vXtwtd.'D;txk;tpD< ([D.cd.)vXw>ol.w>rJw>rg w[JxD.tvD>",@"w>vXt}wDCmw> ̃ w>t'l.vXt}wDwHmwmw>< w>'DwH>Cmw>",@"vh.qD.zd",@"ySRvXuwJmuwDRoH; rhwrh> w>tDvXw>tD.us; rhwrh> oH;us;wz.",@"vX>olC;vX[JuJxD.cDzsdupX>rh.tltxHck.vDRuhR< upX>rh.th.ol",@"1I w>tcH';< w>tcD.xH; 2I w>vD>w>usJvXw>ol. xD.tDR'fok;tvD>tusJ",@"'X;[D.vm",@"'J< ySD>ql.ql.ud>ud>",@"vXtrJmqS;oh< vXtymrJmymegwohb.",@"vXtb.C;'D;w>tcD.xH;< *H>cD.xH;< b.xGJb.C;'D;w> tcd.oh.xH;(w>*h>cD.xH;)",@"1I ovX< w>ylRw>vD>vXybsX.xH< w>vXyohw> vXtylR",@"w>tcD.xH;cD.bd",@"em< uk< pJm(ySR'XekmbktgtgvXtylR)< qDok;< ouGD.-wR< CR< wX",@"zsX.oG‹",@"ySR'XbXzd",@"1I bsg 2I eD.yR< w>tbdvXy'dvdmuGJzsX.yR",@"w>vXyymtDRwylRCD< wzkI wu%l>< w'l.t'd< [J[H;M>w>tD.wzk0HRwzkwuh>",@"w>vk.xHusD;",@"vk.xH",@"vk.xH'X;",@"eD.0H>xg",@"ok;&h.",
                    
                    @"uvJ;< ud.url.txHyHmyHmvXywhud.t*D>",@"wD>0HRwD>uhRw>",@"vDq.'X< vDth.",@"w>'k;w>,R",@"ubD'k;ok;",@"yD.}wDR< xHuh.usDRz;vJ>vXyD.vJ.tylR",@"bD'D< usdte;",@"zFg< w>qgw>yS›RtvD>",@"1I td. 2I rh>",@"yD.vJ.eHRrJ;ysD< yD.vJ.eHR<[JuhRpdmw>vXxHusgqlyD.vJ.uX>eHR< w>vXtd.vXyD.vJ.ylR'D;[JxD.qluX>eHR",@"zJzsX.< zJo.zsX.",@"xd.edm",@"1I w>wD< [H.tw>wDbdz;'d.< usdRz;'d. 2I w>qJ;ujyK>xD.",@"wbh< wbhcsH< yxd;tuvkmuvkm",@"obhrJ< obhz;< obhpd;yh>",@"wRol",@"1I 0H< pdm< yk< ,d; 2I wl>w>",@"c.ql.",@"1I w>td.w>qd;< ouJmy0;                    2I w>vXtb.C;< w>b.xGJvdmo; 3I w>vD> (vXewkRzJeusJur.tcg)< w>vD> (rlxH;)",@"1I q.zduD>zdttX ̃ w>rHRvmtXoD                    2I ySRvXtvDRysHR< ySRrRtXw>zd",@"1I rReXRrRC. 2I wD>< 'd< vR< ySD>< ydm 3I rRuvJ< rRusJusD t'd< rRuvJqD'H.",@"1I CHvR 'd.w>*hR 2I vXtrkm",@"w>CHw>vR",@"tCd ̃ t*h>'ftHR< rh>vX==tCd",@"uJxD.< uJxD.to;< vd.xD.",@"vD>rH< vD>rHc;",@"CDR (w>zdC>wuvkm)",@"vX>cH'g",@"vD>rH'X;",@"vD>rH'g< vD>zl'g",@"uGJ< ueJ",@"*DRzH;n.< usD>n.",@"ueJ'X< uGJ'X",
                    
                    @"bH,X.< oH;vXtp>wuvkm",@"pGHR ̃ usL;< CJC>",@"-uX;'D;",@"vXng< vXtrJmng< qd< ympXR< wcsK;",@"1I Chun;< ouGHmun; 2I ChtD.w>",@"ySRChtD.w>zd",@"p;xD.",@"w>p;xD.w>< w>rRoDw>",@"ymo;< 'Dol.ymo;< rRto;",@"w>ymol.ymo;< w>'Dol.ymo;",@"1I vXvD>cH< vXtcsX 2I (td.wh>)vXcH",@"w>vXttd.rltd.*JR",@"vXtpJRcHuJmqd;",@"bSd;ud>(w>bSd;ud>)",@"w>em< w>pl>w>em",@"em< pl>w>emw>",@"'XvGJ< qhv",@"[XzX",@"1I b.C;'D;< rh>tw>< b.C;'D;w>tu&Xt'd< t0Jb.C;'D;o;p>u&X 2I td.vXtvD>tusJ",@"w>zdw>vHR (b.C;'D;ySRw*R)",@"vXtzDvm",@",D>wud; ̃ ,D>'huH>",@"c;xD< vD>qh.eDRxD",@"1I uh.vDR< ouGHR 2I rRuh.< rRouGHRvDR 3I qk;vDR<ydmvDR(uh.< uh.usDR)",@"vXtzDvm",@"w>tbsK;(rRe‹>tbsK;)",@"th.vdmql.ql.< u'l;w>ql.ql.",@"w>qgubk< w>qgubX",@"bJ.&H.o.< w>to.vXtcsH'D;txHtd.tg",@"1I ubDtvD>wu0DRzJubDoM 2I vD>rHvXubDrhwrh> vh.rh.tltylR",@"vXtuyR< vXtCXR",@"vXM.trJmng< tcd.wvdm",@"u0DRCm ('k.'gtd.w>tvD>)",@"t*hRuwX>",@"cGgvR< wv;rl;ydmcGgtoud;                    16",nil];
    
    
    self.searchResults = [[NSArray alloc] init];
    
    
}

-(NSInteger) numberOfSectionInTableView:(UITableView *)tableview
{
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [self.searchResults count];
        
    } else
    {
        return [titleArray count];
        return [tenseArray count];
        return [subtitleArray count];
     
        
    }
    
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellidentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier forIndexPath:indexPath];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellidentifier];
    }
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell.textLabel.text = [self.searchResults objectAtIndex:indexPath.row];
        
    } else
    {
        cell.textLabel.text = [titleArray objectAtIndex:indexPath.row];
        cell.detailTextLabel.text = [tenseArray objectAtIndex:indexPath.row];
        cell.detailTextLabel.text = [subtitleArray objectAtIndex:indexPath.row];
        
        
    }
    
    
    
    return cell;
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    if ([segue.identifier isEqualToString:@"detailSegue"])
    {
        NSIndexPath *indexpath = nil;
        NSString    *titlestring = nil;
        NSString    *tensestring = nil;
        NSString    *subtitlestring =nil;

        
        indexpath = [mytableview indexPathForSelectedRow];
        titlestring = [titleArray objectAtIndex:indexpath.row];
        tensestring = [tenseArray objectAtIndex:indexpath.row];
        subtitlestring = [subtitleArray objectAtIndex: indexpath.row];
    
        
        [[segue destinationViewController] setTitlecontents:titlestring];
        [[segue destinationViewController] setTensecontents:tensestring];
        [[segue destinationViewController] setSubtitlecontents:subtitlestring];
  

        
    }
}

#pragma Search Methods

- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF beginswith[c] %@", searchText];
    //NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"contains[c] %@", searchText];
    self.searchResults = [self.array filteredArrayUsingPredicate:predicate];
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}

-(IBAction)goToSearch:(id)sender
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
