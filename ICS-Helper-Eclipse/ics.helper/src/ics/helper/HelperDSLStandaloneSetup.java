/*
 * generated by Xtext 2.34.0
 */
package ics.helper;


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
public class HelperDSLStandaloneSetup extends HelperDSLStandaloneSetupGenerated {

	public static void doSetup() {
		new HelperDSLStandaloneSetup().createInjectorAndDoEMFRegistration();
	}
}
