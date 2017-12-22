.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 308
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 309
    check-cast p2, Ljava/lang/String;

    .line 310
    invoke-static {p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->presetVideoFormat(Ljava/lang/String;)V

    .line 311
    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_HDR_FORMAT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 318
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 316
    :cond_0
    const-string/jumbo v0, "SettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid HDR format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
