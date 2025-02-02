// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from
  ModuleDecl x, ModuleDecl getModule, Type getInterfaceType, string getName, string isBuiltinModule,
  string isSystemModule
where
  toBeTested(x) and
  not x.isUnknown() and
  getModule = x.getModule() and
  getInterfaceType = x.getInterfaceType() and
  getName = x.getName() and
  (if x.isBuiltinModule() then isBuiltinModule = "yes" else isBuiltinModule = "no") and
  if x.isSystemModule() then isSystemModule = "yes" else isSystemModule = "no"
select x, "getModule:", getModule, "getInterfaceType:", getInterfaceType, "getName:", getName,
  "isBuiltinModule:", isBuiltinModule, "isSystemModule:", isSystemModule
