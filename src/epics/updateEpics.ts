import 'rxjs';
import * as Rx from 'rxjs';
import { ActionsObservable, Epic } from 'redux-observable'
import { State, ActionObject } from '../types'
import { BlisAppBase, BlisAppMetaData, BlisAppList, EntityBase, EntityMetaData, EntityList, ActionBase, ActionMetaData, ActionList, ActionTypes } from 'blis-models';
import { editBlisAction, editBlisApp, editBlisEntity, setBlisApp } from "./apiHelpers";

export const editApplication: Epic<ActionObject, State> = (action$: ActionsObservable<ActionObject>): Rx.Observable<ActionObject> => {
    return action$.ofType("EDIT_BLIS_APPLICATION")
        .flatMap((action: any) =>
            editBlisApp(action.key, action.blisApp.appId, action.blisApp)
        );
}

export const editAction: Epic<ActionObject, State> = (action$: ActionsObservable<ActionObject>): Rx.Observable<ActionObject> => {
    return action$.ofType("EDIT_ACTION")
        .flatMap((action: any) =>
            editBlisAction(action.key, action.currentAppId, action.blisAction.actionId, action.blisAction)
        );
}

export const editEntity: Epic<ActionObject, State> = (action$: ActionsObservable<ActionObject>): Rx.Observable<ActionObject> => {
    return action$.ofType("CREATE_NEGATIVE_ENTITY_FULFILLED")
        .flatMap((action: any) =>
            editBlisEntity(action.key, action.currentAppId, action.positiveEntity)
        );
}

export const setBlisApplication: Epic<ActionObject, State> = (action$: ActionsObservable<ActionObject>): Rx.Observable<ActionObject> => {
    return action$.ofType("SET_CURRENT_BLIS_APP")
        .flatMap((action: any) =>
            setBlisApp(action.key, action.currentBLISApp)
        );
}
