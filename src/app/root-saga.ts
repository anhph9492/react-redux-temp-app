import { all } from "redux-saga/effects";
import { couterSaga } from "../features/counter/couterSaga";

function* helloSaga() {
  console.log("hello saga 01 funtion* ...");
}

export default function* RootSaga() {
  console.log("root saga running ...");
  yield all([helloSaga(), couterSaga()]);
}
