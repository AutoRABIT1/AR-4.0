<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>QA_Test_Alert</fullName>
        <ccEmails>user1@autorabit.com user2@autorabit.com user3@autorabit.com user4@autorabit.com user5@autorabit.com</ccEmails>
        <description>QA Test Alert</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/MarketingProductInquiryResponse</template>
    </alerts>
    <fieldUpdates>
        <fullName>WorkflowField1</fullName>
        <description>This is adding first work flow</description>
        <field>Name</field>
        <name>WorkflowField1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>WorkflowField2</fullName>
        <description>this is adding second one</description>
        <field>AccountNumber</field>
        <name>WorkflowField2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Test</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Account.AccountNumber</field>
            <operation>equals</operation>
            <value>10</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>t</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Account.CreatedDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>t</fullName>
        <assignedTo>shamshuddink9@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Account.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Test</subject>
    </tasks>
</Workflow>
