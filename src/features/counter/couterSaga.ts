import { PayloadAction } from "@reduxjs/toolkit"
import { takeEvery, takeLatest } from "redux-saga/effects"

function* logging(action: PayloadAction){
    console.log('logging in couter saga running ... - ', action)
}

export function* couterSaga(){
    console.log('couter saga running...')
    yield takeLatest('*', logging)
}