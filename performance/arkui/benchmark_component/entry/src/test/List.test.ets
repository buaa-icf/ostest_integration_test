import monitorInheritConstructorLocalTest from './MonitorInheritConstructorLocal.test';
import trackStringArrSampleTest from './TrackStringArrSample.test';
import trackStringSampleTest from './TrackStringSample.test';

export default function testsuite() {
  monitorInheritConstructorLocalTest();
  trackStringArrSampleTest();
  trackStringSampleTest();
}
