import monitorInheritConstructorLocalTest from './MonitorInheritConstructorLocal.test';
import trackNumberArrSampleTest from './TrackNumberArrSample.test';
import trackNumberSampleTest from './TrackNumberSample.test';
import trackStringArrSampleTest from './TrackStringArrSample.test';
import trackStringSampleTest from './TrackStringSample.test';

export default function testsuite() {
  monitorInheritConstructorLocalTest();
  trackNumberArrSampleTest();
  trackNumberSampleTest();
  trackStringArrSampleTest();
  trackStringSampleTest();
}
