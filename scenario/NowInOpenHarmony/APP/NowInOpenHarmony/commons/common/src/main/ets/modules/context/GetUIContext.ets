/**
 * 获取上下文对象包装类
 */
export class GetUIContext{
  private _context: UIContext

  public set context(value: UIContext) {
    this._context = value
  }

  public get context(): UIContext {
    return this._context
  }

  constructor(context: UIContext) {
    this._context = context
  }

}