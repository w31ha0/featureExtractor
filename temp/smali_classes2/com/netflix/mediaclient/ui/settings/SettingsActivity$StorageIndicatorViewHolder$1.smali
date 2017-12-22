.class Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder$1;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    :cond_0
    return-void
.end method
