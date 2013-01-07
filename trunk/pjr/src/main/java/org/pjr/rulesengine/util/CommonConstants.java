package org.pjr.rulesengine.util;

public class CommonConstants {


	/** Rules Engine queries Starts */
	//attribute
	public static final String QUERY_INSERTINTOATTRIBUTE_INSERT="RE_INSERTINTOATTRIBUTE_INSERT";
	public static final String QUERY_DELETEATTRIBUTE_DELETE="RE_DELETEATTRIBUTE_DELETE";
	public static final String QUERY_UPDATEATTRIBUTE_UPDATE="RE_UPDATEATTRIBUTE_UPDATE";
	public static final String QUERY_FETCHALLATTRIBUTES_SELECT="RE_FETCHALLATTRIBUTES_SELECT";
	public static final String QUERY_FETCHATTRIBUTE_SELECT="RE_FETCHATTRIBUTE_SELECT";
	public static final String QUERY_FETCHATTRIBUTESALLOWEDFORSUBRULE_SELECT="RE_FETCHATTRIBUTESALLOWEDFORSUBRULE_SELECT";
	public static final String QUERY_ISATTRIBUTENAMEEXISTS_SELECT="RE_ISATTRIBUTENAMEEXISTS_SELECT";
	public static final String QUERY_ISATTRIBUTEVALUEEXISTS_SELECT="RE_ISATTRIBUTEVALUEEXISTS_SELECT";
	public static final String QUERY_SAVEASSIGNATTRIBUTESTOSUBRULE_DELETE="RE_SAVEASSIGNATTRIBUTESTOSUBRULE_DELETE";
	public static final String QUERY_SAVEASSIGNATTRIBUTESTOSUBRULE_INSERT="RE_SAVEASSIGNATTRIBUTESTOSUBRULE_INSERT";
	public static final String QUERY_ATTRIBUTENAMESUSEDINSUBRULELOGIC_SELECT="RE_ATTRIBUTENAMESUSEDINSUBRULELOGIC_SELECT";
	public static final String QUERY_FETCHSUBRULENAMES_SELECT="RE_FETCHSUBRULENAMES_SELECT";
	//general
	public static final String QUERY_GETPACUSER_SELECT="RE_GETPACUSER_SELECT";
	//operator
	public static final String QUERY_INSERTINTOOPERATOR_INSERT = "RE_INSERTINTOOPERATOR_INSERT";
	public static final String QUERY_UPDATEOPERATOR_UPDATE="RE_UPDATEOPERATOR_UPDATE";
	public static final String QUERY_DELETEOPERATOR_DELETE="RE_DELETEOPERATOR_DELETE";
	public static final String QUERY_FETCHALLOPERATORS_SELECT="RE_FETCHALLOPERATORS_SELECT";
	public static final String QUERY_FETCHOPERATOR_SELECT="RE_FETCHOPERATOR_SELECT";
	public static final String QUERY_FETCHRULEOPERATORMAPPINGFORRULE_SELECT="RE_FETCHRULEOPERATORMAPPINGFORRULE_SELECT";
	public static final String QUERY_FETCHOPERATORSALLOWEDFORRULE_SELECT="RE_FETCHOPERATORSALLOWEDFORRULE_SELECT";
	public static final String QUERY_SAVEASSIGNOPERATORSTORULE_DELETE="RE_SAVEASSIGNOPERATORSTORULE_DELETE";
	public static final String QUERY_SAVEASSIGNOPERATORSTORULE_INSERT = "RE_SAVEASSIGNOPERATORSTORULE_INSERT";
	public static final String QUERY_ISOPERATORNAMEEXISTS_SELECT="RE_ISOPERATORNAMEEXISTS_SELECT";
	public static final String QUERY_ISOPERATORVALUEEXISTS_SELECT="RE_ISOPERATORVALUEEXISTS_SELECT";
	public static final String QUERY_FETCHOPERATORSALLOWEDFORSUBRULE_SELECT="RE_FETCHOPERATORSALLOWEDFORSUBRULE_SELECT";
	public static final String QUERY_SAVEASSIGNOPERATORSTOSUBRULE_DELETE="RE_SAVEASSIGNOPERATORSTOSUBRULE_DELETE";
	public static final String QUERY_SAVEASSIGNOPERATORSTOSUBRULE_INSERT="RE_SAVEASSIGNOPERATORSTOSUBRULE_INSERT";
	public static final String QUERY_OPERATORNAMESINSUBRULELOGIC_SELECT="RE_OPERATORNAMESINSUBRULELOGIC_SELECT";
	public static final String QUERY_GETRULESFOROPERATOR_SELECT="RE_GETRULESFOROPERATOR_SELECT";
	public static final String QUERY_GETSUBRULESFOROPERATOR_SELECT="RE_GETSUBRULESFOROPERATOR_SELECT";
	public static final String QUERY_FETCHOPERATORSASSIGNEDTORULE_SELECT="RE_FETCHOPERATORSASSIGNEDTORULE_SELECT";
	//Rule
	public static final String QUERY_INSERTINTORULES_INSERT="RE_INSERTINTORULES_INSERT";
	public static final String QUERY_UPDATERULE_UPDATE="RE_UPDATERULE_UPDATE";
	public static final String QUERY_DELETEFROMRULES_DELETE="RE_DELETEFROMRULES_DELETE";
	public static final String QUERY_FETCHALLRULES_SELECT="RE_FETCHALLRULES_SELECT";
	public static final String QUERY_FETCHRULE_SELECTRULE="RE_FETCHRULE_SELECTRULE";
	public static final String QUERY_FETCHRULE_SELECTRULELOGIC = "RE_FETCHRULE_SELECTRULELOGIC";
	public static final String QUERY_INSERTRULELOGIC_INSERT="RE_INSERTRULELOGIC_INSERT";
	public static final String QUERY_DELETERULELOGIC_DELETE="RE_DELETERULELOGIC_DELETE";
	public static final String QUERY_FETCHRULEBYNAME_SELECT="RE_FETCHRULEBYNAME_SELECT";
	public static final String QUERY_FETCHRULEBYNAME_SELECTRULELOGIC="RE_FETCHRULEBYNAME_SELECTRULELOGIC";
	public static final String QUERY_ISEXECUTIONORDEREXISTS_SELECT="RE_ISEXECUTIONORDEREXISTS_SELECT";
	//subrule
	public static final String QUERY_INSERTSUBRULE_INSERT="RE_INSERTSUBRULE_INSERT";
	public static final String QUERY_UPDATESUBRULE_UPDATE="RE_UPDATESUBRULE_UPDATE";
	public static final String QUERY_DELETESUBRULE_DELETE="RE_DELETESUBRULE_DELETE";
	public static final String QUERY_FETCHALLSUBRULES_SELECT="RE_FETCHALLSUBRULES_SELECT";
	public static final String QUERY_FETCHALLSUBRULES_MODEL_ID="RE_FETCHALLSUBRULES_MODEL_ID";
	public static final String QUERY_FETCHSUBRULE_SELECT="RE_FETCHSUBRULE_SELECT";
	public static final String QUERY_FETCHSUBRULE_SELECTLOGIC="RE_FETCHSUBRULE_SELECTLOGIC";
	public static final String QUERY_FETCHALLSUBRULES_SELECTSUBRULES="RE_FETCHALLSUBRULES_SELECTSUBRULES";
	public static final String QUERY_SAVEASSIGNSUBRULESTORULE_DELETE="RE_SAVEASSIGNSUBRULESTORULE_DELETE";
	public static final String QUERY_SAVEASSIGNSUBRULESTORULE_INSERT="RE_SAVEASSIGNSUBRULESTORULE_INSERT";
	public static final String QUERY_SUBRULESUSEDINRULESLOGIC_SELECT="RE_SUBRULESUSEDINRULESLOGIC_SELECT";
	public static final String QUERY_FETCHSUBRULEBYNAME_SELECT="RE_FETCHSUBRULEBYNAME_SELECT";
	public static final String QUERY_FETCHRULEOPERATORMAPPINGFORRULE_SELECTSUBRULE="RE_FETCHRULEOPERATORMAPPINGFORRULE_SELECTSUBRULE";
	public static final String QUERY_DELETESUBRULELOGIC_DELETE="RE_DELETESUBRULELOGIC_DELETE";
	public static final String QUERY_INSERTSUBRULELOGIC_INSERT="RE_INSERTSUBRULELOGIC_INSERT";
	//Rule subrule mapping
	public static final String QUERY_FETCHALLRULESUBRULEMAPPING_SELECT="RE_FETCHALLRULESUBRULEMAPPING_SELECT";
	public static final String QUERY_FETCHALLRULESUBRULEMAPPING_SELECTBYRULE="RE_FETCHALLRULESUBRULEMAPPING_SELECTBYRULE";
	public static final String QUERY_FETCHALLATTRIBUTEMAPPING_SELECT="RE_FETCHALLATTRIBUTEMAPPING_SELECT";
	public static final String QUERY_FETCHALLOPERATORMAPPING_SELECT="RE_FETCHALLOPERATORMAPPING_SELECT";
	public static final String QUERY_FETCHRULENAMESFORSUBRULE_SELECT="RE_FETCHRULENAMESFORSUBRULE_SELECT";
	
	//Model
	public static final String QUERY_INSERTINTO_MODEL ="RE_INSERTINTOMODEL_INSERT";
	public static final String QUERY_FETCHALL_MODEL ="RE_FETCHALLMODEL_SELECT";
	public static final String QUERY_FETCH_MODEL ="RE_FETCHMODEL_SELECT";
	public static final String QUERY_DELETE_MODEL ="RE_DELETEMODEL_DELETE";
	public static final String QUERY_UPDATE_MODEL="RE_UPDATEMODEL_UPDATE";
	/** Rules Engine queies Ends */
}
