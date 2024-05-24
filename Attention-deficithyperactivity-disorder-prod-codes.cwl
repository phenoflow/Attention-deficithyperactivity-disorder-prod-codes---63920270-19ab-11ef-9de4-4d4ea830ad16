cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  attention-deficithyperactivity-disorder-adhd-prod-codes-equasym---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-equasym---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-100mg---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-equasym---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-lisdexamfetamine---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-lisdexamfetamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-100mg---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-concerta---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-concerta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-lisdexamfetamine---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-medikinet---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-medikinet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-concerta---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-methylphenidate---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-methylphenidate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-medikinet---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-strattera---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-strattera---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-methylphenidate---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-durophet---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-durophet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-strattera---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-elvanse---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-elvanse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-durophet---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-solution---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-elvanse---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-atomoxetine---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-atomoxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-solution---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-dexedrine---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-dexedrine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-atomoxetine---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-tranquilyn---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-tranquilyn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-dexedrine---primary/output
  attention-deficithyperactivity-disorder-adhd-prod-codes-tablet---primary:
    run: attention-deficithyperactivity-disorder-adhd-prod-codes-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-tranquilyn---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: attention-deficithyperactivity-disorder-adhd-prod-codes-tablet---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
