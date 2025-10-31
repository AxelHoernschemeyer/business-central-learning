codeunit 50102 "Cust Rewards Assisted Setup"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", 'OnRegisterAssistedSetup', '', false, false)]
    local procedure AddExtensionAssistedSetup()
    var
        GuidedExperience: Codeunit "Guided Experience";
        CurrentGlobalLanguage: Integer;
        myAppInfo: ModuleInfo;
        WizardText: Label 'Customer Rewards assisted setup guide';
        GuidedExperienceType: Enum "Guided Experience Type";
        VideoCategory: Enum "Video Category";
    begin
        NavApp.GetCurrentModuleInfo(myAppInfo);
        CurrentGlobalLanguage := GlobalLanguage;
        GuidedExperience.InsertAssistedSetup(WizardText, WizardText, WizardText, 5, ObjectType::Page, page::"Customer Rewards Wizard", "Assisted Setup Group"::Extensions, '', VideoCategory::Uncategorized, '');
        GlobalLanguage(1033);
        GuidedExperience.AddTranslationForSetupObjectTitle(GuidedExperienceType::"Assisted Setup", ObjectType::Page, Page::"Customer Rewards Wizard", CurrentGlobalLanguage, WizardText);
    End;
}