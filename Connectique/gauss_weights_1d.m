  function w = gauss_weights_1d(n)
%
%  function w = gauss_weights(n);
%
%  For 1 <= n <= 20, returns the weights W of an
%  n point Gauss-Legendre quadrature rule over the interval [-1,1].
%
  w = ones(1,n); 

  if ( n == 1 ) 
    w(1) = 2.0;
  elseif ( n == 2 )
    w(1) =  1.0; 
    w(2) =  w(1);
  elseif ( n == 3 )
    w(1) =  0.5555555555555555555555555555565;
    w(2) =  0.8888888888888888888888888888889;
    w(3) =  0.5555555555555555555555555555565;
  elseif ( n == 4 )
    w(1) = 0.347854845137453857373063949222;
    w(2) = 0.652145154862546142626936050778;
    w(3) = 0.652145154862546142626936050778;
    w(4) = 0.347854845137453857373063949222;
  elseif ( n == 5 )
    w(1) = 0.236926885056189087514264040720;
    w(2) = 0.478628670499366468041291514836;
    w(3) = 0.568888888888888888888888888889;
    w(4) = 0.478628670499366468041291514836;
    w(5) = 0.236926885056189087514264040720;
  elseif ( n == 6 ) 
    w(1) = 0.171324492379170345040296142173;
    w(2) = 0.360761573048138607569833513838;
    w(3) = 0.467913934572691047389870343990;
    w(4) = 0.467913934572691047389870343990;
    w(5) = 0.360761573048138607569833513838;
    w(6) = 0.171324492379170345040296142173;
  elseif ( n == 7 ) 
    w(1) = 0.129484966168869693270611432679;
    w(2) = 0.279705391489276667901467771424;
    w(3) = 0.381830050505118944950369775489;
    w(4) = 0.417959183673469387755102040816;
    w(5) = 0.381830050505118944950369775489;
    w(6) = 0.279705391489276667901467771424;
    w(7) = 0.129484966168869693270611432679;
  elseif ( n == 8 )
    w(1) = 0.101228536290376259152531354310;
    w(2) = 0.222381034453374470544355994426;
    w(3) = 0.313706645877887287337962201987;
    w(4) = 0.362683783378361982965150449277;
    w(5) = 0.362683783378361982965150449277;
    w(6) = 0.313706645877887287337962201987;
    w(7) = 0.222381034453374470544355994426;
    w(8) = 0.101228536290376259152531354310;
  elseif ( n == 9 )
    w(1) = 0.0812743883615744119718921581105;
    w(2) = 0.180648160694857404058472031243;
    w(3) = 0.260610696402935462318742869419;
    w(4) = 0.312347077040002840068630406584;
    w(5) = 0.330239355001259763164525069287;
    w(6) = 0.312347077040002840068630406584;
    w(7) = 0.260610696402935462318742869419;
    w(8) = 0.180648160694857404058472031243;
    w(9) = 0.0812743883615744119718921581105;
  elseif ( n == 10 )
    w(1) =  0.0666713443086881375935688098933;
    w(2) =  0.149451349150580593145776339658;
    w(3) =  0.219086362515982043995534934228;
    w(4) =  0.269266719309996355091226921569;
    w(5) =  0.295524224714752870173892994651;
    w(6) =  0.295524224714752870173892994651;
    w(7) =  0.269266719309996355091226921569;
    w(8) =  0.219086362515982043995534934228;
    w(9) =  0.149451349150580593145776339658;
    w(10) = 0.0666713443086881375935688098933;
  elseif ( n == 11 )
    w(1)= 0.0556685671161736664827537204425;
    w(2)= 0.125580369464904624634694299224;
    w(3)= 0.186290210927734251426097641432;
    w(4)= 0.233193764591990479918523704843;
    w(5)= 0.262804544510246662180688869891;
    w(6)= 0.272925086777900630714483528336;
    w(7)= 0.262804544510246662180688869891;
    w(8)= 0.233193764591990479918523704843;
    w(9)= 0.186290210927734251426097641432;
    w(10)= 0.125580369464904624634694299224;
    w(11)= 0.0556685671161736664827537204425;
  elseif ( n == 12 )
    w(1)= 0.0471753363865118271946159614850;
    w(2)= 0.106939325995318430960254718194;
    w(3)= 0.160078328543346226334652529543;
    w(4)= 0.203167426723065921749064455810;
    w(5)= 0.233492536538354808760849898925;
    w(6)= 0.249147045813402785000562436043;
    w(7)= 0.249147045813402785000562436043;
    w(8)= 0.233492536538354808760849898925;
    w(9)= 0.203167426723065921749064455810;
    w(10)= 0.160078328543346226334652529543;
    w(11)= 0.106939325995318430960254718194;
    w(12)= 0.0471753363865118271946159614850;
  elseif ( n == 13 )
    w(1)= 0.0404840047653158795200215922010;
    w(2)= 0.0921214998377284479144217759538;
    w(3)= 0.138873510219787238463601776869;
    w(4)= 0.178145980761945738280046691996;
    w(5)= 0.207816047536888502312523219306;
    w(6)= 0.226283180262897238412090186040;
    w(7)= 0.232551553230873910194589515269;
    w(8)= 0.226283180262897238412090186040;
    w(9)= 0.207816047536888502312523219306;
    w(10)= 0.178145980761945738280046691996;
    w(11)= 0.138873510219787238463601776869;
    w(12)= 0.0921214998377284479144217759538;
    w(13)= 0.0404840047653158795200215922010;
  elseif ( n == 14 )
    w(1)= 0.0351194603317518630318328761382;
    w(2)= 0.0801580871597602098056332770629;
    w(3)= 0.121518570687903184689414809072;
    w(4)= 0.157203167158193534569601938624;
    w(5)= 0.185538397477937813741716590125;
    w(6)= 0.205198463721295603965924065661;
    w(7)= 0.215263853463157790195876443316;
    w(8)= 0.215263853463157790195876443316;
    w(9)= 0.205198463721295603965924065661;
    w(10)= 0.185538397477937813741716590125;
    w(11)= 0.157203167158193534569601938624;
    w(12)= 0.121518570687903184689414809072;
    w(13)= 0.0801580871597602098056332770629;
    w(14)= 0.0351194603317518630318328761382;
  elseif ( n == 15 )
    w(1)= 0.0307532419961172683546283935772;
    w(2)= 0.0703660474881081247092674164507;
    w(3)= 0.107159220467171935011869546686;
    w(4)= 0.139570677926154314447804794511;
    w(5)= 0.166269205816993933553200860481;
    w(6)= 0.186161000015562211026800561866;
    w(7)= 0.198431485327111576456118326444;
    w(8)= 0.202578241925561272880620199968;
    w(9)= 0.198431485327111576456118326444;
    w(10)= 0.186161000015562211026800561866;
    w(11)= 0.166269205816993933553200860481;
    w(12)= 0.139570677926154314447804794511;
    w(13)= 0.107159220467171935011869546686;
    w(14)= 0.0703660474881081247092674164507;
    w(15)= 0.0307532419961172683546283935772;
  elseif ( n == 16 )
    w(1)= 0.0271524594117540948517805724560;
    w(2)= 0.0622535239386478928628438369944;
    w(3)= 0.0951585116824927848099251076022;
    w(4)= 0.124628971255533872052476282192;
    w(5)= 0.149595988816576732081501730547;
    w(6)= 0.169156519395002538189312079030;
    w(7)= 0.182603415044923588866763667969;
    w(8)= 0.189450610455068496285396723208;
    w(9)= 0.189450610455068496285396723208;
    w(10)= 0.182603415044923588866763667969;
    w(11)= 0.169156519395002538189312079030;
    w(12)= 0.149595988816576732081501730547;
    w(13)= 0.124628971255533872052476282192;
    w(14)= 0.0951585116824927848099251076022;
    w(15)= 0.0622535239386478928628438369944;
    w(16)= 0.0271524594117540948517805724560;
  elseif ( n == 17 )
    w(1)= 0.0241483028685479319601100262876;
    w(2)= 0.0554595293739872011294401653582;
    w(3)= 0.0850361483171791808835353701911;
    w(4)= 0.111883847193403971094788385626;
    w(5)= 0.135136368468525473286319981702;
    w(6)= 0.154045761076810288081431594802;
    w(7)= 0.168004102156450044509970663788;
    w(8)= 0.176562705366992646325270990113;
    w(9)= 0.179446470356206525458265644262;
    w(10)= 0.176562705366992646325270990113;
    w(11)= 0.168004102156450044509970663788;
    w(12)= 0.154045761076810288081431594802;
    w(13)= 0.135136368468525473286319981702;
    w(14)= 0.111883847193403971094788385626;
    w(15)= 0.0850361483171791808835353701911;
    w(16)= 0.0554595293739872011294401653582;
    w(17)= 0.0241483028685479319601100262876;
  elseif ( n == 18 )
    w(1)= 0.0216160135264833103133427102665;
    w(2)= 0.0497145488949697964533349462026;
    w(3)= 0.0764257302548890565291296776166;
    w(4)= 0.100942044106287165562813984925;
    w(5)= 0.122555206711478460184519126800;
    w(6)= 0.140642914670650651204731303752;
    w(7)= 0.154684675126265244925418003836;
    w(8)= 0.164276483745832722986053776466;
    w(9)= 0.169142382963143591840656470135;
    w(10)= 0.169142382963143591840656470135;
    w(11)= 0.164276483745832722986053776466;
    w(12)= 0.154684675126265244925418003836;
    w(13)= 0.140642914670650651204731303752;
    w(14)= 0.122555206711478460184519126800;
    w(15)= 0.100942044106287165562813984925;
    w(16)= 0.0764257302548890565291296776166;
    w(17)= 0.0497145488949697964533349462026;
    w(18)= 0.0216160135264833103133427102665;
  elseif ( n == 19 )
    w(1)= 0.0194617882297264770363120414644;
    w(2)= 0.0448142267656996003328381574020;
    w(3)= 0.0690445427376412265807082580060;
    w(4)= 0.0914900216224499994644620941238;
    w(5)= 0.111566645547333994716023901682;
    w(6)= 0.128753962539336227675515784857;
    w(7)= 0.142606702173606611775746109442;
    w(8)= 0.152766042065859666778855400898;
    w(9)= 0.158968843393954347649956439465;
    w(10)= 0.161054449848783695979163625321;
    w(11)= 0.158968843393954347649956439465;
    w(12)= 0.152766042065859666778855400898;
    w(13)= 0.142606702173606611775746109442;
    w(14)= 0.128753962539336227675515784857;
    w(15)= 0.111566645547333994716023901682;
    w(16)= 0.0914900216224499994644620941238;
    w(17)= 0.0690445427376412265807082580060;
    w(18)= 0.0448142267656996003328381574020;
    w(19)= 0.0194617882297264770363120414644;
  elseif ( n == 20 )
    w(1)= 0.0176140071391521183118619623519;
    w(2)= 0.0406014298003869413310399522749;
    w(3)= 0.0626720483341090635695065351870;
    w(4)= 0.0832767415767047487247581432220;
    w(5)= 0.101930119817240435036750135480;
    w(6)= 0.118194531961518417312377377711;
    w(7)= 0.131688638449176626898494499748;
    w(8)= 0.142096109318382051329298325067;
    w(9)= 0.149172986472603746787828737002;
    w(10)= 0.152753387130725850698084331955;
    w(11)= 0.152753387130725850698084331955;
    w(12)= 0.149172986472603746787828737002;
    w(13)= 0.142096109318382051329298325067;
    w(14)= 0.131688638449176626898494499748;
    w(15)= 0.118194531961518417312377377711;
    w(16)= 0.101930119817240435036750135480;
    w(17)= 0.0832767415767047487247581432220;
    w(18)= 0.0626720483341090635695065351870;
    w(19)= 0.0406014298003869413310399522749;
    w(20)= 0.0176140071391521183118619623519;
  else
    error('GAUSS_WEIGHTS - Fatal error! Illegal value of n.')
  end
