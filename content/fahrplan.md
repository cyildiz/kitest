---
title: "Fahrplan"
disableToc: true
---

# Ablauf der Veranstaltung

Hier kommt eine Tabelle hin: In welcher Woche gibt es welches Thema, verlinkt auf die Unterseiten.

**TODO**: Definition eines eigenen Archetypen/Partials für die Generierung einer solchen Tabelle (https://gohugo.io/templates/partials/).

**TODO**: Verteilung der Sitzungen über eine YAML-Konfiguration in `data/` (vgl. https://gohugo.io/templates/data-templates/, https://github.com/sampsyo/cs6120/blob/2020fa/data/schedule.toml und https://github.com/sampsyo/cs6120/blob/2020fa/templates/post.html)

**TODO**: Verlinkung mit Shortcodes (https://gohugo.io/content-management/shortcodes/), etwa `[Fahrplan]({{<ref "/fahrplan.md" >}})` => [Fahrplan]({{<ref "/fahrplan.md" >}}).

| KW | VL                                                                                                                                                                                                                 | Praktikum                                              |
|----|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------|
| 45 | [Orga FHB] (**Zoom**) \|\| [Einführung KI] \| [Problemlösen]                                                                                                                                                       | --                                                     |
| 46 | Suche: [Tiefensuche] \| [Breitensuche] \| [Branch-and-Bound und Best First] \| [A*]                                                                                                                                | [FHB01: Grenzen der KI, Problemraum (T)]               |
| 47 | Lokale Suche: [Gradientenabstieg und Simulated Annealing] \| [Evolutionäre/Genetische Algorithmen]                                                                                                                 | [FHB02: Tiefen- und Breitensuche, A-Stern (T)]         |
| 48 | Spiele: [Minimax] \| [Minimax Erweiterungen] \| [Alpha-Beta-Pruning]                                                                                                                                               | [FHB03: Lokale Suche: Genetische Algorithmen (T,I)]    |
| 49 | [Constraints] \| [Backtracking, Heuristiken] \| [Forward Checking und AC-3]                                                                                                                                        | [FHB04: Spiele: Minimax, Alpha-Beta-Pruning (T,I)]     |
| 50 | [Machine Learning 101] \| Entscheidungsbäume: [CAL2, Pruning] \| [CAL3] \| [Entropie] \| [ID3 und C4.5]                                                                                                            | [FHB05: Constraints (AIMA), AC-3-Handsimulation (T,I)] |
| 51 | [Wahrscheinlichkeitstheorie 101] \| Textklassifikation mit [Naive Bayes]                                                                                                                                           | [FHB06: Entscheidungsbäume (T)]                        |
| 52 | --                                                                                                                                                                                                                 | --                                                     |
| 53 | --                                                                                                                                                                                                                 | --                                                     |
| 01 | [ML Einführung, Vektorisierung, Perzeptron Lernalgorithmus]                                                                                                                                                        | --                                                     |
| 02 | [Lineare Regression, Fehlerfunktion, Mean Square Error (MSE), Gradientenabstieg]                                                                                                                                   | [TDU01: Perzeptron]                                    |
| 03 | [Logistische Regression, Overfitting, Generalisierung, Regularisierung, Train-Dev-Test Sets]                                                                                                                       | [TDU02: Lineare Regression]                            |
| 04 | [Nichtlineare Modelle] \| [Overfitting und Regularisierung] \| [Multi-Layer Perceptron (MLP)] \| [Backpropagation] \| [Backpropagation (Nachtrag)] \|\| [Rückblick] \| Umfrage \| [Klausurvorbereitung] (**Zoom**) | [TDU03: Logistische Regression und MLP]                |


**Legende**:

*   `--`: keine Vorlesung bzw. kein Praktikum
*   Vorlesung: Durchführung und Bereitstellung der Unterlagen gemeinsam für FHB und TDU
    *   KW45 bis KW51: FHB (Carsten Gips)
    *   KW01 bis KW04: TDU (Canan Yıldız)
    *   Rückblick und Klausurvorbereitung in KW04 für FHB durch FHB
*   Praktika: Durchführung jeweils getrennt nach FHB und TDU; Bereitstellung der Aufgabenblätter:
    *   KW45 bis KW51: FHB (Carsten Gips)
    *   KW02 bis KW04: TDU (Canan Yıldız)
*   (T): Aufgaben ohne Implementierungsanteil
*   (I): Aufgaben mit Implementierungsanteil

*Hinweis*: Die Planung wird bei Bedarf aktualisiert!


[Orga FHB]: ki_orga.html

[Einführung KI]: ki_intro.html
[Problemlösen]: ki_search1.html
[Tiefensuche]: ki_search2.html
[Breitensuche]: ki_search3.html
[Branch-and-Bound und Best First]: ki_search4.html
[A*]: ki_search5.html
[Gradientenabstieg und Simulated Annealing]: ki_search6.html
[Evolutionäre/Genetische Algorithmen]: ki_ea.html
[Minimax]: ki_spiele1.html
[Minimax Erweiterungen]: ki_spiele2.html
[Alpha-Beta-Pruning]: ki_spiele3.html
[Constraints]: ki_csp1.html
[Backtracking, Heuristiken]: ki_csp2.html
[Forward Checking und AC-3]: ki_csp3.html
[Machine Learning 101]: ki_dtl1.html
[CAL2, Pruning]: ki_dtl2.html
[CAL3]: ki_dtl3.html
[Entropie]: ki_dtl4.html
[ID3 und C4.5]: ki_dtl5.html
[Vektorrechnung]: ki_mlp1.html
[Perzeptron]: ki_mlp2.html
[MLP (Aufbau)]: ki_mlp3.html
[MLP (Backprop)]: ki_mlp4.html
[Support Vector Machine]: ki_mlp5.html
[Training, Generalisierung, Crossvalidierung]: ki_mlp6.html
[Verbesserung der Generalisierungseigenschaften]: ki_mlp7.html
[Anwendungen]: ki_mlp8.html
[Syntax]: ki_logic1.html
[Semantik]: ki_logic2.html
[Modelle und Folgern]: ki_logic3.html
[Syntaktisches Ableiten]: ki_logic4.html
[Substitution und Unifikation]: ki_logic5.html
[Klauseln und Resolution]: ki_logic6.html
[Einführung Prolog]: ki_logic7.html
[Wahrscheinlichkeitstheorie 101]: ki_nb1.html
[Naive Bayes]: ki_nb2.html
[Rückblick]: ki_rueckblick.html
[Klausurvorbereitung]: ki_klausur.html

[FHB01: Grenzen der KI, Problemraum (T)]: ki_b01.pdf
[FHB02: Tiefen- und Breitensuche, A-Stern (T)]: ki_b02.pdf
[FHB03: Lokale Suche: Genetische Algorithmen (T,I)]: ki_b03.pdf
[FHB04: Spiele: Minimax, Alpha-Beta-Pruning (T,I)]: ki_b04.pdf
[FHB05: Constraints (AIMA), AC-3-Handsimulation (T,I)]: ki_b05.pdf
[FHB06: Entscheidungsbäume (T)]: ki_b06.pdf

[ML Einführung, Vektorisierung, Perzeptron Lernalgorithmus]: ML.1-Das_Perzeptron.pdf
[Lineare Regression, Fehlerfunktion, Mean Square Error (MSE), Gradientenabstieg]: ML.2-Lineare_Regression-Merkmalskalierung.pdf
[Logistische Regression, Overfitting, Generalisierung, Regularisierung, Train-Dev-Test Sets]: ML.3-Logistische_Regression.pdf
[Nichtlineare Modelle]: ML.4.1-Nichtlineare_Modelle_und_Overfitting.pdf
[Overfitting und Regularisierung]: ML.4.2-Overfitting_und_Regularisierung.pdf
[Multi-Layer Perceptron (MLP)]: ML.4.3-Multi_Layer_Perzeptron-Neuronale_Netzwerke.pdf
[Backpropagation]: ML.4.4-Backpropagation.pdf
[Backpropagation (Nachtrag)]: ML.4.4-Backpropagation_v2.pdf

[TDU01: Perzeptron]: ki_b07.pdf
[TDU02: Lineare Regression]: ki_b08.pdf
[TDU03: Logistische Regression und MLP]: ki_b09.pdf
