/**
* Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
*/
const actions = require('../support/components/ActionsPage')
const actionsModal = require('../support/components/ActionsModal')
const homePage = require('../support/components/HomePage')
const entities = require('../support/components/EntitiesPage')
const entityModal = require('../support/components/EntityModal')
const modelPage = require('../support/components/ModelPage')
const logDialogPage = require('../support/components/logdialogspage')
const scorerModal = require('../support/components/scorermodal')
const trainDialogPage = require('../support/components/traindialogspage')
const editDialogModal = require('../support/components/editdialogmodal')

describe('Intro to Entities', function () {
  const momentSeconds = Cypress.moment().format("MMDD-HHmmSSS")
  const modelName = `e2e-entities-${momentSeconds}`
  const entityName = "city"
  const action01 = "I don't know what city you want"
  const action02 = "The weather in the $city{enter} is probably sunny"

  afterEach(function () {
    const fileName = `introentities_${this.currentTest.state}-${this.currentTest.title}`;
    cy.wait(3000)
      .screenshot(fileName)
  })

  it('create a new model', function () {
    homePage.navigateTo()
    homePage.createNewModel(modelName)
    modelPage.verifyPageTitle(modelName)
  })

  it('should create a cit entity', function () {
    modelPage.navigateToEntities()
    entities.clickButtonNewEntity()
    entityModal.TypeEntityName(entityName)
    entityModal.ClickCreateButton()
    entities.VerifyItemInList(entityName)
  })

  it('should be able to add text action with disqualifying entity', () => {
    modelPage.navigateToActions()

    // Create text action with question for city
    actions.clickNewAction()
    actionsModal.selectTypeText()
    actionsModal.typeOnResponseBox(action01)
    actionsModal.typeDisqualifyingEntities('$city')
    actionsModal.clickCreateButton()
  })

  it(`should be able to add text action with required entity`, () => {
    // Create text action which tells user about city
    actions.clickNewAction()
    actionsModal.selectTypeText()
    actionsModal.typeOnResponseBox(action02)
    actionsModal.clickCreateButton()
  })

  it('should be able to train', () => {
    modelPage.navigateToTrainDialogs()
    trainDialogPage.verifyPageTitle()
    trainDialogPage.createNew()
    editDialogModal.typeYourMessage("Hello")
    editDialogModal.clickScoreActions()
    scorerModal.selectAnActionWithText(action01)
    cy.wait(2000)
    editDialogModal.typeYourMessage("Seattle")

    //**----------------- blocked from this step------------- */
    // 4. Highlight seattle, then click city.
    // 5. Click Score Actions
    // 6. <Validation step> Note city value is now in the bot's memory.
    // 7. 'Weather in $city is probably sunny' is now available as a response.
    // 8. Select 'Weather in $city is probably sunny'.
    //**----------------- TODO: to complete steps above ------------- */

    // editDialogModal.highlightWord("Seattle");        // <<<=== BLOCKED.
    // editDialogModal.verifyTokenNodeExists();
    // editDialogModal.clickScoreActions();
    // scorerModal.selectAnActionWithText(action01);

    //** TODO: wrap the test up after steps above */
    cy.wait(2000)
    editDialogModal.clickDoneTeaching()
  })

  /** FEATURE: Delete a Model */
  it('should delete an existent model', () => {
    homePage.navigateTo()
    homePage.deleteModel(modelName)
  })
})
