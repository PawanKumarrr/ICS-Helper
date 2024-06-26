/**
 * generated by Xtext 2.34.0
 */
package ics.helper.helperDSL;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Modify Command</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link ics.helper.helperDSL.ModifyCommand#getSchedule <em>Schedule</em>}</li>
 *   <li>{@link ics.helper.helperDSL.ModifyCommand#getEvent <em>Event</em>}</li>
 *   <li>{@link ics.helper.helperDSL.ModifyCommand#getTime <em>Time</em>}</li>
 *   <li>{@link ics.helper.helperDSL.ModifyCommand#getValue <em>Value</em>}</li>
 * </ul>
 *
 * @see ics.helper.helperDSL.HelperDSLPackage#getModifyCommand()
 * @model
 * @generated
 */
public interface ModifyCommand extends Command
{
  /**
   * Returns the value of the '<em><b>Schedule</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Schedule</em>' reference.
   * @see #setSchedule(Schedule)
   * @see ics.helper.helperDSL.HelperDSLPackage#getModifyCommand_Schedule()
   * @model
   * @generated
   */
  Schedule getSchedule();

  /**
   * Sets the value of the '{@link ics.helper.helperDSL.ModifyCommand#getSchedule <em>Schedule</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Schedule</em>' reference.
   * @see #getSchedule()
   * @generated
   */
  void setSchedule(Schedule value);

  /**
   * Returns the value of the '<em><b>Event</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Event</em>' reference.
   * @see #setEvent(Event)
   * @see ics.helper.helperDSL.HelperDSLPackage#getModifyCommand_Event()
   * @model
   * @generated
   */
  Event getEvent();

  /**
   * Sets the value of the '{@link ics.helper.helperDSL.ModifyCommand#getEvent <em>Event</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Event</em>' reference.
   * @see #getEvent()
   * @generated
   */
  void setEvent(Event value);

  /**
   * Returns the value of the '<em><b>Time</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Time</em>' attribute.
   * @see #setTime(String)
   * @see ics.helper.helperDSL.HelperDSLPackage#getModifyCommand_Time()
   * @model
   * @generated
   */
  String getTime();

  /**
   * Sets the value of the '{@link ics.helper.helperDSL.ModifyCommand#getTime <em>Time</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Time</em>' attribute.
   * @see #getTime()
   * @generated
   */
  void setTime(String value);

  /**
   * Returns the value of the '<em><b>Value</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Value</em>' attribute.
   * @see #setValue(String)
   * @see ics.helper.helperDSL.HelperDSLPackage#getModifyCommand_Value()
   * @model
   * @generated
   */
  String getValue();

  /**
   * Sets the value of the '{@link ics.helper.helperDSL.ModifyCommand#getValue <em>Value</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Value</em>' attribute.
   * @see #getValue()
   * @generated
   */
  void setValue(String value);

} // ModifyCommand
