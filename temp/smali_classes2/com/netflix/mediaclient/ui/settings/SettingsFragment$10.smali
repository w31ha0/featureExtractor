.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

.field final synthetic val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    .line 566
    const-string/jumbo v0, ""

    .line 568
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$500(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$500(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;->getDownloadsSize()Ljava/lang/String;

    move-result-object v0

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10$1;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;)V

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createDownloadDeleteAllDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->dialog:Landroid/app/Dialog;

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 587
    const/4 v0, 0x1

    .line 589
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
