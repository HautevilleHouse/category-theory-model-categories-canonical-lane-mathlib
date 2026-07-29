import HautevilleHouse.CategoryTheoryModelCategoriesCanonicalLaneLean.FibrationCofibrationWEPackage

namespace HautevilleHouse
namespace CategoryTheoryModelCategoriesCanonicalLaneLean

structure CylinderObjectPackage {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    {W : WeakEquivalencePackage E} (C : CofibrationPackage E) where
  cylinderObjectExists : Prop
  leftHomotopyDefined : Prop
  cylinderMap : Prop

structure CylinderObjectEvidence {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    {W : WeakEquivalencePackage E} {C : CofibrationPackage E}
    (Cy : CylinderObjectPackage C) where
  cylinderObjectExistsClosed : Cy.cylinderObjectExists
  leftHomotopyDefinedClosed : Cy.leftHomotopyDefined
  cylinderMapClosed : Cy.cylinderMap

def CylinderObjectClosed {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    {W : WeakEquivalencePackage E} {C : CofibrationPackage E}
    (Cy : CylinderObjectPackage C) : Prop :=
  Cy.cylinderObjectExists ∧ Cy.leftHomotopyDefined ∧ Cy.cylinderMap

theorem cylinder_object_closed_from_evidence {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    {W : WeakEquivalencePackage E} {C : CofibrationPackage E}
    (Cy : CylinderObjectPackage C) (Ev : CylinderObjectEvidence Cy) : CylinderObjectClosed Cy := by
  exact And.intro Ev.cylinderObjectExistsClosed
    (And.intro Ev.leftHomotopyDefinedClosed Ev.cylinderMapClosed)

structure PathObjectPackage {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    {W : WeakEquivalencePackage E} (F : FibrationPackage E) where
  pathObjectExists : Prop
  rightHomotopyDefined : Prop
  pathMap : Prop

structure PathObjectEvidence {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    {W : WeakEquivalencePackage E} {F : FibrationPackage E}
    (P : PathObjectPackage F) where
  pathObjectExistsClosed : P.pathObjectExists
  rightHomotopyDefinedClosed : P.rightHomotopyDefined
  pathMapClosed : P.pathMap

def PathObjectClosed {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    {W : WeakEquivalencePackage E} {F : FibrationPackage E}
    (P : PathObjectPackage F) : Prop :=
  P.pathObjectExists ∧ P.rightHomotopyDefined ∧ P.pathMap

theorem path_object_closed_from_evidence {M : ModelCategoryStructure} {E : ModelCategoryEvidence M}
    {W : WeakEquivalencePackage E} {F : FibrationPackage E}
    (P : PathObjectPackage F) (Ev : PathObjectEvidence P) : PathObjectClosed P := by
  exact And.intro Ev.pathObjectExistsClosed
    (And.intro Ev.rightHomotopyDefinedClosed Ev.pathMapClosed)

end CategoryTheoryModelCategoriesCanonicalLaneLean
end HautevilleHouse