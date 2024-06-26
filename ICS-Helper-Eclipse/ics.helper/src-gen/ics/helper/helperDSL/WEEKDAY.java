/**
 * generated by Xtext 2.34.0
 */
package ics.helper.helperDSL;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.eclipse.emf.common.util.Enumerator;

/**
 * <!-- begin-user-doc -->
 * A representation of the literals of the enumeration '<em><b>WEEKDAY</b></em>',
 * and utility methods for working with them.
 * <!-- end-user-doc -->
 * @see ics.helper.helperDSL.HelperDSLPackage#getWEEKDAY()
 * @model
 * @generated
 */
public enum WEEKDAY implements Enumerator
{
  /**
   * The '<em><b>MO</b></em>' literal object.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #MO_VALUE
   * @generated
   * @ordered
   */
  MO(0, "MO", "Monday"),

  /**
   * The '<em><b>TU</b></em>' literal object.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #TU_VALUE
   * @generated
   * @ordered
   */
  TU(1, "TU", "Tuesday"),

  /**
   * The '<em><b>WE</b></em>' literal object.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #WE_VALUE
   * @generated
   * @ordered
   */
  WE(2, "WE", "Wednesday"),

  /**
   * The '<em><b>TH</b></em>' literal object.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #TH_VALUE
   * @generated
   * @ordered
   */
  TH(3, "TH", "Thursday"),

  /**
   * The '<em><b>FR</b></em>' literal object.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #FR_VALUE
   * @generated
   * @ordered
   */
  FR(4, "FR", "Friday"),

  /**
   * The '<em><b>SA</b></em>' literal object.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #SA_VALUE
   * @generated
   * @ordered
   */
  SA(5, "SA", "Saturday"),

  /**
   * The '<em><b>SU</b></em>' literal object.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #SU_VALUE
   * @generated
   * @ordered
   */
  SU(6, "SU", "Sunday");

  /**
   * The '<em><b>MO</b></em>' literal value.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #MO
   * @model literal="Monday"
   * @generated
   * @ordered
   */
  public static final int MO_VALUE = 0;

  /**
   * The '<em><b>TU</b></em>' literal value.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #TU
   * @model literal="Tuesday"
   * @generated
   * @ordered
   */
  public static final int TU_VALUE = 1;

  /**
   * The '<em><b>WE</b></em>' literal value.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #WE
   * @model literal="Wednesday"
   * @generated
   * @ordered
   */
  public static final int WE_VALUE = 2;

  /**
   * The '<em><b>TH</b></em>' literal value.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #TH
   * @model literal="Thursday"
   * @generated
   * @ordered
   */
  public static final int TH_VALUE = 3;

  /**
   * The '<em><b>FR</b></em>' literal value.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #FR
   * @model literal="Friday"
   * @generated
   * @ordered
   */
  public static final int FR_VALUE = 4;

  /**
   * The '<em><b>SA</b></em>' literal value.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #SA
   * @model literal="Saturday"
   * @generated
   * @ordered
   */
  public static final int SA_VALUE = 5;

  /**
   * The '<em><b>SU</b></em>' literal value.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #SU
   * @model literal="Sunday"
   * @generated
   * @ordered
   */
  public static final int SU_VALUE = 6;

  /**
   * An array of all the '<em><b>WEEKDAY</b></em>' enumerators.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private static final WEEKDAY[] VALUES_ARRAY =
    new WEEKDAY[]
    {
      MO,
      TU,
      WE,
      TH,
      FR,
      SA,
      SU,
    };

  /**
   * A public read-only list of all the '<em><b>WEEKDAY</b></em>' enumerators.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static final List<WEEKDAY> VALUES = Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY));

  /**
   * Returns the '<em><b>WEEKDAY</b></em>' literal with the specified literal value.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param literal the literal.
   * @return the matching enumerator or <code>null</code>.
   * @generated
   */
  public static WEEKDAY get(String literal)
  {
    for (int i = 0; i < VALUES_ARRAY.length; ++i)
    {
      WEEKDAY result = VALUES_ARRAY[i];
      if (result.toString().equals(literal))
      {
        return result;
      }
    }
    return null;
  }

  /**
   * Returns the '<em><b>WEEKDAY</b></em>' literal with the specified name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param name the name.
   * @return the matching enumerator or <code>null</code>.
   * @generated
   */
  public static WEEKDAY getByName(String name)
  {
    for (int i = 0; i < VALUES_ARRAY.length; ++i)
    {
      WEEKDAY result = VALUES_ARRAY[i];
      if (result.getName().equals(name))
      {
        return result;
      }
    }
    return null;
  }

  /**
   * Returns the '<em><b>WEEKDAY</b></em>' literal with the specified integer value.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the integer value.
   * @return the matching enumerator or <code>null</code>.
   * @generated
   */
  public static WEEKDAY get(int value)
  {
    switch (value)
    {
      case MO_VALUE: return MO;
      case TU_VALUE: return TU;
      case WE_VALUE: return WE;
      case TH_VALUE: return TH;
      case FR_VALUE: return FR;
      case SA_VALUE: return SA;
      case SU_VALUE: return SU;
    }
    return null;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private final int value;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private final String name;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private final String literal;

  /**
   * Only this class can construct instances.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private WEEKDAY(int value, String name, String literal)
  {
    this.value = value;
    this.name = name;
    this.literal = literal;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public int getValue()
  {
    return value;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String getName()
  {
    return name;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String getLiteral()
  {
    return literal;
  }

  /**
   * Returns the literal value of the enumerator, which is its string representation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String toString()
  {
    return literal;
  }
  
} //WEEKDAY
