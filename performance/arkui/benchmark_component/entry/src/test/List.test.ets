import classModelTest from './ClassModel.test';
import monitorInheritConstructorLocalTest from './MonitorInheritConstructorLocal.test';
import trackNumberArrSampleTest from './TrackNumberArrSample.test';
import trackNumberSampleTest from './TrackNumberSample.test';
import trackStringArrSampleTest from './TrackStringArrSample.test';
import trackStringSampleTest from './TrackStringSample.test';
import trackBooleanArrSampleTest from './TrackBooleanArrSample.test';
import trackBooleanSampleTest from './TrackBooleanSample.test';

export default function testsuite() {
  classModelTest();
  monitorInheritConstructorLocalTest();
  trackNumberArrSampleTest();
  trackNumberSampleTest();
  trackStringArrSampleTest();
  trackStringSampleTest();
  trackBooleanArrSampleTest();
  trackBooleanSampleTest();
}
