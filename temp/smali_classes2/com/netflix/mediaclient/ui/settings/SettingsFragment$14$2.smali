.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$2;
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
    .line 918
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$2;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$2;->this$1:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 922
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 925
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 926
    return-void
.end method
