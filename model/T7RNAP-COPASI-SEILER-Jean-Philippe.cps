<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.46 (Build 300) (http://www.copasi.org) at 2026-02-22T22:42:47Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="46" versionDevel="300" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_8" name="Henri-Michaelis-Menten (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_8">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*substrate/(Km+substrate)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_47" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_46" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_45" name="V" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
     <rdf:Description rdf:about="#Function_13">
     <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
     </rdf:Description>
     </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
  <b>Mass action rate law for irreversible reactions</b>
  <p>
  Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
  </p>
  </body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
     <rdf:Description rdf:about="#Function_14">
     <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
     </rdf:Description>
     </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
  <b>Mass action rate law for reversible reactions</b>
  <p>
  Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
  </p>
  </body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="MM with Competitive Inhibition" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_81">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k_cat * Complex * NTP / (Km * (1 + PPi / Ki) + NTP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_677" name="k_cat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_676" name="Complex" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_675" name="NTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_674" name="Km" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_673" name="PPi" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_672" name="Ki" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Unknown" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2026-02-13T17:11:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>
[-:-]	Given input is not a valid SBGN-ML file.</p>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="MgPPi2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_0">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000247" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="dsDNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_1">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000252" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="NTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_2">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000247" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="T7 RNAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000252" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Mg2+" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_4">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000247" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="PPi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_5">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000247" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="short RNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_6">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000243" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="dsRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_7">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000243" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Promoter Bound Complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_8">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000253" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="asRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_9">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000243" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Initiation Complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_10">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000253" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Elongation/Termi Complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_11">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000253" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_12">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000243" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="3' Loop Extension Complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_13">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000253" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Antisense Bound Complex" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/">  <rdf:Description rdf:about="#Metabolite_14">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000253" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="NTPMg" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="Pi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Mg3PO42_solid" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Mg" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="T7RNAP_inactivated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="&quot;T7 RNAP&quot; + dsDNA = &quot;Promoter Bound Complex&quot;" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000176" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_0" name="k1" value="204000"/>
          <Constant key="Parameter_1" name="k2" value="10200"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Unknown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_3"/>
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Mg2+ + PPi = MgPPi2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000176"/>
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2" name="k1" value="1000"/>
          <Constant key="Parameter_3" name="k2" value="17000"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Unknown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="1990 NTP + &quot;Initiation Complex&quot; -> 1990 PPi + mRNA + &quot;T7 RNAP&quot;" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000176" />
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1990"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1990"/>
          <Product metabolite="Metabolite_4" stoichiometry="1990"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4" name="k_cat" value="136"/>
          <Constant key="Parameter_5" name="Km" value="50"/>
          <Constant key="Parameter_6" name="Ki" value="200000"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Unknown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Parameter_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Parameter_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Parameter_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="NTP + &quot;Promoter Bound Complex&quot; -> PPi + &quot;Initiation Complex&quot; + dsDNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqmodel:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.sbo/SBO:0000176"/>
      </rdf:Bag>
    </bqmodel:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <p />
  </body>
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="10"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="10"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="10"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7" name="k_cat" value="1220"/>
          <Constant key="Parameter_8" name="Km" value="50"/>
          <Constant key="Parameter_9" name="Ki" value="200000"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Unknown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Parameter_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Parameter_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Parameter_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="NTP + Mg2+ = NTPMg" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_10" name="k1" value="1000"/>
          <Constant key="Parameter_11" name="k2" value="11500"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Unknown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_2"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="PPi = 2 Pi" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_12" name="Km" value="5"/>
          <Constant key="Parameter_13" name="V" value="129600"/>
        </ListOfConstants>
        <KineticLaw function="Function_8" unitType="Default" scalingCompartment="CN=Root,Model=Unknown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_46">
              <SourceParameter reference="Parameter_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="3 Mg + 2 Pi = Mg3PO42_solid" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="3"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_14" name="k1" value="1e-15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Unknown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_16"/>
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="T7 RNAP = T7RNAP_inactivated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_15" name="k1" value="0.84"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Unknown,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Unknown" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[MgPPi2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[dsDNA]" value="5540370446800000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[NTP]" value="1.2044283580000001e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[T7 RNAP]" value="1.15625122368e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Mg2+]" value="1.2646497759e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[PPi]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[short RNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[dsRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Promoter Bound Complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[asRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Initiation Complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Elongation/Termi Complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[3' Loop Extension Complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Antisense Bound Complex]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[NTPMg]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Pi]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Mg3PO42_solid]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Mg]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[T7RNAP_inactivated]" value="6.02214179e+17" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Unknown,Vector=Reactions[&quot;T7 RNAP&quot; + dsDNA \= &quot;Promoter Bound Complex&quot;]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[&quot;T7 RNAP&quot; + dsDNA \= &quot;Promoter Bound Complex&quot;],ParameterGroup=Parameters,Parameter=k1" value="204000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[&quot;T7 RNAP&quot; + dsDNA \= &quot;Promoter Bound Complex&quot;],ParameterGroup=Parameters,Parameter=k2" value="10200" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Unknown,Vector=Reactions[Mg2+ + PPi \= MgPPi2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[Mg2+ + PPi \= MgPPi2],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[Mg2+ + PPi \= MgPPi2],ParameterGroup=Parameters,Parameter=k2" value="17000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Unknown,Vector=Reactions[1990 NTP + &quot;Initiation Complex&quot; -\> 1990 PPi + mRNA + &quot;T7 RNAP&quot;]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[1990 NTP + &quot;Initiation Complex&quot; -\> 1990 PPi + mRNA + &quot;T7 RNAP&quot;],ParameterGroup=Parameters,Parameter=k_cat" value="136" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[1990 NTP + &quot;Initiation Complex&quot; -\> 1990 PPi + mRNA + &quot;T7 RNAP&quot;],ParameterGroup=Parameters,Parameter=Km" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[1990 NTP + &quot;Initiation Complex&quot; -\> 1990 PPi + mRNA + &quot;T7 RNAP&quot;],ParameterGroup=Parameters,Parameter=Ki" value="200000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Unknown,Vector=Reactions[NTP + &quot;Promoter Bound Complex&quot; -\> PPi + &quot;Initiation Complex&quot; + dsDNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[NTP + &quot;Promoter Bound Complex&quot; -\> PPi + &quot;Initiation Complex&quot; + dsDNA],ParameterGroup=Parameters,Parameter=k_cat" value="1220" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[NTP + &quot;Promoter Bound Complex&quot; -\> PPi + &quot;Initiation Complex&quot; + dsDNA],ParameterGroup=Parameters,Parameter=Km" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[NTP + &quot;Promoter Bound Complex&quot; -\> PPi + &quot;Initiation Complex&quot; + dsDNA],ParameterGroup=Parameters,Parameter=Ki" value="200000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Unknown,Vector=Reactions[NTP + Mg2+ \= NTPMg]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[NTP + Mg2+ \= NTPMg],ParameterGroup=Parameters,Parameter=k1" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[NTP + Mg2+ \= NTPMg],ParameterGroup=Parameters,Parameter=k2" value="11500" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Unknown,Vector=Reactions[PPi \= 2 Pi]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[PPi \= 2 Pi],ParameterGroup=Parameters,Parameter=Km" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[PPi \= 2 Pi],ParameterGroup=Parameters,Parameter=V" value="129600" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Unknown,Vector=Reactions[3 Mg + 2 Pi \= Mg3PO42_solid]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[3 Mg + 2 Pi \= Mg3PO42_solid],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Unknown,Vector=Reactions[T7 RNAP \= T7RNAP_inactivated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Unknown,Vector=Reactions[T7 RNAP \= T7RNAP_inactivated],ParameterGroup=Parameters,Parameter=k1" value="0.83999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1.2646497759e+22 0 0 0 1.15625122368e+17 5540370446800000 0 0 0 1.2044283580000001e+22 0 0 6.02214179e+17 0 0 0 0 0 0 0 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="1"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="30"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="3"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Subtask Output" type="string" value="subTaskDuring"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="DisplayPopulations" type="bool" value="0"/>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="DisplayPopulations" type="bool" value="0"/>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="New" type="Plot2D" active="1" taskTypes="Time-Course">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="[mRNA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[mRNA]|Time 1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mg2+]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Mg2+],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[3' Loop Extension Complex]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[3' Loop Extension Complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Antisense Bound Complex]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Antisense Bound Complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Elongation/Termi Complex]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Elongation/Termi Complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Initiation Complex]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Initiation Complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mg2+]|Time 1" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Mg2+],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mg3PO42_solid]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Mg3PO42_solid],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MgPPi2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[MgPPi2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Mg]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Mg],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NTPMg]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[NTPMg],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NTP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[NTP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PPi]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[PPi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pi]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Pi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Promoter Bound Complex]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[Promoter Bound Complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[T7 RNAP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[T7 RNAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[asRNA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[asRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[dsDNA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[dsDNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[dsRNA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[dsRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[mRNA]|Time 2" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[short RNA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[short RNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="justeRNA" type="Plot2D" active="1" taskTypes="Time-Course">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="[mRNA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Unknown,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Unknown,Vector=Compartments[default],Vector=Metabolites[mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="minerva_layout">
      <Dimensions width="1133.2887496948242" height="739.888916015625"/>
      <ListOfCompartmentGlyphs>
        <CompartmentGlyph key="Layout_3" name="default_compartment" compartment="Compartment_0">
          <BoundingBox>
            <Position x="34.845634460449219" y="232.39297485351562"/>
            <Dimensions width="1063.5974807739258" height="275.10296630859375"/>
          </BoundingBox>
        </CompartmentGlyph>
      </ListOfCompartmentGlyphs>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_4" name="SbmlSpeciesExporter_1" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="692.05760955810547" y="446.93486022949219"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="SbmlSpeciesExporter_3" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="368.15959930419922" y="709.888916015625"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="SbmlSpeciesExporter_5" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="165.99190521240234" y="56.204116821289062"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="SbmlSpeciesExporter_6" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="913.51726531982422" y="600.94174194335938"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="SbmlSpeciesExporter_7" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="925.63097381591797" y="310.550537109375"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="SbmlSpeciesExporter_8" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="440.07839202880859" y="545.77279663085938"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="SbmlSpeciesExporter_10" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="296.76988983154297" y="50.600387573242188"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="SbmlSpeciesExporter_12" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="307.51155853271484" y="392.66204833984375"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="SbmlSpeciesExporter_13" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="306.30300140380859" y="291.22591018676758"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="SbmlSpeciesExporter_14" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="601.29344940185547" y="382.68313598632812"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="SbmlSpeciesExporter_15" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="619.05333709716797" y="257.28683662414551"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="SbmlSpeciesExporter_16" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="307.08742523193359" y="585.20309448242188"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="SbmlSpeciesExporter_18" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="1039.433219909668" y="625.22390747070312"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="SbmlSpeciesExporter_19" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="285.73305511474609" y="215.31989097595215"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="SbmlSpeciesExporter_20" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="295.77022552490234" y="116.57855224609375"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="SbmlSpeciesExporter_22" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="280.52008819580078" y="0"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="SbmlSpeciesExporter_23" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="1050.4152755737305" y="689.75738525390625"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="SbmlSpeciesExporter_24" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="959.65111541748047" y="625.50567626953125"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="SbmlSpeciesExporter_25" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="804.65837860107422" y="264.73358917236328"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="SbmlSpeciesExporter_26" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="681.07555389404297" y="382.40135192871094"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="SbmlSpeciesExporter_27" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="281.13057708740234" y="609.16326904296875"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_25" name="SbmlSpeciesExporter_28" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="377.58037567138672" y="472.89170837402344"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_26" name="SbmlSpeciesExporter_30" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="1073.2887496948242" y="564.73150634765625"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_27" name="SbmlSpeciesExporter_31" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="778.70153045654297" y="288.69375991821289"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_28" name="SbmlSpeciesExporter_32" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="896.74340057373047" y="399.3145751953125"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_29" name="SbmlSpeciesExporter_33" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="376.12129974365234" y="592.96539306640625"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_30" name="SbmlSpeciesExporter_34" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="873.69225311279297" y="272.49589920043945"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_31" name="SbmlSpeciesExporter_35" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="413.14925384521484" y="602.97824096679688"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_32" name="SbmlSpeciesExporter_36" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="262.39217376708984" y="163.34849548339844"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_33" name="SbmlSpeciesExporter_37" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="154.22206115722656" y="130.68505859375"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_34" name="SbmlSpeciesExporter_39" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="151.72613525390625" y="336.76929473876953"/>
            <Dimensions width="136.55908203125" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_35" name="SbmlSpeciesExporter_41" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="568.12853240966797" y="591.68670654296875"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_36" name="SbmlSpeciesExporter_42" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="0" y="370.72743225097656"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_37" name="SbmlSpeciesExporter_44" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="496.07598114013672" y="328.33302307128906"/>
            <Dimensions width="97.4306640625" height="33.301971435546875"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_38" name="SbmlSpeciesExporter_45" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="952.62444305419922" y="202.34146690368652"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_39" name="SbmlSpeciesExporter_47" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="700.85009002685547" y="335.25020599365234"/>
            <Dimensions width="108.44677734375" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_40" name="SbmlSpeciesExporter_48" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="389.72481536865234" y="398.37030029296875"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_41" name="SbmlSpeciesExporter_49" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="734.85137176513672" y="636.61203002929688"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_42" name="SbmlSpeciesExporter_51" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="784.10271453857422" y="483.35894775390625"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_43" name="SbmlSpeciesExporter_53" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="889.74028778076172" y="517.31451416015625"/>
            <Dimensions width="143.568359375" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_44" name="SbmlSpeciesExporter_55" metabolite="Metabolite_14">
          <BoundingBox>
            <Position x="101.08701324462891" y="651.09210205078125"/>
            <Dimensions width="133.513671875" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_45" name="SbmlSpeciesExporter_56" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="0.99966812133789062" y="304.74927520751953"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_46" name="SbmlReactionExporter_0_15" reaction="Reaction_0">
          <BoundingBox>
            <Position x="105.35072326660156" y="350.73834991455078"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="96.132978127219459" y="348.13350961858578"/>
                <End x="114.56846840598367" y="353.34319021051579"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_47" name="node_16" metaboliteGlyph="Layout_45" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="96.132978127219459" y="348.13350961858578"/>
                    <End x="65.999668121337891" y="337.1185954115366"/>
                    <BasePoint1 x="77.697487848455253" y="342.92382902665571"/>
                    <BasePoint2 x="67.23970541520552" y="338.71879207111363"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_48" name="node_17" metaboliteGlyph="Layout_36" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="96.132978127219459" y="348.13350961858578"/>
                    <End x="52.286669464945284" y="365.72743225097656"/>
                    <BasePoint1 x="77.697487848455253" y="342.92382902665571"/>
                    <BasePoint2 x="60.383206087009214" y="353.02321049083366"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_49" name="node_18" metaboliteGlyph="Layout_34" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="114.56846840598367" y="353.34319021051579"/>
                    <End x="146.72613525390625" y="357.08863683700906"/>
                    <BasePoint1 x="133.00395868474786" y="358.55287080244585"/>
                    <BasePoint2 x="144.47391953901811" y="359.12317396770993"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_50" name="node_19" metaboliteGlyph="Layout_44" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="114.56846840598367" y="353.34319021051579"/>
                    <End x="165.84509616531511" y="646.09210205078125"/>
                    <BasePoint1 x="133.00395868474786" y="358.55287080244585"/>
                    <BasePoint2 x="154.03339999472254" y="503.62490657459603"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_51" name="SbmlReactionExporter_1_20" reaction="Reaction_1">
          <BoundingBox>
            <Position x="235.98600006103516" y="210.84810447692871"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="229.16396130648525" y="206.88983302549883"/>
                <End x="242.80803881558506" y="214.80637592835859"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_52" name="node_21" metaboliteGlyph="Layout_33" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="229.16396130648525" y="206.88983302549883"/>
                    <End x="186.59843913481419" y="165.68505859375"/>
                    <BasePoint1 x="215.51988379738546" y="198.97329012263904"/>
                    <BasePoint2 x="197.64814208882487" y="180.3500386324796"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_53" name="node_22" metaboliteGlyph="Layout_32" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="229.16396130648525" y="206.88983302549883"/>
                    <End x="257.39217376708984" y="185.01538777050774"/>
                    <BasePoint1 x="215.51988379738546" y="198.97329012263904"/>
                    <BasePoint2 x="233.04500940496268" y="190.01520322085844"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_54" name="node_23" metaboliteGlyph="Layout_17" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="242.80803881558506" y="214.80637592835859"/>
                    <End x="280.73305511474609" y="224.81895738571296"/>
                    <BasePoint1 x="256.45211632468488" y="222.72291883121838"/>
                    <BasePoint2 x="272.00360509699044" y="225.75007383418063"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_55" name="SbmlReactionExporter_2_24">
          <BoundingBox>
            <Position x="683.34423065185547" y="599.69833374023438"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="684.82509696266868" y="592.52807853005152"/>
                <End x="681.86336434104226" y="606.86858895041723"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_56" name="node_25" metaboliteGlyph="Layout_42" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="684.82509696266868" y="592.52807853005152"/>
                    <End x="782.4559481554611" y="518.35894775390625"/>
                    <BasePoint1 x="687.78682958429511" y="578.1875681096858"/>
                    <BasePoint2 x="735.86182202528471" y="544.6881303267046"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_57" name="node_26" metaboliteGlyph="Layout_35" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="684.82509696266868" y="592.52807853005152"/>
                    <End x="633.12853240966797" y="595.56146909592985"/>
                    <BasePoint1 x="687.78682958429511" y="578.1875681096858"/>
                    <BasePoint2 x="661.19811415238814" y="583.28939099771628"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_58" name="node_27" metaboliteGlyph="Layout_41" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="681.86336434104226" y="606.86858895041723"/>
                    <End x="729.85137176513672" y="639.23150889587703"/>
                    <BasePoint1 x="678.90163171941583" y="621.20909937078295"/>
                    <BasePoint2 x="703.63606858686967" y="633.80543173842148"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_59" name="SbmlReactionExporter_3_28">
          <BoundingBox>
            <Position x="352.50826263427734" y="364.31602478027344"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="343.09608216719192" y="361.22616953416303"/>
                <End x="361.92044310136276" y="367.40588002638384"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_60" name="node_29" metaboliteGlyph="Layout_34" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="343.09608216719192" y="361.22616953416303"/>
                    <End x="293.28521728515625" y="353.32956142152892"/>
                    <BasePoint1 x="324.27172123302114" y="355.04645904194223"/>
                    <BasePoint2 x="304.07237902554596" y="352.6430826086804"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_61" name="node_30" metaboliteGlyph="Layout_12" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="343.09608216719192" y="361.22616953416303"/>
                    <End x="322.51917774710176" y="326.22591018676758"/>
                    <BasePoint1 x="324.27172123302114" y="355.04645904194223"/>
                    <BasePoint2 x="318.68935925651874" y="339.0912569912997"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_62" name="node_31" metaboliteGlyph="Layout_40" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="361.92044310136276" y="367.40588002638384"/>
                    <End x="392.6699272123131" y="393.37030029296875"/>
                    <BasePoint1 x="380.74480403553355" y="373.58559051860465"/>
                    <BasePoint2 x="391.41345585746603" y="385.0228730288419"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_63" name="node_32" metaboliteGlyph="Layout_37" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="361.92044310136276" y="367.40588002638384"/>
                    <End x="491.07598114013672" y="354.34930078652269"/>
                    <BasePoint1 x="380.74480403553355" y="373.58559051860465"/>
                    <BasePoint2 x="440.61648282137787" y="365.51237327561887"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_64" name="node_33" metaboliteGlyph="Layout_11" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="338.39439690114983" y="387.66204833984375"/>
                    <End x="349.38920649941463" y="373.81715570388326"/>
                    <BasePoint1 x="343.89180170028226" y="380.7396020218635"/>
                    <BasePoint2 x="346.27015036455191" y="383.31828662749308"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_65" name="node_34" metaboliteGlyph="Layout_40" role="inhibitor">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="384.72481536865234" y="399.07457087123146"/>
                    <End x="349.38920649941463" y="373.81715570388326"/>
                    <BasePoint1 x="367.05701093403349" y="386.44586328755736"/>
                    <BasePoint2 x="346.27015036455191" y="383.31828662749308"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_66" name="SbmlReactionExporter_4_35">
          <BoundingBox>
            <Position x="908.96916961669922" y="482.89250183105469"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="906.71811315363107" y="477.49952475807885"/>
                <End x="911.22022607976737" y="488.28547890403053"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_67" name="node_36" metaboliteGlyph="Layout_28" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="906.71811315363107" y="477.49952475807885"/>
                    <End x="917.38161790933793" y="434.3145751953125"/>
                    <BasePoint1 x="902.21600022749465" y="466.71357061212711"/>
                    <BasePoint2 x="908.67328083688221" y="447.81758436723192"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_68" name="node_37" metaboliteGlyph="Layout_42" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="906.71811315363107" y="477.49952475807885"/>
                    <End x="849.10271453857422" y="485.78890010101816"/>
                    <BasePoint1 x="902.21600022749465" y="466.71357061212711"/>
                    <BasePoint2 x="874.53382915150041" y="473.55474682008469"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_69" name="node_38" metaboliteGlyph="Layout_43" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="911.22022607976737" y="488.28547890403053"/>
                    <End x="935.45234915263825" y="512.31451416015625"/>
                    <BasePoint1 x="915.72233900590379" y="499.07143304998226"/>
                    <BasePoint2 x="926.7128723108051" y="508.38946214155715"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_70" name="SbmlReactionExporter_5_39" reaction="Reaction_2">
          <BoundingBox>
            <Position x="642.75444793701172" y="345.72447967529297"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="638.97942823930225" y="340.02488262870094"/>
                <End x="646.52946763472119" y="351.424076721885"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_71" name="node_40" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="638.97942823930225" y="340.02488262870094"/>
                    <End x="633.12184908693564" y="292.28683662414551"/>
                    <BasePoint1 x="631.4293888438832" y="328.62568853551687"/>
                    <BasePoint2 x="630.38810911655469" y="307.60646405653517"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_72" name="node_41" metaboliteGlyph="Layout_37" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="638.97942823930225" y="340.02488262870094"/>
                    <End x="598.50664520263672" y="334.84190213362035"/>
                    <BasePoint1 x="631.4293888438832" y="328.62568853551687"/>
                    <BasePoint2 x="613.08050717440528" y="328.8839968112726"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_73" name="node_42" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="646.52946763472119" y="351.424076721885"/>
                    <End x="676.07555389404297" y="380.93404907723084"/>
                    <BasePoint1 x="654.07950703014023" y="362.82327081506907"/>
                    <BasePoint2 x="666.96504031094628" y="374.72845846944597"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_74" name="node_43" metaboliteGlyph="Layout_39" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="646.52946763472119" y="351.424076721885"/>
                    <End x="695.85009002685547" y="356.58912936349896"/>
                    <BasePoint1 x="654.07950703014023" y="362.82327081506907"/>
                    <BasePoint2 x="676.85230837735253" y="362.55599861257997"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_75" name="node_44" metaboliteGlyph="Layout_13" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="624.0992788984056" y="377.68313598632812"/>
                    <End x="634.41729927419124" y="351.24643151988846"/>
                    <BasePoint1 x="629.25828908629842" y="364.46478375310829"/>
                    <BasePoint2 x="626.08015061137075" y="356.76838336448395"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_76" name="node_45" metaboliteGlyph="Layout_23" role="inhibitor">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="680.34657414539356" y="377.40135192871094"/>
                    <End x="651.0915965998322" y="340.20252783069748"/>
                    <BasePoint1 x="665.71908537261288" y="358.80193987970421"/>
                    <BasePoint2 x="659.42874526265268" y="334.68057598610199"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_77" name="SbmlReactionExporter_6_46">
          <BoundingBox>
            <Position x="1013.646598815918" y="683.2889404296875"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1008.7328653508966" y="680.20007421320133"/>
                <End x="1018.5603322809393" y="686.37780664617367"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_78" name="node_47" metaboliteGlyph="Layout_21" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1008.7328653508966" y="680.20007421320133"/>
                    <End x="989.12408439205353" y="660.50567626953125"/>
                    <BasePoint1 x="998.905398420854" y="674.022341780229"/>
                    <BasePoint2 x="991.55787467394316" y="665.71957591663704"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_79" name="node_48" metaboliteGlyph="Layout_16" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1008.7328653508966" y="680.20007421320133"/>
                    <End x="1034.433219909668" y="652.39742100079343"/>
                    <BasePoint1 x="998.905398420854" y="674.022341780229"/>
                    <BasePoint2 x="1014.2124424327503" y="661.66544828226813"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_80" name="node_49" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1018.5603322809393" y="686.37780664617367"/>
                    <End x="1045.4152755737305" y="695.74524891904287"/>
                    <BasePoint1 x="1028.3877992109819" y="692.555539079146"/>
                    <BasePoint2 x="1039.3584041248669" y="695.69482710733746"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_81" name="SbmlReactionExporter_7_50">
          <BoundingBox>
            <Position x="480.28893280029297" y="385.46638488769531"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="475.37519933527165" y="382.37751783891156"/>
                <End x="485.20266626531429" y="388.55525193647907"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_82" name="node_51" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="475.37519933527165" y="382.37751783891156"/>
                    <End x="596.29344940185547" y="394.83285902018855"/>
                    <BasePoint1 x="465.54773240522906" y="376.19978374134411"/>
                    <BasePoint2 x="528.46372417103157" y="383.97188785637445"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_83" name="node_52" metaboliteGlyph="Layout_23" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="475.37519933527165" y="382.37751783891156"/>
                    <End x="676.07555389404297" y="395.56195848366463"/>
                    <BasePoint1 x="465.54773240522906" y="376.19978374134411"/>
                    <BasePoint2 x="568.35477641712532" y="384.33643758811252"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_84" name="node_53" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="485.20266626531429" y="388.55525193647907"/>
                    <End x="687.05760955810547" y="449.51709506679083"/>
                    <BasePoint1 x="495.03013319535688" y="394.73298603404652"/>
                    <BasePoint2 x="593.50073810924187" y="423.66947407481052"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_85" name="SbmlReactionExporter_8_54">
          <BoundingBox>
            <Position x="371.36284637451172" y="557.27444458007812"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="364.28891698663887" y="559.40624264803796"/>
                <End x="378.43677576238457" y="555.14264651211829"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_86" name="node_55" metaboliteGlyph="Layout_15" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="364.28891698663887" y="559.40624264803796"/>
                    <End x="337.44528614118667" y="580.20309448242188"/>
                    <BasePoint1 x="350.14105821089311" y="563.66983878395774"/>
                    <BasePoint2 x="340.25620748210349" y="573.00236566716967"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_87" name="node_56" metaboliteGlyph="Layout_29" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="364.28891698663887" y="559.40624264803796"/>
                    <End x="372.61820515702601" y="587.96539306640625"/>
                    <BasePoint1 x="350.14105821089311" y="563.66983878395774"/>
                    <BasePoint2 x="357.84266699002313" y="576.88351495916186"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_88" name="node_57" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="378.43677576238457" y="555.14264651211829"/>
                    <End x="435.07839202880859" y="554.94583147077151"/>
                    <BasePoint1 x="392.58463453813033" y="550.87905037619851"/>
                    <BasePoint2 x="417.36847797740586" y="551.84654188950503"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_89" name="SbmlReactionExporter_9_58">
          <BoundingBox>
            <Position x="877.91887664794922" y="213.84312629699707"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="872.92030542547047" y="217.44056468443438"/>
                <End x="882.91744787042796" y="210.24568790955976"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_90" name="node_59" metaboliteGlyph="Layout_30" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="872.92030542547047" y="217.44056468443438"/>
                    <End x="880.49342954125575" y="267.49589920043945"/>
                    <BasePoint1 x="862.9231629805131" y="224.63544145930896"/>
                    <BasePoint2 x="869.20901064964505" y="247.86438952359288"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_91" name="node_60" metaboliteGlyph="Layout_22" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="872.92030542547047" y="217.44056468443438"/>
                    <End x="835.36300250413444" y="259.73358917236328"/>
                    <BasePoint1 x="862.9231629805131" y="224.63544145930896"/>
                    <BasePoint2 x="846.6437971310844" y="243.98323450955479"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_92" name="node_61" metaboliteGlyph="Layout_38" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="882.91744787042796" y="210.24568790955976"/>
                    <End x="947.62444305419922" y="210.26039412308813"/>
                    <BasePoint1 x="892.91459031538534" y="203.05081113468518"/>
                    <BasePoint2 x="922.76880229603171" y="204.85688343516802"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_93" name="SbmlReactionExporter_10_62">
          <BoundingBox>
            <Position x="331.82668304443359" y="450.44979858398438"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="327.95876742276278" y="446.58926218206233"/>
                <End x="335.69459866610441" y="454.31033498590642"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_94" name="node_63" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="327.95876742276278" y="446.58926218206233"/>
                    <End x="321.04478162461885" y="427.66204833984375"/>
                    <BasePoint1 x="320.22293617942114" y="438.86818937821823"/>
                    <BasePoint2 x="318.69990109118459" y="431.33485065806997"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_95" name="node_64" metaboliteGlyph="Layout_40" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="327.95876742276278" y="446.58926218206233"/>
                    <End x="384.72481536865234" y="419.40516941774888"/>
                    <BasePoint1 x="320.22293617942114" y="438.86818937821823"/>
                    <BasePoint2 x="350.53991796320133" y="427.20641119702253"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_96" name="node_65" metaboliteGlyph="Layout_25" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="335.69459866610441" y="454.31033498590642"/>
                    <End x="372.58037567138672" y="472.68569589509423"/>
                    <BasePoint1 x="343.43042990944605" y="462.03140778975052"/>
                    <BasePoint2 x="359.93936060125179" y="469.2888200433834"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_97" name="SbmlReactionExporter_11_66" reaction="Reaction_3">
          <BoundingBox>
            <Position x="228.17198944091797" y="131.81300354003906"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="221.31668392528186" y="132.86433076391688"/>
                <End x="235.02729495655407" y="130.76167631616124"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_98" name="node_67" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="221.31668392528186" y="132.86433076391688"/>
                    <End x="189.33976294008926" y="91.204116821289062"/>
                    <BasePoint1 x="207.60607289400969" y="134.96698521167249"/>
                    <BasePoint2 x="195.04526515923141" y="113.61121462841969"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_99" name="node_68" metaboliteGlyph="Layout_34" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="221.31668392528186" y="132.86433076391688"/>
                    <End x="218.99312041070516" y="331.76929473876953"/>
                    <BasePoint1 x="207.60607289400969" y="134.96698521167249"/>
                    <BasePoint2 x="209.87194389453936" y="233.89380358715994"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_100" name="node_69" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="235.02729495655407" y="130.76167631616124"/>
                    <End x="302.02086546210728" y="85.600387573242188"/>
                    <BasePoint1 x="248.73790598782625" y="128.65902186840563"/>
                    <BasePoint2 x="278.80703848278483" y="106.60404110888501"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_101" name="node_70" metaboliteGlyph="Layout_18" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="235.02729495655407" y="130.76167631616124"/>
                    <End x="290.77022552490234" y="130.25204976203051"/>
                    <BasePoint1 x="248.73790598782625" y="128.65902186840563"/>
                    <BasePoint2 x="273.18171851418236" y="128.92987220327916"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_102" name="node_71" metaboliteGlyph="Layout_32" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="235.02729495655407" y="130.76167631616124"/>
                    <End x="265.85883855759079" y="158.34849548339844"/>
                    <BasePoint1 x="248.73790598782625" y="128.65902186840563"/>
                    <BasePoint2 x="260.72602503052656" y="142.97809506396314"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_103" name="node_72" metaboliteGlyph="Layout_19" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="235.02729495655407" y="130.76167631616124"/>
                    <End x="299.64859182140719" y="35"/>
                    <BasePoint1 x="248.73790598782625" y="128.65902186840563"/>
                    <BasePoint2 x="277.62090166243479" y="81.30384732226392"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_104" name="node_73" metaboliteGlyph="Layout_33" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="189.22206115722656" y="137.41244265957687"/>
                    <End x="226.65611544414924" y="121.92856496084194"/>
                    <BasePoint1 x="207.9390883006879" y="129.6705038102094"/>
                    <BasePoint2 x="225.1402414473805" y="112.04412638164482"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_105" name="node_74" metaboliteGlyph="Layout_32" role="inhibitor">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="257.39217376708984" y="162.98256602709438"/>
                    <End x="229.6878634376867" y="141.69744211923617"/>
                    <BasePoint1 x="243.54001860238827" y="152.34000407316529"/>
                    <BasePoint2 x="231.20373743445543" y="151.58188069843328"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_106" name="SbmlReactionExporter_12_75" reaction="Reaction_5">
          <BoundingBox>
            <Position x="846.98363494873047" y="347.114990234375"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="842.94329950292627" y="341.18320361850976"/>
                <End x="851.02397039453467" y="353.04677685024024"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_107" name="node_76" metaboliteGlyph="Layout_39" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="842.94329950292627" y="341.18320361850976"/>
                    <End x="814.29686737060547" y="334.07013616200197"/>
                    <BasePoint1 x="834.86262861131786" y="329.31963038677935"/>
                    <BasePoint2 x="822.55958026805956" y="328.72898996645802"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_108" name="node_77" metaboliteGlyph="Layout_27" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="842.94329950292627" y="341.18320361850976"/>
                    <End x="813.70153045654297" y="316.14525981367609"/>
                    <BasePoint1 x="834.86262861131786" y="329.31963038677935"/>
                    <BasePoint2 x="822.26191181102831" y="319.7665517922951"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_109" name="node_78" metaboliteGlyph="Layout_42" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="851.02397039453467" y="353.04677685024024"/>
                    <End x="820.84717308405845" y="478.35894775390625"/>
                    <BasePoint1 x="859.10464128614308" y="364.91035008197065"/>
                    <BasePoint2 x="841.99607490800281" y="424.6005422258711"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_110" name="node_79" metaboliteGlyph="Layout_30" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="851.02397039453467" y="353.04677685024024"/>
                    <End x="881.04830253516025" y="307.49589920043945"/>
                    <BasePoint1 x="859.10464128614308" y="364.91035008197065"/>
                    <BasePoint2 x="872.09663963355376" y="339.1690179491377"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_111" name="node_80" metaboliteGlyph="Layout_8" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="851.02397039453467" y="353.04677685024024"/>
                    <End x="920.63097381591797" y="339.82222254418537"/>
                    <BasePoint1 x="859.10464128614308" y="364.91035008197065"/>
                    <BasePoint2 x="891.88797527393262" y="355.3321796210106"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_112" name="node_81" metaboliteGlyph="Layout_28" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="851.02397039453467" y="353.04677685024024"/>
                    <End x="899.3616294266626" y="394.3145751953125"/>
                    <BasePoint1 x="859.10464128614308" y="364.91035008197065"/>
                    <BasePoint2 x="881.25330307930494" y="382.57835594657422"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_113" name="node_82" metaboliteGlyph="Layout_30" role="inhibitor">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="876.30330549834707" y="307.49589920043945"/>
                    <End x="855.24854337548766" y="341.48548859592438"/>
                    <BasePoint1 x="865.77592443691742" y="324.49069389818192"/>
                    <BasePoint2 x="863.51345180224484" y="335.85598695747376"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_114" name="node_83" metaboliteGlyph="Layout_22" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="831.18520291146433" y="299.73358917236328"/>
                    <End x="855.24854337548766" y="341.48548859592438"/>
                    <BasePoint1 x="843.21687314347605" y="320.60953888414383"/>
                    <BasePoint2 x="863.51345180224484" y="335.85598695747376"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_115" name="SbmlReactionExporter_13_84">
          <BoundingBox>
            <Position x="1001.1121139526367" y="588.54702758789062"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="992.74564306085756" y="589.69108650901103"/>
                <End x="1009.4785848444159" y="587.40296866677022"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_116" name="node_85" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="992.74564306085756" y="589.69108650901103"/>
                    <End x="948.51726531982422" y="605.85128288806732"/>
                    <BasePoint1 x="976.01270127729936" y="591.97920435125184"/>
                    <BasePoint2 x="958.08174785267215" y="599.48727308021967"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_117" name="node_86" metaboliteGlyph="Layout_43" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="992.74564306085756" y="589.69108650901103"/>
                    <End x="965.60305437794887" y="547.31451416015625"/>
                    <BasePoint1 x="976.01270127729936" y="591.97920435125184"/>
                    <BasePoint2 x="966.62464238173447" y="570.21888871626425"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_118" name="node_87" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1009.4785848444159" y="587.40296866677022"/>
                    <End x="1068.2887496948242" y="582.17602950499861"/>
                    <BasePoint1 x="1026.2115266279741" y="585.11485082452941"/>
                    <BasePoint2 x="1051.4333736072886" y="583.07341070420387"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_119" name="node_88" metaboliteGlyph="Layout_16" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1009.4785848444159" y="587.40296866677022"/>
                    <End x="1044.1910945679513" y="620.22390747070312"/>
                    <BasePoint1 x="1026.2115266279741" y="585.11485082452941"/>
                    <BasePoint2 x="1039.3845460438522" y="602.09734968705607"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_120" name="node_89" metaboliteGlyph="Layout_21" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="987.88072798976407" y="620.50567626953125"/>
                    <End x="1002.4669389611304" y="598.45482498167905"/>
                    <BasePoint1 x="995.17383347544728" y="609.48025062560509"/>
                    <BasePoint2 x="1003.821763969624" y="608.36262237546748"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_121" name="node_90" metaboliteGlyph="Layout_16" role="inhibitor">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="1034.433219909668" y="624.14845172262369"/>
                    <End x="1002.4669389611304" y="598.45482498167905"/>
                    <BasePoint1 x="1018.4500794353992" y="611.30163835215137"/>
                    <BasePoint2 x="1003.821763969624" y="608.36262237546748"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_122" name="SbmlReactionExporter_14_91">
          <BoundingBox>
            <Position x="325.41271209716797" y="681.58450317382812"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="313.80860149676982" y="683.70331786895963"/>
                <End x="337.01682269756611" y="679.46568847869662"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_123" name="node_92" metaboliteGlyph="Layout_44" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="313.80860149676982" y="683.70331786895963"/>
                    <End x="239.60068511962891" y="677.82512146764111"/>
                    <BasePoint1 x="290.60038029597354" y="687.94094725922264"/>
                    <BasePoint2 x="259.29847740760215" y="683.94244171099763"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_124" name="node_93" metaboliteGlyph="Layout_24" role="sideSubstrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="313.80860149676982" y="683.70331786895963"/>
                    <End x="294.39636632711807" y="644.16326904296875"/>
                    <BasePoint1 x="290.60038029597354" y="687.94094725922264"/>
                    <BasePoint2 x="286.69631801134676" y="667.11151549866145"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_125" name="node_94" metaboliteGlyph="Layout_29" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="337.01682269756611" y="679.46568847869662"/>
                    <End x="381.93455242228629" y="627.96539306640625"/>
                    <BasePoint1 x="360.2250438983624" y="675.22805908843361"/>
                    <BasePoint2 x="376.88185346052342" y="650.53731872985418"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_126" name="node_95" metaboliteGlyph="Layout_5" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="337.01682269756611" y="679.46568847869662"/>
                    <End x="382.88215233567297" y="704.888916015625"/>
                    <BasePoint1 x="360.2250438983624" y="675.22805908843361"/>
                    <BasePoint2 x="377.35565341721679" y="688.99908020446355"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_127" name="node_96" metaboliteGlyph="Layout_31" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="337.01682269756611" y="679.46568847869662"/>
                    <End x="414.1800054990747" y="637.97824096679688"/>
                    <BasePoint1 x="360.2250438983624" y="675.22805908843361"/>
                    <BasePoint2 x="393.00457999891762" y="655.54374268004949"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_128" name="node_97" metaboliteGlyph="Layout_35" role="sideProduct">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="337.01682269756611" y="679.46568847869662"/>
                    <End x="563.12853240966797" y="616.77040625709571"/>
                    <BasePoint1 x="360.2250438983624" y="675.22805908843361"/>
                    <BasePoint2 x="467.47884345421426" y="644.93982532519885"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_129" name="node_98" metaboliteGlyph="Layout_29" role="inhibitor">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="371.12129974365234" y="626.8623443236354"/>
                    <End x="323.61649200257568" y="671.74714614199365"/>
                    <BasePoint1 x="347.36889587311401" y="649.30474523281453"/>
                    <BasePoint2 x="321.8202719079834" y="661.90978911015918"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_130" name="node_99" metaboliteGlyph="Layout_15" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="322.51487286319662" y="620.20309448242188"/>
                    <End x="323.61649200257568" y="671.74714614199365"/>
                    <BasePoint1 x="323.06568243288615" y="645.97512031220776"/>
                    <BasePoint2 x="321.8202719079834" y="661.90978911015918"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_131" name="text_SbmlSpeciesExporter_1" graphicalObject="Layout_4" text="Mg2P2O7">
          <BoundingBox>
            <Position x="692.05760955810547" y="446.93486022949219"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_132" name="text_SbmlSpeciesExporter_3" graphicalObject="Layout_5" text="dsDNA">
          <BoundingBox>
            <Position x="368.15959930419922" y="709.888916015625"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_133" name="text_SbmlSpeciesExporter_5" graphicalObject="Layout_6" text="NTP">
          <BoundingBox>
            <Position x="165.99190521240234" y="56.204116821289062"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_134" name="text_SbmlSpeciesExporter_6" graphicalObject="Layout_7" text="NTP">
          <BoundingBox>
            <Position x="913.51726531982422" y="600.94174194335938"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_135" name="text_SbmlSpeciesExporter_7" graphicalObject="Layout_8" text="dsDNA">
          <BoundingBox>
            <Position x="925.63097381591797" y="310.550537109375"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_136" name="text_SbmlSpeciesExporter_8" graphicalObject="Layout_9" text="Mg2P2O7">
          <BoundingBox>
            <Position x="440.07839202880859" y="545.77279663085938"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_137" name="text_SbmlSpeciesExporter_10" graphicalObject="Layout_10" text="T7 RNAP">
          <BoundingBox>
            <Position x="296.76988983154297" y="50.600387573242188"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_138" name="text_SbmlSpeciesExporter_12" graphicalObject="Layout_11" text="Mg2+">
          <BoundingBox>
            <Position x="307.51155853271484" y="392.66204833984375"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_139" name="text_SbmlSpeciesExporter_13" graphicalObject="Layout_12" text="NTP">
          <BoundingBox>
            <Position x="306.30300140380859" y="291.22591018676758"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_140" name="text_SbmlSpeciesExporter_14" graphicalObject="Layout_13" text="Mg2+">
          <BoundingBox>
            <Position x="601.29344940185547" y="382.68313598632812"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_141" name="text_SbmlSpeciesExporter_15" graphicalObject="Layout_14" text="NTP">
          <BoundingBox>
            <Position x="619.05333709716797" y="257.28683662414551"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_142" name="text_SbmlSpeciesExporter_16" graphicalObject="Layout_15" text="Mg2+">
          <BoundingBox>
            <Position x="307.08742523193359" y="585.20309448242188"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_143" name="text_SbmlSpeciesExporter_18" graphicalObject="Layout_16" text="PPi">
          <BoundingBox>
            <Position x="1039.433219909668" y="625.22390747070312"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_144" name="text_SbmlSpeciesExporter_19" graphicalObject="Layout_17" text="Mg2P2O7">
          <BoundingBox>
            <Position x="285.73305511474609" y="215.31989097595215"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_145" name="text_SbmlSpeciesExporter_20" graphicalObject="Layout_18" text="dsDNA">
          <BoundingBox>
            <Position x="295.77022552490234" y="116.57855224609375"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_146" name="text_SbmlSpeciesExporter_22" graphicalObject="Layout_19" text="short RNA">
          <BoundingBox>
            <Position x="280.52008819580078" y="0"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_147" name="text_SbmlSpeciesExporter_23" graphicalObject="Layout_20" text="Mg2P2O7">
          <BoundingBox>
            <Position x="1050.4152755737305" y="689.75738525390625"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_148" name="text_SbmlSpeciesExporter_24" graphicalObject="Layout_21" text="Mg2+">
          <BoundingBox>
            <Position x="959.65111541748047" y="625.50567626953125"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_149" name="text_SbmlSpeciesExporter_25" graphicalObject="Layout_22" text="Mg2+">
          <BoundingBox>
            <Position x="804.65837860107422" y="264.73358917236328"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_150" name="text_SbmlSpeciesExporter_26" graphicalObject="Layout_23" text="PPi">
          <BoundingBox>
            <Position x="681.07555389404297" y="382.40135192871094"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_151" name="text_SbmlSpeciesExporter_27" graphicalObject="Layout_24" text="NTP">
          <BoundingBox>
            <Position x="281.13057708740234" y="609.16326904296875"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_152" name="text_SbmlSpeciesExporter_28" graphicalObject="Layout_25" text="Mg2P2O7">
          <BoundingBox>
            <Position x="377.58037567138672" y="472.89170837402344"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_153" name="text_SbmlSpeciesExporter_30" graphicalObject="Layout_26" text="dsRNA">
          <BoundingBox>
            <Position x="1073.2887496948242" y="564.73150634765625"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_154" name="text_SbmlSpeciesExporter_31" graphicalObject="Layout_27" text="NTP">
          <BoundingBox>
            <Position x="778.70153045654297" y="288.69375991821289"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_155" name="text_SbmlSpeciesExporter_32" graphicalObject="Layout_28" text="T7 RNAP">
          <BoundingBox>
            <Position x="896.74340057373047" y="399.3145751953125"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_156" name="text_SbmlSpeciesExporter_33" graphicalObject="Layout_29" text="PPi">
          <BoundingBox>
            <Position x="376.12129974365234" y="592.96539306640625"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_157" name="text_SbmlSpeciesExporter_34" graphicalObject="Layout_30" text="PPi">
          <BoundingBox>
            <Position x="873.69225311279297" y="272.49589920043945"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_158" name="text_SbmlSpeciesExporter_35" graphicalObject="Layout_31" text="T7 RNAP">
          <BoundingBox>
            <Position x="413.14925384521484" y="602.97824096679688"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_159" name="text_SbmlSpeciesExporter_36" graphicalObject="Layout_32" text="PPi">
          <BoundingBox>
            <Position x="262.39217376708984" y="163.34849548339844"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_160" name="text_SbmlSpeciesExporter_37" graphicalObject="Layout_33" text="Mg2+">
          <BoundingBox>
            <Position x="154.22206115722656" y="130.68505859375"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_161" name="text_SbmlSpeciesExporter_39" graphicalObject="Layout_34" text="Promoter Bound Complex">
          <BoundingBox>
            <Position x="151.72613525390625" y="336.76929473876953"/>
            <Dimensions width="136.55908203125" height="23"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_162" name="text_SbmlSpeciesExporter_41" graphicalObject="Layout_35" text="asRNA">
          <BoundingBox>
            <Position x="568.12853240966797" y="591.68670654296875"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_163" name="text_SbmlSpeciesExporter_42" graphicalObject="Layout_36" text="dsDNA">
          <BoundingBox>
            <Position x="0" y="370.72743225097656"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_164" name="text_SbmlSpeciesExporter_44" graphicalObject="Layout_37" text="Initiation Complex">
          <BoundingBox>
            <Position x="496.07598114013672" y="328.33302307128906"/>
            <Dimensions width="97.4306640625" height="31.301971435546875"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_165" name="text_SbmlSpeciesExporter_45" graphicalObject="Layout_38" text="Mg2P2O7">
          <BoundingBox>
            <Position x="952.62444305419922" y="202.34146690368652"/>
            <Dimensions width="59.52685546875" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_166" name="text_SbmlSpeciesExporter_47" graphicalObject="Layout_39" text="Elongation Complex">
          <BoundingBox>
            <Position x="700.85009002685547" y="335.25020599365234"/>
            <Dimensions width="108.44677734375" height="23"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_167" name="text_SbmlSpeciesExporter_48" graphicalObject="Layout_40" text="PPi">
          <BoundingBox>
            <Position x="389.72481536865234" y="398.37030029296875"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_168" name="text_SbmlSpeciesExporter_49" graphicalObject="Layout_41" text="dsRNA">
          <BoundingBox>
            <Position x="734.85137176513672" y="636.61203002929688"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_169" name="text_SbmlSpeciesExporter_51" graphicalObject="Layout_42" text="mRNA">
          <BoundingBox>
            <Position x="784.10271453857422" y="483.35894775390625"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_170" name="text_SbmlSpeciesExporter_53" graphicalObject="Layout_43" text="3' Loop Extension Complex">
          <BoundingBox>
            <Position x="889.74028778076172" y="517.31451416015625"/>
            <Dimensions width="143.568359375" height="23"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_171" name="text_SbmlSpeciesExporter_55" graphicalObject="Layout_44" text="Antisense Bound Complex">
          <BoundingBox>
            <Position x="101.08701324462891" y="651.09210205078125"/>
            <Dimensions width="133.513671875" height="23"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_172" name="text_SbmlSpeciesExporter_56" graphicalObject="Layout_45" text="T7 RNAP">
          <BoundingBox>
            <Position x="0.99966812133789062" y="304.74927520751953"/>
            <Dimensions width="60" height="30"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfRenderInformation>
        <RenderInformation key="LocalRenderInformation_0" backgroundColor="#FFFFFFFF">
          <ListOfColorDefinitions>
            <ColorDefinition id="color_FFFFFFFF" value="#ffffff"/>
            <ColorDefinition id="color_FF000000" value="#000000"/>
          </ListOfColorDefinitions>
          <ListOfLineEndings>
            <LineEnding id="line_ending_NONE" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="0" y="0"/>
                <Dimensions width="0" height="0"/>
              </BoundingBox>
              <Group text-anchor="start" vtext-anchor="top">
              </Group>
            </LineEnding>
            <LineEnding id="line_ending_FULL" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-12" y="-6"/>
                <Dimensions width="12" height="12"/>
              </BoundingBox>
              <Group fill="color_FF000000" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="100%" y="50%"/>
                    <Element x="0" y="100%"/>
                    <Element x="0" y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="line_ending_CIRCLE" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-2" y="0"/>
                <Dimensions width="4" height="4"/>
              </BoundingBox>
              <Group fill="color_FFFFFFFF" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="0" cy="0" rx="4" ry="4"/>
              </Group>
            </LineEnding>
            <LineEnding id="line_ending_CROSSBAR" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="0" y="-6"/>
                <Dimensions width="1" height="12"/>
              </BoundingBox>
              <Group text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
          </ListOfLineEndings>
          <ListOfStyles>
            <Style key="LocalStyle_0" keyList="Layout_4">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_1" keyList="Layout_131">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_2" keyList="Layout_5">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5" basePoint1_x="-2+100%" basePoint1_y="0" basePoint2_x="100%" basePoint2_y="2"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%" basePoint1_x="100%" basePoint1_y="-2+100%" basePoint2_x="-2+100%" basePoint2_y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%" basePoint1_x="2" basePoint1_y="100%" basePoint2_x="0" basePoint2_y="-2+100%"/>
                    <Element x="0" y="5"/>
                    <Element x="5" y="0" basePoint1_x="0" basePoint1_y="2" basePoint2_x="2" basePoint2_y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_3" keyList="Layout_132">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_4" keyList="Layout_6">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_5" keyList="Layout_133">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_6" keyList="Layout_7">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_7" keyList="Layout_134">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_8" keyList="Layout_8">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5" basePoint1_x="-2+100%" basePoint1_y="0" basePoint2_x="100%" basePoint2_y="2"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%" basePoint1_x="100%" basePoint1_y="-2+100%" basePoint2_x="-2+100%" basePoint2_y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%" basePoint1_x="2" basePoint1_y="100%" basePoint2_x="0" basePoint2_y="-2+100%"/>
                    <Element x="0" y="5"/>
                    <Element x="5" y="0" basePoint1_x="0" basePoint1_y="2" basePoint2_x="2" basePoint2_y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_9" keyList="Layout_135">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_10" keyList="Layout_9">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_11" keyList="Layout_136">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_12" keyList="Layout_10">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5" basePoint1_x="-2+100%" basePoint1_y="0" basePoint2_x="100%" basePoint2_y="2"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%" basePoint1_x="100%" basePoint1_y="-2+100%" basePoint2_x="-2+100%" basePoint2_y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%" basePoint1_x="2" basePoint1_y="100%" basePoint2_x="0" basePoint2_y="-2+100%"/>
                    <Element x="0" y="5"/>
                    <Element x="5" y="0" basePoint1_x="0" basePoint1_y="2" basePoint2_x="2" basePoint2_y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_13" keyList="Layout_137">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_14" keyList="Layout_11">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_15" keyList="Layout_138">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_16" keyList="Layout_12">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_17" keyList="Layout_139">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_18" keyList="Layout_13">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_19" keyList="Layout_140">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_20" keyList="Layout_14">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_21" keyList="Layout_141">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_22" keyList="Layout_15">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_23" keyList="Layout_142">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_24" keyList="Layout_16">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_25" keyList="Layout_143">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_26" keyList="Layout_17">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_27" keyList="Layout_144">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_28" keyList="Layout_18">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5" basePoint1_x="-2+100%" basePoint1_y="0" basePoint2_x="100%" basePoint2_y="2"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%" basePoint1_x="100%" basePoint1_y="-2+100%" basePoint2_x="-2+100%" basePoint2_y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%" basePoint1_x="2" basePoint1_y="100%" basePoint2_x="0" basePoint2_y="-2+100%"/>
                    <Element x="0" y="5"/>
                    <Element x="5" y="0" basePoint1_x="0" basePoint1_y="2" basePoint2_x="2" basePoint2_y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_29" keyList="Layout_145">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_30" keyList="Layout_19">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_31" keyList="Layout_146">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_32" keyList="Layout_20">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_33" keyList="Layout_147">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_34" keyList="Layout_21">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_35" keyList="Layout_148">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_36" keyList="Layout_22">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_37" keyList="Layout_149">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_38" keyList="Layout_23">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_39" keyList="Layout_150">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_40" keyList="Layout_24">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_41" keyList="Layout_151">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_42" keyList="Layout_25">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_43" keyList="Layout_152">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_44" keyList="Layout_26">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_45" keyList="Layout_153">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_46" keyList="Layout_27">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_47" keyList="Layout_154">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_48" keyList="Layout_28">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5" basePoint1_x="-2+100%" basePoint1_y="0" basePoint2_x="100%" basePoint2_y="2"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%" basePoint1_x="100%" basePoint1_y="-2+100%" basePoint2_x="-2+100%" basePoint2_y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%" basePoint1_x="2" basePoint1_y="100%" basePoint2_x="0" basePoint2_y="-2+100%"/>
                    <Element x="0" y="5"/>
                    <Element x="5" y="0" basePoint1_x="0" basePoint1_y="2" basePoint2_x="2" basePoint2_y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_49" keyList="Layout_155">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_50" keyList="Layout_29">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_51" keyList="Layout_156">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_52" keyList="Layout_30">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_53" keyList="Layout_157">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_54" keyList="Layout_31">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5" basePoint1_x="-2+100%" basePoint1_y="0" basePoint2_x="100%" basePoint2_y="2"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%" basePoint1_x="100%" basePoint1_y="-2+100%" basePoint2_x="-2+100%" basePoint2_y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%" basePoint1_x="2" basePoint1_y="100%" basePoint2_x="0" basePoint2_y="-2+100%"/>
                    <Element x="0" y="5"/>
                    <Element x="5" y="0" basePoint1_x="0" basePoint1_y="2" basePoint2_x="2" basePoint2_y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_55" keyList="Layout_158">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_56" keyList="Layout_32">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_57" keyList="Layout_159">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_58" keyList="Layout_33">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_59" keyList="Layout_160">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_60" keyList="Layout_34">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%"/>
                    <Element x="0" y="5"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_61" keyList="Layout_161">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_62" keyList="Layout_35">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_63" keyList="Layout_162">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_64" keyList="Layout_36">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5" basePoint1_x="-2+100%" basePoint1_y="0" basePoint2_x="100%" basePoint2_y="2"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%" basePoint1_x="100%" basePoint1_y="-2+100%" basePoint2_x="-2+100%" basePoint2_y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%" basePoint1_x="2" basePoint1_y="100%" basePoint2_x="0" basePoint2_y="-2+100%"/>
                    <Element x="0" y="5"/>
                    <Element x="5" y="0" basePoint1_x="0" basePoint1_y="2" basePoint2_x="2" basePoint2_y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_65" keyList="Layout_163">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_66" keyList="Layout_37">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%"/>
                    <Element x="0" y="5"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_67" keyList="Layout_164">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_68" keyList="Layout_38">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_69" keyList="Layout_165">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_70" keyList="Layout_39">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%"/>
                    <Element x="0" y="5"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_71" keyList="Layout_166">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_72" keyList="Layout_40">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse cx="50%" cy="50%" rx="50%" ry="50%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_73" keyList="Layout_167">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_74" keyList="Layout_41">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_75" keyList="Layout_168">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_76" keyList="Layout_42">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="100%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_77" keyList="Layout_169">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_78" keyList="Layout_43">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%"/>
                    <Element x="0" y="5"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_79" keyList="Layout_170">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_80" keyList="Layout_44">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%"/>
                    <Element x="0" y="5"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_81" keyList="Layout_171">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_82" keyList="Layout_45">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-size="12" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon>
                  <ListOfElements>
                    <Element x="5" y="0"/>
                    <Element x="-5+100%" y="0"/>
                    <Element x="100%" y="5" basePoint1_x="-2+100%" basePoint1_y="0" basePoint2_x="100%" basePoint2_y="2"/>
                    <Element x="100%" y="-5+100%"/>
                    <Element x="-5+100%" y="100%" basePoint1_x="100%" basePoint1_y="-2+100%" basePoint2_x="-2+100%" basePoint2_y="100%"/>
                    <Element x="5" y="100%"/>
                    <Element x="0" y="-5+100%" basePoint1_x="2" basePoint1_y="100%" basePoint2_x="0" basePoint2_y="-2+100%"/>
                    <Element x="0" y="5"/>
                    <Element x="5" y="0" basePoint1_x="0" basePoint1_y="2" basePoint2_x="2" basePoint2_y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_83" keyList="Layout_172">
              <Group stroke="color_FF000000" stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_84" keyList="Layout_47">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_85" keyList="Layout_48">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_86" keyList="Layout_49">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_87" keyList="Layout_50">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_88" keyList="Layout_46">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="76" y="113"/>
                    <Element x="86" y="113"/>
                    <Element x="86" y="123"/>
                    <Element x="76" y="123"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_89" keyList="Layout_52">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_90" keyList="Layout_53">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_91" keyList="Layout_54">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_92" keyList="Layout_51">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="212" y="-27"/>
                    <Element x="222" y="-27"/>
                    <Element x="222" y="-17"/>
                    <Element x="212" y="-17"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_93" keyList="Layout_56">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_94" keyList="Layout_57">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_95" keyList="Layout_58">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_96" keyList="Layout_55">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="659" y="362"/>
                    <Element x="669" y="362"/>
                    <Element x="669" y="372"/>
                    <Element x="659" y="372"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_97" keyList="Layout_60">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_98" keyList="Layout_61">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_99" keyList="Layout_62">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_100" keyList="Layout_63">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_101" keyList="Layout_64">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CIRCLE">
              </Group>
            </Style>
            <Style key="LocalStyle_102" keyList="Layout_65">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CROSSBAR">
              </Group>
            </Style>
            <Style key="LocalStyle_103" keyList="Layout_59">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="323" y="127"/>
                    <Element x="333" y="127"/>
                    <Element x="333" y="137"/>
                    <Element x="323" y="137"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_104" keyList="Layout_67">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_105" keyList="Layout_68">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_106" keyList="Layout_69">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_107" keyList="Layout_66">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="885" y="245"/>
                    <Element x="895" y="245"/>
                    <Element x="895" y="255"/>
                    <Element x="885" y="255"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_108" keyList="Layout_71">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_109" keyList="Layout_72">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_110" keyList="Layout_73">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_111" keyList="Layout_74">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_112" keyList="Layout_75">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CIRCLE">
              </Group>
            </Style>
            <Style key="LocalStyle_113" keyList="Layout_76">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CROSSBAR">
              </Group>
            </Style>
            <Style key="LocalStyle_114" keyList="Layout_70">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="614" y="108"/>
                    <Element x="624" y="108"/>
                    <Element x="624" y="118"/>
                    <Element x="614" y="118"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_115" keyList="Layout_78">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_116" keyList="Layout_79">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_117" keyList="Layout_80">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_118" keyList="Layout_77">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="990" y="446"/>
                    <Element x="1000" y="446"/>
                    <Element x="1000" y="456"/>
                    <Element x="990" y="456"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_119" keyList="Layout_82">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_120" keyList="Layout_83">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_121" keyList="Layout_84">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_122" keyList="Layout_81">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="631" y="203"/>
                    <Element x="641" y="203"/>
                    <Element x="641" y="213"/>
                    <Element x="631" y="213"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_123" keyList="Layout_86">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_124" keyList="Layout_87">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_125" keyList="Layout_88">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_126" keyList="Layout_85">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="347" y="320"/>
                    <Element x="357" y="320"/>
                    <Element x="357" y="330"/>
                    <Element x="347" y="330"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_127" keyList="Layout_90">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_128" keyList="Layout_91">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_129" keyList="Layout_92">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_130" keyList="Layout_89">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="854" y="-24"/>
                    <Element x="864" y="-24"/>
                    <Element x="864" y="-14"/>
                    <Element x="854" y="-14"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_131" keyList="Layout_94">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_132" keyList="Layout_95">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_133" keyList="Layout_96">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_134" keyList="Layout_93">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="308" y="213"/>
                    <Element x="318" y="213"/>
                    <Element x="318" y="223"/>
                    <Element x="308" y="223"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_135" keyList="Layout_98">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_136" keyList="Layout_99">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_137" keyList="Layout_100">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_138" keyList="Layout_101">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_139" keyList="Layout_102">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_140" keyList="Layout_103">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_141" keyList="Layout_104">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CIRCLE">
              </Group>
            </Style>
            <Style key="LocalStyle_142" keyList="Layout_105">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CROSSBAR">
              </Group>
            </Style>
            <Style key="LocalStyle_143" keyList="Layout_97">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="199" y="-106"/>
                    <Element x="209" y="-106"/>
                    <Element x="209" y="-96"/>
                    <Element x="199" y="-96"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_144" keyList="Layout_107">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_145" keyList="Layout_108">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_146" keyList="Layout_109">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_147" keyList="Layout_110">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_148" keyList="Layout_111">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_149" keyList="Layout_112">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_150" keyList="Layout_113">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CROSSBAR">
              </Group>
            </Style>
            <Style key="LocalStyle_151" keyList="Layout_114">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CIRCLE">
              </Group>
            </Style>
            <Style key="LocalStyle_152" keyList="Layout_106">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="818" y="110"/>
                    <Element x="828" y="110"/>
                    <Element x="828" y="120"/>
                    <Element x="818" y="120"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_153" keyList="Layout_116">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_154" keyList="Layout_117">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_155" keyList="Layout_118">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_156" keyList="Layout_119">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_157" keyList="Layout_120">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CIRCLE">
              </Group>
            </Style>
            <Style key="LocalStyle_158" keyList="Layout_121">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CROSSBAR">
              </Group>
            </Style>
            <Style key="LocalStyle_159" keyList="Layout_115">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="972" y="351"/>
                    <Element x="982" y="351"/>
                    <Element x="982" y="361"/>
                    <Element x="972" y="361"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_160" keyList="Layout_123">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_161" keyList="Layout_124">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
              </Group>
            </Style>
            <Style key="LocalStyle_162" keyList="Layout_125">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_163" keyList="Layout_126">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_164" keyList="Layout_127">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_165" keyList="Layout_128">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_FULL">
              </Group>
            </Style>
            <Style key="LocalStyle_166" keyList="Layout_129">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CROSSBAR">
              </Group>
            </Style>
            <Style key="LocalStyle_167" keyList="Layout_130">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FF000000" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_CIRCLE">
              </Group>
            </Style>
            <Style key="LocalStyle_168" keyList="Layout_122">
              <Group stroke="color_FF000000" stroke-width="1" fill="color_FFFFFFFF" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" startHead="NONE" endHead="line_ending_NONE">
                <Polygon>
                  <ListOfElements>
                    <Element x="320" y="430"/>
                    <Element x="330" y="430"/>
                    <Element x="330" y="440"/>
                    <Element x="320" y="440"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
          </ListOfStyles>
        </RenderInformation>
      </ListOfRenderInformation>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="nurhauptwegT7-SBML-COPASI.sbml.xml">
    <SBMLMap SBMLid="Henri_Michaelis_Menten__irreversible" COPASIkey="Function_8"/>
    <SBMLMap SBMLid="MM_with_Competitive_Inhibition" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="Mg" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Mg3PO42_solid" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="NTPMg" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="NTP___Mg2____NTPMg" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="PPi___2_Pi" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Pi" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="SbmlReactionExporter_0" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="SbmlReactionExporter_1" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="SbmlReactionExporter_11" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="SbmlReactionExporter_5" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="T7RNAP_inactivated" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="T7_RNAP___T7RNAP_inactivated" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="_3_Mg___2_Pi___Mg3PO42_solid" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="species_0" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="species_11" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="species_17" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="species_21" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="species_29" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="species_38" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="species_40" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="species_43" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="species_46" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="species_50" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="species_52" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="species_54" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_3"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_67" name="hour" symbol="h">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        3600*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
