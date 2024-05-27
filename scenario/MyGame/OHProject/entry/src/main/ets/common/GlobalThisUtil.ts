export function SetToGlobalThis(key: string, obj: unknown): void {
  globalThis[key] = obj
}

export function GetFromGlobalThis(key: string) {
  return globalThis[key]
}