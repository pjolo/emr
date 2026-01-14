### Introduction
The **emergency record** contains all the important medical information needed in situations in which quick access or a quick overview of medical data is required. For example, in cases of unconsciousness, language barriers or limited health lieracy.   
The emergency record combines key administrative and clinicel data such as patient details, emergency contacts, medication, allergies, vaccinations, implants, diognose, CPR status and references to living wills and other relevant documents.

The CH EMR implementation guide describes the FHIR representation of the electronic emergency record in Switzerland. It is dependent on [CH Core](http://fhir.ch/ig/ch-core/index.html) and [CH Term](http://fhir.ch/ig/ch-term/index.html), which describe the Swiss-specific context, particularly in relation to the Swiss Electronic Patient Record (EPR).   
This implementation guide is based on the concept for the exchange format of the electronic emergency record ([de](https://www.e-health-suisse.ch/upload/documents/Konzept_eNotfallpass_DE.pdf), [fr](https://www.e-health-suisse.ch/upload/documents/Konzept_Notfallpass_FR.pdf)).

<div markdown="1" class="stu-note">

This implementation guide is under STU ballot by [HL7 Switzerland](https://www.hl7.ch/de/) until September 30th, 2025 midnight.   
Please add your feedback via the ‘Propose a change’-link in the footer on the page where you have comments.

[Changelog](https://pjolo.github.io/emr/changelog.html) with significant changes, open and closed issues.

</div>

**Download**: You can download this implementation guide in the [npm package format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### Objective

The emergency report is designed to give medical professionals quick and structured access to a patient's most important medical information in emergency situations. However, this medical information can also be used in unforeseen patient contacts where, for example, language barriers exist or health literacy is limited.

### Content scope

#### Core units

* **Patient information**: Demographic data and contact information
* **Emergency contacts**: Family and trusted persons
* **Care Team**: Treating Health care professional
* **Resuscitation status**: Patient's wishes regarding resuscitation measures in emergency situations
* **Current medication**: Information and dosage of medications 
* **Vaccinations**: Current vaccinations
* **Allergies and intolerances**: Known allergic reactions and intolerances
* **Risk factors**: Risks relevant to treatment
* **Problem list**: Diagnoses and problems
* **Advance directive**: Information on advance directives or medical directives
* **Other documents**: Other documents like organ donor cards
* **Implants**: Medical devices
* **Pregnancy**: Current pregnancy information
* **Disability**: Information about disabilities

#### Profiles

The Implementation Guide defines the following main profiles:

| Profil | Beschreibung | Parent |
|--------|--------------|---------|
| [ChEmrComposition](https://pjolo.github.io/emr/StructureDefinition-ch-emr-composition.html) | Document composition | CH IPS Composition |
| [ChEmrBundle](https://pjolo.github.io/emr/StructureDefinition-ch-emr-bundle.html) | Document bundle| CH Core Document |
| [ChEmrPatient](https://pjolo.github.io/emr/StructureDefinition-ch-emr-patient.html) | Demographic data and contact information | CH IPS Patient |
| [ChEmrRelatedPerson](https://pjolo.github.io/emr/StructureDefinition-ch-emr-relatedperson.html) | Family and trusted persons | CH IPS Patient |
| [ChEmrPractitioner](https://pjolo.github.io/emr/StructureDefinition-ch-emr-practitioner.html) | Healthcare practitioner information | CH Core Practitioner |
| [ChEmrObservation](https://pjolo.github.io/emr/StructureDefinition-ch-emr-observation.html) | Various observations | CH Core Observation |
| [ChEmrMedication](https://pjolo.github.io/emr/StructureDefinition-ch-emr-medication.html) | Medication details | CH IPS Medication |
| [ChEmrMedicationStatement](https://pjolo.github.io/emr/StructureDefinition-ch-emr-medicationstatement.html) | Current medication | CH IPS MedicationStatement |
| [ChEmrImmunization](https://pjolo.github.io/emr/StructureDefinition-ch-emr-immunization.html) | Immunization records | CH IPS Immunization |
| [ChEmrAllergyIntolerance](https://pjolo.github.io/emr/StructureDefinition-ch-emr-allergyintolerance.html) | Allergies and intolerances | CH IPS AllergyIntolerance |
| [ChEmrCondition](https://pjolo.github.io/emr/StructureDefinition-ch-emr-condition.html) | Problems and diagnoses | CH IPS Condition |
| [ChEmrDocumentReference](https://pjolo.github.io/emr/StructureDefinition-ch-emr-documentreference.html) | Reference to documents | CH Core DocumentReference |
| [ChEmrDevice](https://pjolo.github.io/emr/StructureDefinition-ch-emr-device.html) | Implants | CH IPS Device |

### IP Statements
This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}
