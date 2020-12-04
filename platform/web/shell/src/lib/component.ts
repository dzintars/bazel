import { LitElement, TemplateResult, CSSResultArray } from 'lit-element'
import template from './template'
import style from './style'
import { oswee } from '@oswee/protobuf/modules/v1/modules'

export class PlatformShellElement extends LitElement {
  static get is(): string {
    return 'platform-shell'
  }

  constructor() {
    super()
    const x: oswee.modules.v1.IModule = {
      id: '',
      title: '',
      permalink: '',
    }
    console.log(x)
  }

  protected render(): TemplateResult {
    return template.call(this)
  }

  public static get styles(): CSSResultArray {
    return [style]
  }
}
