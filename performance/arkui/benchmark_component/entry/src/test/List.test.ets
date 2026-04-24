import classModelTest from './ClassModel.test';
import monitorInheritConstructorLocalTest from './MonitorInheritConstructorLocal.test';
import trackBooleanArrSampleTest from './TrackBooleanArrSample.test';
import trackBooleanSampleTest from './TrackBooleanSample.test';

export default function testsuite() {
  classModelTest();
  monitorInheritConstructorLocalTest();
  trackBooleanArrSampleTest();
  trackBooleanSampleTest();
}
