.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;)V
    .locals 0

    .prologue
    .line 952
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$3;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 954
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$3;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->val$offlineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getOfflineStorageVolumeList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->isStorageRemovable(I)Z

    move-result v1

    .line 955
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v2, "selected=%d isRemovable=%b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 956
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$3;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->val$dlLocationPref:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    const v0, 0x7f09020a

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 957
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$3;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->val$offlineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->setCurrentOfflineStorageVolume(I)V

    .line 958
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 960
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$3;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    .line 961
    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->refreshStorageIndicator()V

    .line 963
    if-nez v1, :cond_2

    .line 967
    :cond_0
    :goto_1
    return-void

    .line 956
    :cond_1
    const v0, 0x7f0901f6

    goto :goto_0

    .line 964
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->requestExternalStoragePermission()V

    goto :goto_1
.end method
