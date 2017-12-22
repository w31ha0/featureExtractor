.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;
.super Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;
.source "SettingsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isListenerDestroyed()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 133
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 119
    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$000(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->removeOfflineAgentListener(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentListener;)V

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$100(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    goto :goto_0
.end method
