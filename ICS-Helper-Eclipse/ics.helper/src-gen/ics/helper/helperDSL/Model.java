/**
 * generated by Xtext 2.34.0
 */
package ics.helper.helperDSL;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Model</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link ics.helper.helperDSL.Model#getCommands <em>Commands</em>}</li>
 * </ul>
 *
 * @see ics.helper.helperDSL.HelperDSLPackage#getModel()
 * @model
 * @generated
 */
public interface Model extends EObject
{
  /**
   * Returns the value of the '<em><b>Commands</b></em>' containment reference list.
   * The list contents are of type {@link ics.helper.helperDSL.Command}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Commands</em>' containment reference list.
   * @see ics.helper.helperDSL.HelperDSLPackage#getModel_Commands()
   * @model containment="true"
   * @generated
   */
  EList<Command> getCommands();

} // Model
