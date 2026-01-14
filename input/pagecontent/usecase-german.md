Diese Seite beschreibt realistische medizinische Szenarien für die Verwendung des eNotfallpass. Alle Beispiele sind vollständig im Implementation Guide implementiert und referenzierbar.

### Use Case 1: Diabetikerin mit Penicillin-Allergie

[Maria Schmidt](https://pjolo.github.io/emr/Patient-UC1-Patient-MariaSchmidt.html), 47 Jahre alt, wird bewusstlos in ihrer Wohnung an der Musterstrasse 123 in 8001 Zürich aufgefunden. Ihr Ehemann [Peter Schmidt](https://pjolo.github.io/emr/RelatedPerson-UC1-RelatedPerson-PeterSchmidt.html) alarmiert den Rettungsdienst um 14:30 Uhr.

Bei Ankunft des Notarztes ist die Patientin ansprechbar, aber verwirrt. Die klinische Untersuchung zeigt Symptome einer schweren Hypoglykämie mit kaltem Schweiss, Zittern und Verwirrtheit. Aus dem eNotfallpass ist ersichtlich, dass Maria an [Diabetes mellitus Typ 2](https://pjolo.github.io/emr/Condition-UC1-Condition-Diabetes.html) leidet, der seit 2015 mit [Metformin](https://pjolo.github.io/emr/MedicationStatement-UC1-MedicationStatement-Metformin.html) behandelt wird.

Kritisch ist die dokumentierte [Penicillin-Allergie](https://pjolo.github.io/emr/AllergyIntolerance-UC1-AllergyIntolerance-Penicillin.html) mit anaphylaktischer Reaktion in der Kindheit. Diese Information verhindert die versehentliche Gabe von Beta-Lactam-Antibiotika bei einer möglichen Sekundärinfektion.

Der Notarzt kann sofort eine Glukose-Infusion verabreichen. Als Notfallkontakt wird der [Ehemann](https://pjolo.github.io/emr/RelatedPerson-UC1-RelatedPerson-PeterSchmidt.html) unter der Nummer +41 44 321 65 87 kontaktiert. Als weitere Angehörige ist [Anna Müller](https://pjolo.github.io/emr/RelatedPerson-UC1-RelatedPerson-AnnaMueller.html) unter +41 31 456 78 90 hinterlegt.

Die Patientin erholt sich schnell und kann nach Stabilisierung zu Hause bleiben. Die Hypoglykämie war vermutlich durch eine vergessene Mahlzeit bei normaler Metformin-Dosis entstanden. Der behandelnde [Hausarzt Dr. med. Müller](https://pjolo.github.io/emr/Practitioner-UC1-Practitioner-DrMueller.html) wird über den Vorfall informiert.

Den vollständigen [eNotfallpass für Maria Schmidt](https://pjolo.github.io/emr/Bundle-UC1-Bundle-emr-MariaSchmidt.html) zeigt alle relevanten medizinischen Informationen strukturiert und referenzierbar.

### Use Case 2: Herzschrittmacher-Patient mit MRT-Indikation

[Hans Meier](https://pjolo.github.io/emr/Patient-UC2-Patient-HansMeier.html), 72 Jahre alt, stürzt beim Wandern und wird mit Verdacht auf eine Schenkelhalsfraktur ins Spital eingeliefert. Eine MRT-Untersuchung zur genauen Diagnosestellung ist indiziert.

Aus dem eNotfallpass geht hervor, dass dem Patienten 2020 ein [Herzschrittmacher](https://pjolo.github.io/emr/Device-UC2-Device-Pacemaker.html) implantiert wurde.

Diese Information ermöglicht es dem Radiologen, die MRT-Untersuchung nach entsprechenden Sicherheitsprotokollen durchzuführen, ohne den Schrittmacher zuvor deaktivieren zu müssen.

Zusätzlich ist dokumentiert, dass der Patient [Marcumar zur Antikoagulation](https://pjolo.github.io/emr/MedicationStatement-UC2-MedicationStatement-Marcumar.html) einnimmt, was bei einer möglichen Operation berücksichtigt werden muss. Die Medikation wurde von seinem behandelnden Kardiologen Dr. med. Thomas Weber verordnet.

Da Herr Meier als Herzpatient zu den Risikopersonen gehört, zeigt der eNotfallpass seinen aktuellen Immunisierungsstatus: [Grippeimpfung](https://pjolo.github.io/emr/Immunization-UC2-Immunization-Influenza.html) vom 15.10.2024 und [COVID-19](https://pjolo.github.io/emr/Immunization-UC2-Immunization-COVID19.html)Auffrischung vom 12.09.2024. Bei dem Sturz relevant ist auch die [Tetanus-Auffrischung](https://pjolo.github.io/emr/Immunization-UC2-Immunization-Tetanus.html) vom 18.03.2022, die noch 8 Jahre gültig ist - wichtige Information für die Wundversorgung.

Der behandelnde Unfallchirurg kann die MRT-Untersuchung sicher durchführen und bei Bedarf die Kardiologin [Dr. med. Schmidt](https://pjolo.github.io/emr/Practitioner-UC2-Practitioner-DrSchmidt.html) für die perioperative Antikoagulations-Planung konsultieren. Als Notfallkontakt wird Ehefrau [Elisabeth Meier](https://pjolo.github.io/emr/RelatedPerson-UC2-RelatedPerson-ElisabethMeier.html) unter +41 31 456 78 90 informiert, sowie sein Hausarzt [Dr. med. Müller](https://pjolo.github.io/emr/Practitioner-UC2-Practitioner-DrMueller.html).

Den vollständigen [eNotfallpass für Hans Meier](https://pjolo.github.io/emr/Bundle-UC2-Bundle-emr-HansMeier.html) enthält alle relevanten Informationen für die sichere Behandlung.

### Use Case 3: Schwangere mit Reanimationsverfügung

[Laura Weber](https://pjolo.github.io/emr/Patient-UC3-Patient-LauraWeber.html), 28 Jahre alt, wird in der 32. Schwangerschaftswoche nach einem Verkehrsunfall bewusstlos in die Notaufnahme eingeliefert. Der eNotfallpass zeigt eine [aktuelle Schwangerschaft](https://pjolo.github.io/emr/Observation-UC3-Observation-Pregnancy.html) mit einem erwarteten Geburtstermin am 15. November 2025.

Besonders relevant ist die dokumentierte [Patientenverfügung](https://pjolo.github.io/emr/Consent-UC3-Consent-Resuscitation.html), in der die Patientin für den Fall schwerer Komplikationen eine Reanimation nur dann wünscht, wenn das ungeborene Kind gerettet werden kann. Diese Information ist entscheidend für die Behandlungsstrategie des Notfallteams.

Die Patientin hat eine bekannte [Allergie gegen Kontrastmittel](https://pjolo.github.io/emr/AllergyIntolerance-UC3-AllergyIntolerance-Contrast.html) mit Hautreaktionen dokumentiert. Als Notfallkontakt ist ihr Partner [Michael Weber](RelatedPerson-UC3-RelatedPerson-MichaelWeber.html) unter +41 79 555 12 34 hinterlegt. Im eNotfallpass sind zudem ihre behandelnde Gynäkologin [Dr. med. Sarah Semmelbruch](https://pjolo.github.io/emr/Practitioner-UC3-Practitioner-DrSemmelbruch.html) sowie ihr Hausarzt [Dr. med. Hans Müller](https://pjolo.github.io/emr/Practitioner-UC3-Practitioner.html) dokumentiert.

Der behandelnde Notarzt koordiniert die Versorgung unter Berücksichtigung der besonderen Umstände. Die Patientin stabilisiert sich, und sowohl Mutter als auch Kind sind nach der Behandlung wohlauf. Der Notarzt kontaktiert den Hausarzt der Patientin.

Den vollständigen [eNotfallpass für Laura Weber](https://pjolo.github.io/emr/Bundle-UC3-Bundle-emr-LauraWeber.html) enthält alle schwangerschaftsspezifischen Informationen für die optimale Notfallversorgung.


### Use Case 4: Multimorbider Patient mit komplexer Medikation

[Rudolf Zimmermann](https://pjolo.github.io/emr/Patient-UC4-Patient-RudolfZimmermann.html), 85 Jahre alt, wird von Angehörigen wegen zunehmender Verwirrtheit und Sturz zu Hause ins Spital gebracht. Der eNotfallpass zeigt eine komplexe medizinische Historie:

Aktive Diagnosen umfassen [chronische Herzinsuffizienz](https://pjolo.github.io/emr/Condition-UC4-Condition-HeartFailure.html), [Vorhofflimmern](https://pjolo.github.io/emr/Condition-UC4-Condition-AtrialFibrillation.html), [chronische Niereninsuffizienz Stadium 3](https://pjolo.github.io/emr/Condition-UC4-Condition-ChronicKidneyDisease.html) und [Diabetes mellitus Typ 2](https://pjolo.github.io/emr/Condition-UC4-Condition-DiabetesRudolf.html).

Die aktuelle Medikation beinhaltet [Ramipril 5mg](https://pjolo.github.io/emr/MedicationStatement-UC4-MedicationStatement-Ramipril.html) morgens, [Metoprolol 50mg](https://pjolo.github.io/emr/MedicationStatement-UC4-MedicationStatement-Metoprolol.html) zweimal täglich, [Furosemid 40mg](https://pjolo.github.io/emr/MedicationStatement-UC4-MedicationStatement-Furosemid.html) morgens und [Metformin 1000mg](https://pjolo.github.io/emr/MedicationStatement-UC4-MedicationStatement-MetforminRudolf.html) zweimal täglich.

Der Patient trägt zudem ein [Implantat eines künstlichen Hüftgelenks](https://pjolo.github.io/emr/Device-UC4-Device-HipProsthesis.html) von 2018, was bei bildgebenden Verfahren zu berücksichtigen ist.

Als Betreuerin ist seine Tochter [Elisabeth Zimmermann](https://pjolo.github.io/emr/RelatedPerson-UC4-RelatedPerson-ElisabethZimmermann.html) unter +41 61 789 45 23 eingetragen. Der behandelnde [Hausarzt Dr. med. Weber](https://pjolo.github.io/emr/Practitioner-UC4-Practitioner-DrWeber.html) wird über die komplexe Situation informiert.

Den vollständigen [eNotfallpass für Rudolf Zimmermann](https://pjolo.github.io/emr/Bundle-UC4-Bundle-emr-RudolfZimmermann.html) zeigt alle medizinischen Zusammenhänge strukturiert auf.


