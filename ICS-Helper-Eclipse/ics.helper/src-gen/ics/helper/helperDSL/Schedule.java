/**
 * generated by Xtext 2.34.0
 */
package ics.helper.helperDSL;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Schedule</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link ics.helper.helperDSL.Schedule#getName <em>Name</em>}</li>
 * </ul>
 *
 * @see ics.helper.helperDSL.HelperDSLPackage#getSchedule()
 * @model
 * @generated
 */
public interface Schedule extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see ics.helper.helperDSL.HelperDSLPackage#getSchedule_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link ics.helper.helperDSL.Schedule#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

} // Schedule