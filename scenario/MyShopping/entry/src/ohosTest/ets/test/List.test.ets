import abilityTest from './Ability.test';
import homePageTest from './uiTestSuites/home.test'

export default function testsuite() {
  abilityTest();
  homePageTest()
}