import 'package:flutter/material.dart';
import 'Maladie.dart';
import 'MenuApp.dart';

class ContentApp extends StatefulWidget {
  const ContentApp({super.key});
  @override
  State<ContentApp> createState() => _ContentApp();
}

class _ContentApp extends State<ContentApp> {
  final List<String> listTitle = [
    'Abdomen aigü chirurgical',
    'Accident vasculaire cérébral',
    'Agitation',
    'Angine érythémateuse et érythématopultacée',
    'Asthme',
    'Bilharziose',
    'Classification des antalgiques',
    'Colique hépatique',
    'Colique nephretique',
    'Conjonctivites',
    'Convulsion fébrile de l’enfant',
    'Diabète de type 2',
    'Eclampsie',
    'Eczéma',
    'Etats de choc',
    'Ethylisme aigue',
    'Fièvre typhoïde',
    'Gale',
    'Gastro-entérite de l’enfant',
    'Goitre',
    'Goutte',
    'Grippe',
    'Hémorragie digestive haute',
    'Hémorragie méningée',
    'Hépatite virale aigue',
    'Hypertension artérielle',
    'Ictère néonatale',
    'Infarctus du myocarde',
    'Infection cutanée bactérienne',
    'Infection génitale de la femme',
    'Infection urinaire masculine',
    'Insuffisance cardiaque',
    'Insuffisance rénale chronique',
    'Lombosciatique aigue commune',
    'Migraine',
    'Neurocysticercose',
    'Oreillon',
    'Otite moyenne aigue de l’enfant',
    'Paludisme',
    'Pancréatite aigue',
    'Peste',
    'Prédiabète',
    'Psoriasis',
    'Rage',
    'Rhumatisme articulaire aigue',
    'Sinusite aigue de l’adulte',
    'Syphilis',
    'Tetanos',
    'Tuberculose pulmonaire',
    'Ulcère gastroduodénale',
    'Varicelle',
  ];

  List<String> test = [
    'Défense généralisée ou localisée, douleur +++, arrêt des gaz et des matières, vomissement, distension abdominale, signes de choc (tachycardie, hypotension, transpiration, confusion)\nA HOSPITALISER.Antalgiques éventuellement mais peuvent masquer le diagnostic.',
    'Déficit neurologique qui s’installe brutalement et qui a tendance à récupérer par la suite :\n- faiblesse ou engourdissement de la face, du bras ou de la jambe ou la moitié du corps \n- diminution ou perte de vision uni ou bilatérale ;\n- difficulté de langage ou de la compréhension ;\n- trouble de l’équilibre ou de la marche, chutes inexpliquées,\nPrendre tous les paramètres initiaux, les noter dans le courrier de référence avec les premiers signes\nd’examen neurologique\nA HOSPITALISER dans les plus brefs délais\nNe pas faire baisser la TA rapidement. Eviter les injections de furosémide sauf OAP car pouvant aggraver\nles lésions',
    'Toujours rechercher une cause organique ou toxique en prenant tous les paramètres dont une fièvre, un examen physique complet.\n N’oublier pas de vérifier une constipation avec fécalome chez les sujets âgés.\nAvis d’un psychiatre éventuellement.\nBenzodiazepine (diazépam, lorazépam, oxazépam, …) si sevrage éthylique ou intoxication aux psychostimulants\nNeuroleptiques atypiques (olanzapine, aripiprazole, rispédone) si étiologie psychiatrique ou inconnue\nTraitement étiologique si la cause est somatique (HTIC, infectieuses, hypoglycémie, hypoxie,hyponatrémie, SCA, Abdomen aigu, …)',
    'Avant 3 ans : angine présumée virale. Traitement symptomatique\nAprès 3ans et adulte : TDR Streptocoque bêta-hémolytique du groupe A si disponible.\nAmoxicilline 50mg/kg/jr en 2 prises chez l’enfant,2g/jr en 2 prises chez l’adulte, pendant 6 jours\nEn cas d’allergie : azithromycine, clarithromycine, josamycine',
    'Traitement de la crise :\nBêta-2 agoniste d’action brève en inhalation (salbutamol)\nSi nécessaire, corticoïde per os et éventuellement oxygénothérapie.\nPas d’antitussif ni expectorant.\nTraitement de fond :\n-Palier 1 : pas de traitement de fond\n-Palier 2 : corticoïde inhalé dose faible\n-Palier 3 : corticoïde inhalé dose faible + Bêta-2 agoniste d’action prolongé\n-Palier 4 : corticoïde inhalé dose moyenne ou forte + Bêta-2 agoniste d’action prolongé\n-Palier 5 : traitement du palier 4 + omalizumab ou corticoïde per os',
    'Bilharziose intestinale ou urinaire\nExamen des selles (KAOP après méthode de concentration) ou mieux biopsie rectale et examen des urines\nLa sérologie est d’interprétation difficile en zone d’endémie car témoin de contact mais pas forcément de maladie active Praziquantel 40mg/kg en une ou deux prises x 1j\nET éventuellement un 2e traitement après quelques semaines\nBilharziose du système nerveux central\nA Madagascar, la bilharziose ne monte pas dans le cerveau (uniquement Shistosoma japonicum), la bilharziose medullaire est possible\nEviter la demande de sérologie pour des symptômes encéphaliques\nDevant les arguments cliniques de pathologie médullaire, hospitaliser rapidement le patient pour orienter le diagnostic et la prise charge.',
    'Non opiacés :\n-Paracétamol, Aspirine et autres AINS, Néfopam\nOpiacés :\n\tOpiacés faibles : Codéine, tramadol\n\tOpiacés forts (ordonnance à souche): Morphine, buprénorphine, nalbuphine, péthidine, fentanyl,hydromorphone, oxycodone',
    'Le traitement de la douleur en urgence par voie parentérale :\n antispasmodiques (phloroglucinol ou trimébutine), des antalgiques et des antiinflammatoires en l’absence de contre-indication.\n-Cholécystectomie afin d’éviter une récidive ou une complication.',
    '- AINS parentéral : Ketoprofène mg en IM si CI : Morphine 1 amp de 10 mg en SC.\n- Restriction hydrique\n- Tamiser l’urine pour analyse\nPoursuivre par kétoprofène suppo ou per os etantispamodique simple\n- Explorations : échographie des voies urinaires, Rx ASP, ECBU)\nConsultation spécialisée d’un urologue.',
    'Conjonctivite Virale\nLavage fréquent au sérum physiologique.\nATTN. Le virus de l\'herpès étant responsable d\'une atteinte de la cornée (kératite) et pas seulement de la conjonctive, le traitement de l\'herpès consiste à prendre des médicaments antiviraux par voie orale età appliquer une pommade ophtalmique antivirale (contenant de l\'aciclovir par exemple).\n\nConjonctivite Bactérienne\nLavages oculaires fréquents au sérum physiologique et un antiseptique.\nRecours à un traitement antibiotique local (acide fusidique, tobramycine, rifamycine, etc) si formes graves avec :\nUne photophobie (gêne à la lumière) ;\nUn œdème de l\'œil et des paupières ;\nDes sécrétions purulentes importantes.\nÉviter la corticothérapie en l\'absence d\'une exploration de la cornée.',
    'Diazépam intra-rectal 0,5mg/kg à renouveler une fois après 5 à 10 min. Si persistance de la crsie, sansdépasser 10mg (une ampoule)\nAntipyrétiques\nBilan étiologique\nConvulsion fébrile simple : pas de traitement préventif en continue sauf en cas de récidive fréquente\nConvulsion fébrile complexe : valproate de sodium 30mg/kg/j en 2 ou 3 prises.',
    'A jeun ≥ 1,26g/l ou 7mmol/L\nPostprandial de 2h ou quelle que soit l’heure ≥ 2g/l ou 11mmol/L Ou HbA1c ≥ 6,5%\nRecherche des atteintes d’organes cibles du diabète (yeux, reins, cœur troncs supra-aortiques et AOMI)\n\t-Diététique\n\t-Activité physique\n\t-Arrêt tabac +++\n\t-Metformine : diabète de type 2 non compliqué surtout en cas de surpoids.\n\t-En cas de contre-indication ou d’intolérance : sulfamides hypoglycémiants ou glinides.\n\t-Passage à l’insulinothérapie si amaigrissement, asthénie, cétonurie, polyurie-polydipsie, glycémie > 3g/lmalgré RHD et traitement par ADO bien observés et à dose maximale, IDM, IR\n\t-Bilan paraclinique (biologique, FO, …) de suivi\n\t-Prise en charge des autres facteurs de risque\n\t-Education du diabétique ++++\n\t-Avis d’un spécialiste pour les modalités de l’insulinothérapie.\n\t-Bilan annuel (rénal, fond d’œil, ECG, Podologie, bucco-dentaire)',
    'Pré-éclampsie : HTA d\'apparition récente avec une protéinurie survenant après 20 semaines d\'aménorrhée.\nEclampsie : crises comitiales généralisées survenant au cours d\'une pré-éclampsie.\nSulfate de Mg IV et accouchement à terme',
    '- Traitement local de l’eczéma de contact : dermocorticoïdes de classe III (bétaméthasone ou  hydrocortisone butyrate)\nCrème pour les plis et les lésions suintantes\nPommades pour les lésions sèches ou squameuses\nExclusion définitive de l’allergène\nSi impétigénisation : chlorexidine pour nettoyer',
    'Urgence vitale\nSigne de choc (hypovolémique ou séptique ...) : POSTE (PPOOSTTTE : Pâleur, Pouls filant, Oligurie,\nObnubilation, Sueurs, Tachycardie, Tension artérielle pincée, Temos de recoloration cutanée > 3s,Extrémités marbrées)\nMesures symptomatiques (oxygénation, remplissage vasculaire, drogues vaso-actives ou inotropes positives (Adrénaline)) ;\nTraitement étiologique : cardiogénique, septique, hémorragique, anaphylactique\nDans le choc septique : Le plus souvent, un aminoside associé à une béta-lactamine ou à une céphalosporine.',
    'Ivresse pathologique : traiter une hypoglycémie éventuelle, surveillance +++ (conscience, respiration,signe de localisation), diazépam 1 amp. De 10 mg en cas d’agitation\nComa éthylique : hospitalisation\nSyndrome de sévrage alcoolique. Hydratation VO ou parentérale (2l/j au moins), Vit B1 B6 PP, Diazépam ou Oxazépam.\nPas de sédatifs en cas de cirrhose',
    'Hémoculture, coproculture et uroculture\nLa sérologie n’est pas fiable\nCeftriaxone 1 g IM ou IV q 12 h (25 à 37,5 mg/kg chez les enfants) pendant 14 jours\nOu ciprofloxacine 500 mg PO pendant 10 à 14 jours, ou lévofloxacine 500 mg PO ou IV 1 fois/jour pendant 14 jours, ou moxifloxacine 400 mg po ou IV 1 fois/jour pendant 14 jours\nOu azithromycine 1 g PO à j1, puis 500 mg 1 fois/jour pendant 6 jours',
    'En traitement local\nBenzoate de benzyle\nEsdépallethrine (CI en cas d’asthme ou de bronchite asthmatiforme, de grossesse)\nEn per os : Ivermectine en une prise unique à 200µg/kg\nTraitement de l’entourage et de l’environnement (vêtements, draps, serviettes, …)',
    'Déshydratation > 8% - Hospitalisation pour une réhydratation IV< 8% - SRO. Si l’apport oral n’est pas réalisable : Sonde nasogastrique.\nSuspecter une origine bactérienne devant une fièvre élevée\nPas de médicament à base d’argile chez l’enfant de moins de deux ans (Diosmectite).',
    'Dosage TSH et échographie\nConsultation spécialisée',
    'Accès aigu :\nColchicine cp 1mg\n1-1-1 les 2 premiers jours\n1-0-1 3eme et 4eme jour\nPuis 1 cp par jour.\nOu COLCHIMAX® (même posologie pour limiter l’apparition de diarrhée)\nLes AINS sont aussi efficaces\nBoissons abondantes, repos\nTraitement de fond :\n- Régime pauvre en purines\n- Hypo-uricémiants (Allopurinol ou Fébuxostat)\nInformation du patient sur le traitement « à vie » si non amélioré par un changement de comportement alimentaire (respect du régime hypouricémiant)\n- Régime pauvre en purines, arrêt de la consommation alcool,\nPrise en charge des autres facteurs du Syndrome métabolique éventuel associé',
    'Traitement symptomatique : Aspirine, Paracétamol, AINS\nDécongestionnant nasal (précautions chez les HTA) / DRP avec SSI si rhinite\nPas d’antibiotique\nPréventif : vaccination chez les sujets à risque\nHygiène : lavage fréquent des mains, mouchage régulier, usage de mouchoirs à usage unique, éviter de\ncracher dans l’environnement, tousser et/ou éternuer dans le creux du coude, …\nEVITER DE CONTAMINER L’ENVIRONNEMENT ET LES AUTRES',
    'Signes cliniques d’hypovolémie : tachycardie, hypotension, marbrures, polypnée, cyanose des extrémités, augmentation du temps de recoloration cutanée.\nTaux d’hémoglobine, hématocrite, groupage sanguin\nToujours hospitaliser (poser une ou deux voies veineuses : décubitus latéral, tête basse, soluté macromoléculaire pour expansion volémique)',
    '\nHémorragie méningée\n- céphalée sévère, brutale sans cause apparente, sans tendance à la rémission habituellement chez un sujet jeune\nA hospitaliser rapidement et réalisation d’imagerie dans le plus bref délai => avis neurologue d’abord puis neurochirurgical secondairement',
    '\nRecherches sérologiques :\n-Hépatite A : IgM anti-VHA\n-Hépatite B : Ag HBs et IgM anti-HBc\n-Hépatite C : Ac anti-VHC (négatif en phase aigue)\n-Hépatite E : IgM anti-VHE\nPas de traitement spécifique\nArrêt de tous les médicaments non-indispensables\nArrêt de toute boisson alcoolisée\nHydratation +++\nDéconseiller les tisanes traditionnelles',
    'Le traitement doit être précédé obligatoirement\n- d’une recherche d’atteinte d’organe cible (AOC) et\n- d’une stratification des risques\nLa connaissance du profil particulier du patient permet de personnaliser le choix thérapeutique qui peut ne pas être médicamenteux dans un premier temps (HTA ≤ Grade I, risque surajouté faible) mais uniquement des mesures hygiéno-diététiques.\nLes antihypertenseurs ont une efficacité comparable (bêtabloquants, IEC, ARA2, IC, Diurétiques)\nLe choix des molécules est guidé par l’exposition des organes cibles et le profil du patient (ex : IEC ou ARA2 si protection cardiaque et rénale prioritaire, Betabloqueur si profil « adrénérgique », …)\nEn monothérapie, choisir dans un panier : \n-Panier 1 : bêtabloquants, IEC, ARA2\n-Panier 2 : diurétique thiazidique ou assimilé (NB : le furosémide n’est pas indiqué comme antihypertenseur), IC\nEn bithérapie : une molécule dans chaque panier\nHTA systolique du sujet âgé : panier 2\nAssociations recommandées :\n-Inhibiteur calcique et IEC (ou ARA2)\n-Diurétique thiazidique et IEC (ou ARA2)\n-Inhibiteur calcique et diurétique thiazidique\n-Bétabloquant et diurétique thiazidique\n-Bétabloquant et inhibiteur calcique dihydropyridine\n-Contre indiqué : IEC + ARA2\nTrithérapie : diurétique thiazidique + inhibiteur calcique + IEC ou ARA2\nHTA et grossesse : Alphaméthyldopa\nBilan biologique initial\nPrise en charge des autres facteurs de risque cardio-vascuaire\nEducation du patient : régime hygiéno-diététique, contrôle du poids, arrêt tabac et alcool, nécessité d’une observance régulière du traitement et du suivi régulier de l’état de santé',
    'Ictère à bilirubine libre\n-Avec hémolyse : accident transfusionnel, infections, déficit en G6PD…\n-Sans hémolyse : ictère physiologique, ictère au lait maternel, hypothyroïdie, sténose du pylore…\nIctère à bilirubine mixte ou conjuguée\n-Obstacles des voies biliaires\n-Hépatites\n-Maladies génétiques ou métaboliques\nBilan initial :\n-Chez la mère : groupe sanguin, test de Coombs indirect\n-Chez l’enfant : bilirubine libre et conjuguée, test de Coombs direct, NFS plaquettes, réticulocytes,albuminémie\nTraitement des ictères à bilirubine libre : photothérapie\nPour les autres : traitement étiologique',
    'Syndrome coronarien aigu ST+\nTraitement d’urgence : antalgiques morphiniques, oxygénothérapie, aspirine, clopidogrel, un anticoagulant (énoxaparine)\nA hospitaliser',
    'Antiseptiques : chlorhexidine ou savon aux carbanilides\nAntibiotiques locaux antistaphylococciques : acide fusidique\nTraitement par voie générale éventuel dirigé contre le streptocoque acide fusidique ou macrolide (ex: Josamycine)\nNe pas utiliser la mupirocine sur une grande surface\nInformer le patient d’EVITER les AINS',
    'Infection basse (vulve, vagin et exocol utérin) :\nAntibiothérapie probabiliste puis adaptée au germe\n-Trichomonase et vaginose bactérienne : nitroimidazolés (métronidazole, tinidazole…)\n-Vaginite bactérienne : ovule antibactérien + antifongique ou antitrichomonase\n-Gonocoque : ceftriaxone 500mg en une injection ou spectinomycineEg en 1 seule injection IM. Ou céfixime 400mg en une prise orale. Toujours associer à un traitement anti-chlamydia\n\nInfection haute (endocol utérin, endomètre, trompes, ovaires, péritoine pelvien)\nPrélèvement systématique en cas d’infection haute.\nBiantibiothérapie orale ou IV : Céphalosporine 3 + doxycycline et/ou métronidazole.\nChirurgie à envisager dans les cas compliqués.',
    'Chez les sujets jeunes= uréthrite aiguë (MST) jusqu’à preuve du contraire\nFU puis Traitement de première intention : T3 MST (gono, chlamydiae), T3 du/des partenaires\nSi FU négatif, ou persistance clinique : ECBU, écho voies urinaires (malformation, calcul)\nTraitement de l\'urétrite aiguë masculine\n- 1e intention : Ceftriaxone 500 im ou iv\n\nET\n\nAzithromycine 1g en prise unique ou Doxy 100 x 2/j pdt 10 jours\n- 2e intention : Spectinomycine 2g avec 1 g en im pour chaque fesse.\n\nChez sujets > 50 ans : évoquer une prostatite aiguë\nBandelette urinaire et ECBU\nMonoantibiothérapie : fluoroquinolone orale (ciprofloxacine,lévofloxancine, ofloxacine) sauf si prise < 6 mois. Ou C3G en IM.',
    'IEC (ARA2 si intolérance à l’IEC)\nSurveiller la créatininémie et la kaliémie\nDiurétique de l’anse (furosémide) en cas de surcharge hydrosodée\nRéserver les bêtabloquants aux spécialistes et pour les cas hospitalisés avec FEV < 40%\nConsultation cardiologique pour bilan étiologique et optimisation du traitement',
    'DFG < 90ml/min/1,73 m² durant plus de 3 mois\nPrise en charge des facteurs de risque cardiovasculaires (HTA, Dyslipidémie, tabagisme, diabète) et des comorbidités.\nEviter les produits néphrotoxiques (ie « tout médicament non formellement indiqué est formellement contre-indiqué »)\nIEC ou ARA2 à dose personnalisée (introduction par titration par un spécialiste) si DFG ≥ 15ml/mn/1,73m2\nOptimisation de\n-La pression artérielle (PAS < 140mmHg mais jamais < 110mmHg, PAD < 90 mmHg)\n-La glycémie si diabétique (atteinte des objectifs préprandiaux de < 7mmol/l et postprandiaux de 2h < 11mmol/l, pour une HbA1c < 7% pour les sujets jeunes sans risque d’hypoglycémie fréquente)\nTraitement de suppléance quand le DFG est < à 15ml/min/1,73 m². (Transplantation rénale, hémodialyse,dialyse péritonéale)',
    'Paracétamol ou AINS, Opioïdes faibles. Morphine le cas échéant.\nLes myorelaxants et la corticothérapie systémique ne sont pas efficaces. La kinésithérapie n’est pas indiquée. En 2e intention, injection locale de corticoïde,\nSi compliquée (déficit moteur et sensitif, troubles sphinctériens…) Hospitaliser.',
    'Evaluer la fréquence et les handicaps\nCrise légère à modérée (très espacées moins de trois fois en une semaine, rare et ne limitent pas les activités): AINS, Aspirine ou Paracétamol (forme galénique à absorption rapide à prendre dès le début des céphalées ou de l’aura)\nCrise sévère (intense mais espacées, ne répondant pas aux antalgiques non spécifiques) : Triptan. Si inefficace : Dérivé ergoté.\nTraitement de fond (en association au traitement de crises, si crises très fréquentes plus de trois fois par semaine ou espacées mais très handicapantes) : bêtabloquant (propanolol) ou metoprolol ou amitriptyline.\nEn 2nde intention : pizotifène, indoramine, methysergide\nIdentification et éviction des facteurs déclenchant. Avis neurologue',
    'A confirmer par une Consultation spécialisée neurologique (scanner cérébral en première intention pour éliminer les autres causes d’épilepsie ou de céphalées, sérologie ELISA et Westernblot après le scanner mais pas l’inverse car une sérologie faussement positive risque de traiter une tumeur par du larvicide)\nLe traitement médical habituel dans la forme parenchymateuse (dose doublée et en association si forme méningée :\nAlbendazole: 15 mg/kg/j en 2 prises x 8 j\nOU Praziquantel : 30 mg/kg/j en 2 prises x 15 j\nCorticothérapie associée pour éviter une hypertension intracrânienne par lyse parasitaire.\nLes formes parenchymateuses multiparasitaires ne doivent pas être traitées par larvicide car la lyse massive parasitaire risque un engagement cérébral aigu mortel => Consultation spécialisée neurologique\nLe traitement de la neurocysticercose doit être associé au traitement de l’épilepsie associée qui durera au moins 3 à 5 ans',
    '-Dus au virus ourlien (paramyxovirus).\n-Traitement symptomatique : repos, antalgiques, anti-inflammatoires non stéroïdiens. Eviction scolaire jusqu’à la guérison clinique ;\n-Traitement préventif : Vaccination ROR',
    '-Examen otoscopique +++\n-OMA congestive : pas d’antibiothérapie, traitement symptomatique, réévaluer au bout de 48h.\n-OMA purulente : AB probabiliste : Amoxycilline. En cas d’échec/ Amoxycilline+ac. Clavulanique ou cefpodoximeproxétil.\n-Suivi clinique\n-NB : Pas de goutte auriculaire si le tympan est perforé',
    'Confirmer par un TDR et/ou Frottis/GE\nPaludisme simple (fièvre, fatigue, maux de tête, troubles digestifs…). ACT en première intention :\nArtésunate-Amodiaquine ou Artémether-Luméfantrine en deuxième ligne. En cas de vomissement: artesunate inj.\nPaludisme grave (anémie sévère, coma, convulsions généralisées, hypoglycémie, œdème pulmonaire, insuffisance rénale, infections sévères, hémorragies…). Quinine en perfusion.',
    'Urgence médico-chirurgicale\nA hospitaliser\nPose de voie veineuse pour expansion volémique, antalgique, antispasmodique',
    'Maladie à déclaration obligation\nAppel du 911. Garder le suspect et les accompagnants au centre en attendant les consignes\nPort d’équipement individuel de protection',
    'Constatation chez une personne à risque de diabète (antécédent familial, surpoids ou obésité,sédentarité, syndrome métabolique) de l’une des situations suivantes\n-Hyperglycémie modérée à jeun (≥ 6mmol/L et < 7mmol/L) persistante \n-Ou HbA1c entre 5,7 et 6,4%\n-Ou intolérance au glucose (HGPO)\nRecherche des atteintes d’organes cibles du diabète (yeux, reins, cœur troncs supra-aortiques et AOMI)\nMesures hygiéno-diététiques (MHD): Activités physique et régime alimentaire adapté (cf. diabète)\nMetformine si persistance des anomalies malgré MHD',
    'Traitement local par dermocotricoïdes ou émolients ou kératolytiques (acidesalycilique+ bétamétasone) ou dérivés de la vitamine D (calcipotriol) ou rétinoïde local (tazarotène)\nPsoriasis sévère : avis spécialisé',
    'Morsure ou griffure d’un animal à sang chaud\nLavage au savon, rinçage à l’eau pure, désinfecter avec un antiseptique (povidone iodée)\nAssurer l’hémostase\nNe pas suturer la plaie\nAB de couverture : amoxicilline - acide clavulanique\nAdresser à un Centre de vaccination antirabiquerapidement\nPour l’animal mordeur (carnet de vaccination), examen par un vétérinaire (14j).',
    'Rare avant 3 ans et après 21 ans.\nCritères de Jones modifiés pour un premier épisode de rhumatisme articulaire aigu :\n-Signes spécifiques majeur : Cardite, Chorée, Érythème marginé, Polyarthrite, Nodules sous-cutanés\n-Signes spécifiques Mineur : Polyarthralgies, VS (> 60 mm/h) ou protéine C réactive (> 30 mg/L) élevées,\nFièvre (≥ 38,5° C), Allongement de l\'espace PR (sur l\'ECG)\nRAA si :\n-2 manifestations majeures\n-Ou 1 majeure et 2 mineures\n-Et des preuves d\'infection streptococcique du groupe A\n(Test pour le streptocoque du groupe A (culture, test streptococcique rapide ou titres d\'antistreptolysine\nO [ASLO] et d\'anti-DNase B)\n-ECG\n-Échocardiographie Doppler\n-VS et taux de protéine C réactive (CRP)\nAntibiotiques anti-streptococciques (Benzathine Pénicilline G 1,2 million d\'unités IM 3–4 semaines. Si ≤ 27 kg: 600 000 unités IM q 3–4 semaines*, en cas d’allergie : Erythromycine ou Azythromycine, aspirine, corticoïdes chez les patients présentant une cardite modérée à sévère. Administrer des antibiotiques antistreptococciques en prophylaxie après l\'épisode initial pour éviter les récidives',
    'Traitement symptomatique (antipyrétique, décongestionnant, soins locaux)\nSi suppurée : Antibiotique pendant 10 jours (Amoxicilline, amoxycilline-ac. clavulanique,C3G,pristinamycine,lévofloxacine…)\nPas d’AB local par instillation nasale.\nImagerie si nécessaire.',
    'Diagnostiquer par un test non tréponémique (réaginique) (RPR, VDRL) et confirmer les résultats positifs par un test d\'anticorps tréponémique si disponible.\nEN absence de signes neurologiques, syphilis au stade primaire ou secondaire : Traiter par la pénicilline benzathine 2,4M en IM une fois par semaine pendant 4 semaines avec recherche des autres MST et prise en charge (dépistage et traitement) du partenaire\nSI signes neurologiques (atteintes du système nerveux périphérique ou central) adresser au neurologue\net traitement en hospitalisation',
    'Prophylaxie : vaccination\nTraitement : TOUJOURS HOSPITALISER\nNettoyage de la plaie\nAntibiotiques (métronidazole)\nImmunoglobulines antitétaniques\nTraitement des symptômes (diazépam), ventilation mécanique',
    'Radiographie, recherche de BAAR dans les crachats ou par tubage gastrite\nSuivre le PNLT',
    'Fibroscopie oesogastroduodénale\nBiopsie pour éliminer un cancer\nRechercher d’Helicopabcter Pilori\nNouveau schéma :\n-Amoxicilline 5 jours puis clarithromycine + métronidazole pendant 5 jours. IPP pendant les 10 jours de traitement\nToute hémorragie justifie une hospitalisation',
    '-Chlorhexidine aqueuse (usage externe)\n-Paracétamol, contre-indication des AINS\n-Antihistaminiques anticholinergiques (dexchlorphéniramine, méquitazine)\n-Eviction scolaire',
  ];

  late Map<String, String> tab = Map.fromIterables(listTitle, test);
  //const _ContentApp({super.key});
  List<String> listResult = [];
  void rechercherElement(String recherche) {
    listResult.clear();
    if (recherche.isEmpty) {
      listResult.addAll(listTitle);
    } else {
      for (String element in listTitle) {
        if (element.toLowerCase().contains(recherche.toLowerCase())) {
          listResult.add(element);
        }
      }
    }
    setState(() {});
  }

  Widget myDrawerHeader() {
    return DrawerHeader(
      child: Column(
        children: [
          const Text('Les sommaires en PDF',
              style: TextStyle(color: Colors.white)),
          SizedBox(
              height: 20), // Espacement entre le texte et la barre de recherche
          TextField(
            decoration: InputDecoration(
              hintText: 'Rechercher...',
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (value) {
              rechercherElement(value);
            },
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<ListTile> listTiles = (listResult.isEmpty ? listTitle : listResult)
        .asMap()
        .entries
        .map((entry) {
      final index = entry.key;
      final element = entry.value;
      final description = tab[
          element]; // Utilise element comme clé pour récupérer la valeur dans tab
      return ListTile(
        title: Text('$element'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Maladie(
                title: element,
                description: description ??
                    '', // Utilise la valeur trouvée dans tab comme description
              ),
            ),
          );
        },
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('SCHÉMAS THÉRAPEUTIQUES',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
            )),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            myDrawerHeader(),
            ...listTiles,
          ],
        ),
      ),
      body: const MenuApp(),
    );
  }
}
