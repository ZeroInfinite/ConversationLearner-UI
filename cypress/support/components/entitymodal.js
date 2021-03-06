/**
 * Copyright (c) Microsoft Corporation. All rights reserved.  
 * Licensed under the MIT License.
 */

export function ClickEntityTypeDropdown()       { cy.Get('[data-testid="entity-creator-entity-type-dropdown"]').Click() }
export function ClickEntityType(type)           { cy.Get(`[aria-label="${type}"]`).Click() }
export function TypeEntityName(entityName)      { cy.Get('[data-testid="entity-creator-entity-name-text"]').type(entityName) } 
export function ClickCreateButton()             { cy.Get('[data-testid="entity-creator-button-save"]').Click() }

export function ClickMultiValueCheckbox()       { cy.Get('[data-testid="entity-creator-multi-valued-checkbox"] > button.cl-checkbox').Click() }
export function ClickNegatableCheckbox()        { cy.Get('[data-testid="entity-creator-negatable-checkbox"] > button.cl-checkbox').Click() }

