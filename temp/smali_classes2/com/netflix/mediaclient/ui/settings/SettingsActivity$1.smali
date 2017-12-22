.class Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v0, "nf_settings"

    const-string/jumbo v1, "mOsvSpaceUpdatedReceiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->refreshStorageIndicator()V

    .line 87
    return-void
.end method
