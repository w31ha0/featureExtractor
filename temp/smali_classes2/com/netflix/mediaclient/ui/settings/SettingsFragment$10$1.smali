.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->RemoveAllCachedVideosCommand:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->settings:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->gesture:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_0

    .line 578
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$000(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->addOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 579
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->deleteAllOfflineContent()V

    .line 580
    invoke-static {}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->clearPreQueued()V

    .line 582
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 583
    return-void
.end method
