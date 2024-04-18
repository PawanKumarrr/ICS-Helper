/*
 * generated by Xtext 2.34.0
 */
grammar InternalHelperDSL;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package ics.helper.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package ics.helper.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import ics.helper.services.HelperDSLGrammarAccess;

}

@parser::members {

 	private HelperDSLGrammarAccess grammarAccess;

    public InternalHelperDSLParser(TokenStream input, HelperDSLGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected HelperDSLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getModelAccess().getCommandsCommandParserRuleCall_0());
			}
			lv_commands_0_0=ruleCommand
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getModelRule());
				}
				add(
					$current,
					"commands",
					lv_commands_0_0,
					"ics.helper.HelperDSL.Command");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleCommand
entryRuleCommand returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCommandRule()); }
	iv_ruleCommand=ruleCommand
	{ $current=$iv_ruleCommand.current; }
	EOF;

// Rule Command
ruleCommand returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getCommandAccess().getCreateCommandParserRuleCall_0());
		}
		this_CreateCommand_0=ruleCreateCommand
		{
			$current = $this_CreateCommand_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getCommandAccess().getSplitCommandParserRuleCall_1());
		}
		this_SplitCommand_1=ruleSplitCommand
		{
			$current = $this_SplitCommand_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getCommandAccess().getMergeCommandParserRuleCall_2());
		}
		this_MergeCommand_2=ruleMergeCommand
		{
			$current = $this_MergeCommand_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getCommandAccess().getModifyCommandParserRuleCall_3());
		}
		this_ModifyCommand_3=ruleModifyCommand
		{
			$current = $this_ModifyCommand_3.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleCreateCommand
entryRuleCreateCommand returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCreateCommandRule()); }
	iv_ruleCreateCommand=ruleCreateCommand
	{ $current=$iv_ruleCreateCommand.current; }
	EOF;

// Rule CreateCommand
ruleCreateCommand returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='create'
		{
			newLeafNode(otherlv_0, grammarAccess.getCreateCommandAccess().getCreateKeyword_0());
		}
		otherlv_1='schedule'
		{
			newLeafNode(otherlv_1, grammarAccess.getCreateCommandAccess().getScheduleKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getCreateCommandAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCreateCommandRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getCreateCommandAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCreateCommandAccess().getEventsEventParserRuleCall_4_0());
				}
				lv_events_4_0=ruleEvent
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCreateCommandRule());
					}
					add(
						$current,
						"events",
						lv_events_4_0,
						"ics.helper.HelperDSL.Event");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_5='}'
		{
			newLeafNode(otherlv_5, grammarAccess.getCreateCommandAccess().getRightCurlyBracketKeyword_5());
		}
	)
;

// Entry rule entryRuleEvent
entryRuleEvent returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEventRule()); }
	iv_ruleEvent=ruleEvent
	{ $current=$iv_ruleEvent.current; }
	EOF;

// Rule Event
ruleEvent returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='event'
		{
			newLeafNode(otherlv_0, grammarAccess.getEventAccess().getEventKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getEventAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getEventRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_2='start'
		{
			newLeafNode(otherlv_2, grammarAccess.getEventAccess().getStartKeyword_2());
		}
		(
			(
				lv_startTime_3_0=RULE_STRING
				{
					newLeafNode(lv_startTime_3_0, grammarAccess.getEventAccess().getStartTimeSTRINGTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getEventRule());
					}
					setWithLastConsumed(
						$current,
						"startTime",
						lv_startTime_3_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
		otherlv_4='end'
		{
			newLeafNode(otherlv_4, grammarAccess.getEventAccess().getEndKeyword_4());
		}
		(
			(
				lv_endTime_5_0=RULE_STRING
				{
					newLeafNode(lv_endTime_5_0, grammarAccess.getEventAccess().getEndTimeSTRINGTerminalRuleCall_5_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getEventRule());
					}
					setWithLastConsumed(
						$current,
						"endTime",
						lv_endTime_5_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
		(
			otherlv_6='location'
			{
				newLeafNode(otherlv_6, grammarAccess.getEventAccess().getLocationKeyword_6_0());
			}
			(
				(
					lv_location_7_0=RULE_STRING
					{
						newLeafNode(lv_location_7_0, grammarAccess.getEventAccess().getLocationSTRINGTerminalRuleCall_6_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getEventRule());
						}
						setWithLastConsumed(
							$current,
							"location",
							lv_location_7_0,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
				)
			)
		)?
		(
			otherlv_8='description'
			{
				newLeafNode(otherlv_8, grammarAccess.getEventAccess().getDescriptionKeyword_7_0());
			}
			(
				(
					lv_description_9_0=RULE_STRING
					{
						newLeafNode(lv_description_9_0, grammarAccess.getEventAccess().getDescriptionSTRINGTerminalRuleCall_7_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getEventRule());
						}
						setWithLastConsumed(
							$current,
							"description",
							lv_description_9_0,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
				)
			)
		)?
		(
			otherlv_10='recur'
			{
				newLeafNode(otherlv_10, grammarAccess.getEventAccess().getRecurKeyword_8_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getEventAccess().getRecurRecurRuleEnumRuleCall_8_1_0());
					}
					lv_recur_11_0=ruleRecurRule
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getEventRule());
						}
						set(
							$current,
							"recur",
							lv_recur_11_0,
							"ics.helper.HelperDSL.RecurRule");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getEventAccess().getDaysOfWeekDaysOfWeekParserRuleCall_8_2_0());
					}
					lv_daysOfWeek_12_0=ruleDaysOfWeek
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getEventRule());
						}
						set(
							$current,
							"daysOfWeek",
							lv_daysOfWeek_12_0,
							"ics.helper.HelperDSL.DaysOfWeek");
						afterParserOrEnumRuleCall();
					}
				)
			)?
		)?
		(
			otherlv_13='link'
			{
				newLeafNode(otherlv_13, grammarAccess.getEventAccess().getLinkKeyword_9_0());
			}
			(
				(
					lv_link_14_0=RULE_STRING
					{
						newLeafNode(lv_link_14_0, grammarAccess.getEventAccess().getLinkSTRINGTerminalRuleCall_9_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getEventRule());
						}
						setWithLastConsumed(
							$current,
							"link",
							lv_link_14_0,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
				)
			)
		)?
		(
			otherlv_15='organizer'
			{
				newLeafNode(otherlv_15, grammarAccess.getEventAccess().getOrganizerKeyword_10_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getEventAccess().getOrganizerPersonParserRuleCall_10_1_0());
					}
					lv_organizer_16_0=rulePerson
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getEventRule());
						}
						set(
							$current,
							"organizer",
							lv_organizer_16_0,
							"ics.helper.HelperDSL.Person");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		(
			otherlv_17='invitees'
			{
				newLeafNode(otherlv_17, grammarAccess.getEventAccess().getInviteesKeyword_11_0());
			}
			otherlv_18='{'
			{
				newLeafNode(otherlv_18, grammarAccess.getEventAccess().getLeftCurlyBracketKeyword_11_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getEventAccess().getInviteesPersonParserRuleCall_11_2_0());
					}
					lv_invitees_19_0=rulePerson
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getEventRule());
						}
						add(
							$current,
							"invitees",
							lv_invitees_19_0,
							"ics.helper.HelperDSL.Person");
						afterParserOrEnumRuleCall();
					}
				)
			)+
			otherlv_20='}'
			{
				newLeafNode(otherlv_20, grammarAccess.getEventAccess().getRightCurlyBracketKeyword_11_3());
			}
		)?
		(
			otherlv_21='reminder'
			{
				newLeafNode(otherlv_21, grammarAccess.getEventAccess().getReminderKeyword_12_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getEventAccess().getReminderReminderParserRuleCall_12_1_0());
					}
					lv_reminder_22_0=ruleReminder
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getEventRule());
						}
						set(
							$current,
							"reminder",
							lv_reminder_22_0,
							"ics.helper.HelperDSL.Reminder");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleReminder
entryRuleReminder returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getReminderRule()); }
	iv_ruleReminder=ruleReminder
	{ $current=$iv_ruleReminder.current; }
	EOF;

// Rule Reminder
ruleReminder returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='time'
		{
			newLeafNode(otherlv_0, grammarAccess.getReminderAccess().getTimeKeyword_0());
		}
		(
			(
				lv_time_1_0=RULE_INT
				{
					newLeafNode(lv_time_1_0, grammarAccess.getReminderAccess().getTimeINTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getReminderRule());
					}
					setWithLastConsumed(
						$current,
						"time",
						lv_time_1_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
		(
			otherlv_2='title'
			{
				newLeafNode(otherlv_2, grammarAccess.getReminderAccess().getTitleKeyword_2_0());
			}
			(
				(
					lv_title_3_0=RULE_STRING
					{
						newLeafNode(lv_title_3_0, grammarAccess.getReminderAccess().getTitleSTRINGTerminalRuleCall_2_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getReminderRule());
						}
						setWithLastConsumed(
							$current,
							"title",
							lv_title_3_0,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
				)
			)
		)?
	)
;

// Entry rule entryRulePerson
entryRulePerson returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPersonRule()); }
	iv_rulePerson=rulePerson
	{ $current=$iv_rulePerson.current; }
	EOF;

// Rule Person
rulePerson returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='name'
		{
			newLeafNode(otherlv_0, grammarAccess.getPersonAccess().getNameKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_STRING
				{
					newLeafNode(lv_name_1_0, grammarAccess.getPersonAccess().getNameSTRINGTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getPersonRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
		otherlv_2='email'
		{
			newLeafNode(otherlv_2, grammarAccess.getPersonAccess().getEmailKeyword_2());
		}
		(
			(
				lv_email_3_0=RULE_STRING
				{
					newLeafNode(lv_email_3_0, grammarAccess.getPersonAccess().getEmailSTRINGTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getPersonRule());
					}
					setWithLastConsumed(
						$current,
						"email",
						lv_email_3_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
	)
;

// Entry rule entryRuleDaysOfWeek
entryRuleDaysOfWeek returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDaysOfWeekRule()); }
	iv_ruleDaysOfWeek=ruleDaysOfWeek
	{ $current=$iv_ruleDaysOfWeek.current; }
	EOF;

// Rule DaysOfWeek
ruleDaysOfWeek returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getDaysOfWeekAccess().getDaysWEEKDAYEnumRuleCall_0_0());
				}
				lv_days_0_0=ruleWEEKDAY
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDaysOfWeekRule());
					}
					add(
						$current,
						"days",
						lv_days_0_0,
						"ics.helper.HelperDSL.WEEKDAY");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_1=','
			{
				newLeafNode(otherlv_1, grammarAccess.getDaysOfWeekAccess().getCommaKeyword_1_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getDaysOfWeekAccess().getDaysWEEKDAYEnumRuleCall_1_1_0());
					}
					lv_days_2_0=ruleWEEKDAY
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getDaysOfWeekRule());
						}
						add(
							$current,
							"days",
							lv_days_2_0,
							"ics.helper.HelperDSL.WEEKDAY");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleSplitCommand
entryRuleSplitCommand returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSplitCommandRule()); }
	iv_ruleSplitCommand=ruleSplitCommand
	{ $current=$iv_ruleSplitCommand.current; }
	EOF;

// Rule SplitCommand
ruleSplitCommand returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='split'
		{
			newLeafNode(otherlv_0, grammarAccess.getSplitCommandAccess().getSplitKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSplitCommandRule());
					}
				}
				otherlv_1=RULE_ID
				{
					newLeafNode(otherlv_1, grammarAccess.getSplitCommandAccess().getScheduleScheduleCrossReference_1_0());
				}
			)
		)
		otherlv_2='by'
		{
			newLeafNode(otherlv_2, grammarAccess.getSplitCommandAccess().getByKeyword_2());
		}
		(
			(
				lv_criteria_3_0=RULE_STRING
				{
					newLeafNode(lv_criteria_3_0, grammarAccess.getSplitCommandAccess().getCriteriaSTRINGTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSplitCommandRule());
					}
					setWithLastConsumed(
						$current,
						"criteria",
						lv_criteria_3_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
	)
;

// Entry rule entryRuleMergeCommand
entryRuleMergeCommand returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMergeCommandRule()); }
	iv_ruleMergeCommand=ruleMergeCommand
	{ $current=$iv_ruleMergeCommand.current; }
	EOF;

// Rule MergeCommand
ruleMergeCommand returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='merge'
		{
			newLeafNode(otherlv_0, grammarAccess.getMergeCommandAccess().getMergeKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMergeCommandRule());
					}
				}
				otherlv_1=RULE_ID
				{
					newLeafNode(otherlv_1, grammarAccess.getMergeCommandAccess().getSchedulesScheduleCrossReference_1_0());
				}
			)
		)+
		otherlv_2='into'
		{
			newLeafNode(otherlv_2, grammarAccess.getMergeCommandAccess().getIntoKeyword_2());
		}
		(
			(
				lv_target_3_0=RULE_ID
				{
					newLeafNode(lv_target_3_0, grammarAccess.getMergeCommandAccess().getTargetIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMergeCommandRule());
					}
					setWithLastConsumed(
						$current,
						"target",
						lv_target_3_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleModifyCommand
entryRuleModifyCommand returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModifyCommandRule()); }
	iv_ruleModifyCommand=ruleModifyCommand
	{ $current=$iv_ruleModifyCommand.current; }
	EOF;

// Rule ModifyCommand
ruleModifyCommand returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='modify'
		{
			newLeafNode(otherlv_0, grammarAccess.getModifyCommandAccess().getModifyKeyword_0());
		}
		(
			(
				otherlv_1='schedule'
				{
					newLeafNode(otherlv_1, grammarAccess.getModifyCommandAccess().getScheduleKeyword_1_0_0());
				}
				(
					(
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModifyCommandRule());
							}
						}
						otherlv_2=RULE_ID
						{
							newLeafNode(otherlv_2, grammarAccess.getModifyCommandAccess().getScheduleScheduleCrossReference_1_0_1_0());
						}
					)
				)
			)
			    |
			(
				otherlv_3='event'
				{
					newLeafNode(otherlv_3, grammarAccess.getModifyCommandAccess().getEventKeyword_1_1_0());
				}
				(
					(
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModifyCommandRule());
							}
						}
						otherlv_4=RULE_ID
						{
							newLeafNode(otherlv_4, grammarAccess.getModifyCommandAccess().getEventEventCrossReference_1_1_1_0());
						}
					)
				)
			)
		)
		otherlv_5='set'
		{
			newLeafNode(otherlv_5, grammarAccess.getModifyCommandAccess().getSetKeyword_2());
		}
		(
			(
				(
					(
						lv_time_6_0='time'
						{
							newLeafNode(lv_time_6_0, grammarAccess.getModifyCommandAccess().getTimeTimeKeyword_3_0_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModifyCommandRule());
							}
							setWithLastConsumed($current, "time", lv_time_6_0, "time");
						}
					)
				)
				(
					(
						lv_value_7_0=RULE_STRING
						{
							newLeafNode(lv_value_7_0, grammarAccess.getModifyCommandAccess().getValueSTRINGTerminalRuleCall_3_0_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModifyCommandRule());
							}
							setWithLastConsumed(
								$current,
								"value",
								lv_value_7_0,
								"org.eclipse.xtext.common.Terminals.STRING");
						}
					)
				)
			)
			    |
			(
				otherlv_8='owner'
				{
					newLeafNode(otherlv_8, grammarAccess.getModifyCommandAccess().getOwnerKeyword_3_1_0());
				}
				(
					(
						lv_value_9_0=RULE_STRING
						{
							newLeafNode(lv_value_9_0, grammarAccess.getModifyCommandAccess().getValueSTRINGTerminalRuleCall_3_1_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModifyCommandRule());
							}
							setWithLastConsumed(
								$current,
								"value",
								lv_value_9_0,
								"org.eclipse.xtext.common.Terminals.STRING");
						}
					)
				)
			)
			    |
			(
				otherlv_10='location'
				{
					newLeafNode(otherlv_10, grammarAccess.getModifyCommandAccess().getLocationKeyword_3_2_0());
				}
				(
					(
						lv_value_11_0=RULE_STRING
						{
							newLeafNode(lv_value_11_0, grammarAccess.getModifyCommandAccess().getValueSTRINGTerminalRuleCall_3_2_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModifyCommandRule());
							}
							setWithLastConsumed(
								$current,
								"value",
								lv_value_11_0,
								"org.eclipse.xtext.common.Terminals.STRING");
						}
					)
				)
			)
		)
	)
;

// Rule RecurRule
ruleRecurRule returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='daily'
			{
				$current = grammarAccess.getRecurRuleAccess().getDAILYEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getRecurRuleAccess().getDAILYEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='weekly'
			{
				$current = grammarAccess.getRecurRuleAccess().getWEEKLYEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getRecurRuleAccess().getWEEKLYEnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='monthly'
			{
				$current = grammarAccess.getRecurRuleAccess().getMONTHLYEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getRecurRuleAccess().getMONTHLYEnumLiteralDeclaration_2());
			}
		)
		    |
		(
			enumLiteral_3='yearly'
			{
				$current = grammarAccess.getRecurRuleAccess().getYEARLYEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_3, grammarAccess.getRecurRuleAccess().getYEARLYEnumLiteralDeclaration_3());
			}
		)
		    |
		(
			enumLiteral_4='weekly on'
			{
				$current = grammarAccess.getRecurRuleAccess().getBYDAYEnumLiteralDeclaration_4().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_4, grammarAccess.getRecurRuleAccess().getBYDAYEnumLiteralDeclaration_4());
			}
		)
	)
;

// Rule WEEKDAY
ruleWEEKDAY returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='Monday'
			{
				$current = grammarAccess.getWEEKDAYAccess().getMOEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getWEEKDAYAccess().getMOEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='Tuesday'
			{
				$current = grammarAccess.getWEEKDAYAccess().getTUEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getWEEKDAYAccess().getTUEnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='Wednesday'
			{
				$current = grammarAccess.getWEEKDAYAccess().getWEEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getWEEKDAYAccess().getWEEnumLiteralDeclaration_2());
			}
		)
		    |
		(
			enumLiteral_3='Thursday'
			{
				$current = grammarAccess.getWEEKDAYAccess().getTHEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_3, grammarAccess.getWEEKDAYAccess().getTHEnumLiteralDeclaration_3());
			}
		)
		    |
		(
			enumLiteral_4='Friday'
			{
				$current = grammarAccess.getWEEKDAYAccess().getFREnumLiteralDeclaration_4().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_4, grammarAccess.getWEEKDAYAccess().getFREnumLiteralDeclaration_4());
			}
		)
		    |
		(
			enumLiteral_5='Saturday'
			{
				$current = grammarAccess.getWEEKDAYAccess().getSAEnumLiteralDeclaration_5().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_5, grammarAccess.getWEEKDAYAccess().getSAEnumLiteralDeclaration_5());
			}
		)
		    |
		(
			enumLiteral_6='Sunday'
			{
				$current = grammarAccess.getWEEKDAYAccess().getSUEnumLiteralDeclaration_6().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_6, grammarAccess.getWEEKDAYAccess().getSUEnumLiteralDeclaration_6());
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;