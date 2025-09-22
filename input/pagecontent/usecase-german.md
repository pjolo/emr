Diese Seite beschreibt realistische medizinische Szenarien für die Verwendung des eNotfallpass. Alle Beispiele sind vollständig im Implementation Guide implementiert und referenzierbar.

### Use Case 1: Diabetikerin mit Penicillin-Allergie

[Maria Schmidt](https://pjolo.github.io/emr/Patient-UC1-Patient-MariaSchmidt.html), 47 Jahre alt, wird bewusstlos in ihrer Wohnung an der Musterstrasse 123 in 8001 Zürich aufgefunden. Ihr Ehemann [Peter Schmidt](https://pjolo.github.io/emr/RelatedPerson-UC1-RelatedPerson-PeterSchmidt.html) alarmiert den Rettungsdienst um 14:30 Uhr.

Bei Ankunft des [Notarztes](https://pjolo.github.io/emr/Practitioner-UC1-Practitioner-NotarztBecker.html) ist die Patientin ansprechbar, aber verwirrt. Der [Blutzucker zeigt einen Wert von 45 mg/dl](https://pjolo.github.io/emr/Observation-UC1-Observation-BloodGlucose-Emergency.html), was auf eine schwere Hypoglykämie hindeutet. Aus dem eNotfallpass ist ersichtlich, dass Maria an [Diabetes mellitus Typ 2](https://pjolo.github.io/emr/Condition-UC1-Condition-Diabetes.html) leidet, der seit 2015 mit [Metformin](https://pjolo.github.io/emr/MedicationStatement-UC1-MedicationStatement-Metformin.html) behandelt wird. Der [letzte HbA1c-Wert betrug 6.8%](https://pjolo.github.io/emr/Observation-UC1-Observation-HbA1c.html).

Kritisch ist die dokumentierte [Penicillin-Allergie](https://pjolo.github.io/emr/AllergyIntolerance-UC1-AllergyIntolerance-Penicillin.html) mit anaphylaktischer Reaktion in der Kindheit. Diese Information verhindert die versehentliche Gabe von Beta-Lactam-Antibiotika bei einer möglichen Sekundärinfektion.

Der Notarzt kann sofort eine Glukose-Infusion verabreichen. Als Notfallkontakt wird der [Ehemann](https://pjolo.github.io/emr/RelatedPerson-UC1-RelatedPerson-PeterSchmidt.html) unter der Nummer +41 44 321 65 87 kontaktiert. Als weitere Angehörige ist [Anna Müller](https://pjolo.github.io/emr/RelatedPerson-UC1-RelatedPerson-AnnaMueller.html) unter +41 31 456 78 90 hinterlegt.

Die Patientin erholt sich schnell und kann nach Stabilisierung zu Hause bleiben. Die Hypoglykämie war vermutlich durch eine vergessene Mahlzeit bei normaler Metformin-Dosis entstanden. Der behandelnde [Hausarzt Dr. Müller](https://pjolo.github.io/emr/Practitioner-UC1-Practitioner-DrMueller.html) wird über den Vorfall informiert.

Das vollständige [eNotfallpass Bundle](https://pjolo.github.io/emr/Bundle-UC1-Bundle-emr-MariaSchmidt.html) für Maria Schmidt zeigt alle relevanten medizinischen Informationen strukturiert und referenzierbar.

### Use Case 2: Herzschrittmacher-Patient mit MRT-Indikation

[Hans Meier](https://pjolo.github.io/emr/Patient-UC2-Patient-HansMeier.html), 72 Jahre alt, stürzt beim Wandern und wird mit Verdacht auf eine Schenkelhalsfraktur ins Spital eingeliefert. Eine MRT-Untersuchung zur genauen Diagnosestellung ist indiziert.

Aus dem eNotfallpass geht hervor, dass dem Patienten 2020 ein [Herzschrittmacher](https://pjolo.github.io/emr/Device-UC2-Device-Herzschrittmacher.html) implantiert wurde und

Diese Information ermöglicht es dem Radiologen, die MRT-Untersuchung nach entsprechenden Sicherheitsprotokollen durchzuführen, ohne den Schrittmacher zuvor deaktivieren zu müssen. Die letzte Schrittmacher-Kontrolle fand am 01.09.2025 statt.

Zusätzlich ist dokumentiert, dass der Patient [Marcumar zur Antikoagulation](https://pjolo.github.io/emr/MedicationStatement-UC2-MedicationStatement-Marcumar.html) einnimmt, was bei einer möglichen Operation berücksichtigt werden muss. 

Da Herr Meier als Herzpatient zu den Risikopersonen gehört, zeigt der eNotfallpass seinen aktuellen Immunisierungsstatus: [Grippeimpfung]() vom 15.10.2024 und [COVID-19]()Auffrischung vom 12.09.2024. Bei dem Sturz relevant ist auch die [Tetanus-Auffrischung]() vom 18.03.2022, die noch 8 Jahre gültig ist - wichtige Information für die Wundversorgung.

Der [behandelnde Unfallchirurg](https://pjolo.github.io/emr/Practitioner-UC2-Practitioner-DrUnfallchirurg.html) kann die MRT-Untersuchung sicher durchführen und bei Bedarf die [Kardiologin Dr. Zimmermann](https://pjolo.github.io/emr/Practitioner-UC2-Practitioner-DrKardiologe.html) für die perioperative Antikoagulations-Planung konsultieren. Als Notfallkontakt wird [Ehefrau Elisabeth](https://pjolo.github.io/emr/RelatedPerson-UC2-RelatedPerson-ElisabethMeier.html) unter +41 31 456 78 90 informiert.

Das vollständige [eNotfallpass Bundle für Hans Meier](https://pjolo.github.io/emr/Bundle-UC2-Bundle-emr-HansMeier.html) enthält alle relevanten Informationen für die sichere Behandlung.

### Use Case 3: Schwangere mit Reanimationsverfügung

[Laura Weber](https://pjolo.github.io/emr/Patient-UC3-Patient-LauraWeber.html), 28 Jahre alt, wird in der 32. Schwangerschaftswoche nach einem [Verkehrsunfall](https://pjolo.github.io/emr/Encounter-UC3-Encounter-Verkehrsunfall.html) bewusstlos in die Notaufnahme eingeliefert. Der eNotfallpass zeigt eine [aktuelle Schwangerschaft](https://pjolo.github.io/emr/Observation-UC3-Observation-Pregnancy.html) mit einem erwarteten Geburtstermin am 15. November 2025.

Besonders relevant ist die dokumentierte [Patientenverfügung](https://pjolo.github.io/emr/Consent-UC3-Consent-Resuscitation.html), in der die Patientin für den Fall schwerer Komplikationen eine Reanimation nur dann wünscht, wenn das ungeborene Kind gerettet werden kann. Diese Information ist entscheidend für die Behandlungsstrategie des Notfallteams.

Die Patientin hat eine bekannte [Allergie gegen Kontrastmittel](https://pjolo.github.io/emr/AllergyIntolerance-UC3-AllergyIntolerance-Contrast.html) mit Hautreaktionen dokumentiert. Als Notfallkontakt ist ihr [Partner Michael Weber](RelatedPerson-UC3-RelatedPerson-MichaelWeber.html) unter +41 79 555 12 34 hinterlegt.

Der [Gynäkologe](Practitioner-UC3-Practitioner-DrGynaekologin.html) kann anhand der Schwangerschaftsdaten sofort eine [fetale Überwachung](https://pjolo.github.io/emr/Observation-UC3-Observation-FetalHeartRate.html) einleiten. Die Patientin stabilisiert sich, und sowohl Mutter als auch Kind sind nach der Behandlung wohlauf. Der behandelnde [Notarzt](https://pjolo.github.io/emr/Practitioner-UC3-Practitioner-DrNotarzt.html) koordiniert die Versorgung unter Berücksichtigung der besonderen Umstände.

Das vollständige [eNotfallpass Bundle für Laura Weber](https://pjolo.github.io/emr/Bundle-UC3-Bundle-eNotfallpass-LauraWeber.html) enthält alle schwangerschaftsspezifischen Informationen für die optimale Notfallversorgung.


### Use Case 4: Multimorbider Patient mit komplexer Medikation

[Rudolf Zimmermann](https://pjolo.github.io/emr/Patient-UC4-Patient-RudolfZimmermann.html), 85 Jahre alt, wird von Angehörigen wegen zunehmender Verwirrtheit und Sturz zu Hause ins Spital gebracht. Der eNotfallpass zeigt eine komplexe medizinische Historie:

Aktive Diagnosen umfassen [chronische Herzinsuffizienz](https://pjolo.github.io/emr/Condition-UC4-Condition-HeartFailure.html), [Vorhofflimmern](https://pjolo.github.io/emr/Condition-UC4-Condition-AtrialFibrillation.html), [chronische Niereninsuffizienz Stadium 3](https://pjolo.github.io/emr/Condition-UC4-Condition-ChronicKidneyDisease.html) und [Diabetes mellitus Typ 2](https://pjolo.github.io/emr/Condition-UC4-Condition-DiabetesRudolf.html).

Die aktuelle Medikation beinhaltet [Ramipril 5mg](https://pjolo.github.io/emr/MedicationStatement-UC4-MedicationStatement-Ramipril.html) morgens, [Metoprolol 50mg](https://pjolo.github.io/emr/MedicationStatement-UC4-MedicationStatement-Metoprolol.html) zweimal täglich, [Furosemid 40mg](https://pjolo.github.io/emr/MedicationStatement-UC4-MedicationStatement-Furosemid.html) morgens und [Metformin 1000mg](https://pjolo.github.io/emr/MedicationStatement-UC4-MedicationStatement-MetforminRudolf.html) zweimal täglich.

Eine [schwere Nierenfunktionsstörung](https://pjolo.github.io/emr/Observation-UC4-Observation-CreatinineLevel.html) mit einem Kreatinin von 2.8 mg/dl erklärt die Symptomatik. Die Metformin-Therapie muss sofort pausiert werden, und die Diuretika-Dosis muss angepasst werden.

Der Patient trägt zudem ein [Implantat eines künstlichen Hüftgelenks](https://pjolo.github.io/emr/Device-UC4-Device-HipProsthesis.html) von 2018, was bei bildgebenden Verfahren zu berücksichtigen ist.

Als Betreuerin ist seine [Tochter Elisabeth Zimmermann](https://pjolo.github.io/emr/RelatedPerson-UC4-RelatedPerson-ElisabethZimmermann.html) unter +41 61 789 45 23 eingetragen, die auch eine [Vollmacht für medizinische Entscheidungen](https://pjolo.github.io/emr/Consent-UC4-Consent-MedicalPowerOfAttorney.html) besitzt. Der behandelnde [Hausarzt Dr. Weber](https://pjolo.github.io/emr/Practitioner-UC4-Practitioner-DrWeber.html) wird über die komplexe Situation informiert.

Das vollständige [eNotfallpass Bundle für Rudolf Zimmermann](https://pjolo.github.io/emr/Bundle-UC4-Bundle-emr-RudolfZimmermann.html) zeigt alle medizinischen Zusammenhänge und Kontraindikationen strukturiert auf.


