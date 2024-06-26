/*
 * generated by Xtext 2.34.0
 */
package ics.helper.ide;

import com.google.inject.Guice;
import com.google.inject.Injector;
import ics.helper.HelperDSLRuntimeModule;
import ics.helper.HelperDSLStandaloneSetup;
import org.eclipse.xtext.util.Modules2;

/**
 * Initialization support for running Xtext languages as language servers.
 */
public class HelperDSLIdeSetup extends HelperDSLStandaloneSetup {

	@Override
	public Injector createInjector() {
		return Guice.createInjector(Modules2.mixin(new HelperDSLRuntimeModule(), new HelperDSLIdeModule()));
	}
	
}
