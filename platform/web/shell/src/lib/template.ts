import {html, TemplateResult } from 'lit-element'
import { PlatformShellElement } from './component'
import '@oswee/components/avatar'

export default function template(this: PlatformShellElement): TemplateResult {
  return html`
    <h1>Platform Shell</h1>
    <ui-avatar></ui-avatar>
    `
}
