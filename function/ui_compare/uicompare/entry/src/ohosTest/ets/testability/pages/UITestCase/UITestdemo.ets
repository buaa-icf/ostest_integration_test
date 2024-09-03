import { BlankModifier, CommonModifier} from '@ohos.arkui.modifier';
export class MyBlankModifier extends BlankModifier {
  applyNormalAttribute(instance: MyBlankModifier): void {
    instance.color(Color.Yellow)
  }
}