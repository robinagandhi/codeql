// generated by codegen/codegen.py
import codeql.swift.elements
import TestUtils

from IfConfigClause x, string isActive
where
  toBeTested(x) and
  not x.isUnknown() and
  if x.isActive() then isActive = "yes" else isActive = "no"
select x, "isActive:", isActive
