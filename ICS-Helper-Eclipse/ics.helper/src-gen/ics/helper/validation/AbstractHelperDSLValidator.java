/*
 * generated by Xtext 2.34.0
 */
package ics.helper.validation;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.validation.AbstractDeclarativeValidator;

public abstract class AbstractHelperDSLValidator extends AbstractDeclarativeValidator {
	
	@Override
	protected List<EPackage> getEPackages() {
		List<EPackage> result = new ArrayList<EPackage>();
		result.add(ics.helper.helperDSL.HelperDSLPackage.eINSTANCE);
		return result;
	}
}
