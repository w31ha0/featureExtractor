.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

.field final synthetic val$customPrefs:Landroid/preference/ListPreference;

.field final synthetic val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroid/preference/ListPreference;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->val$customPrefs:Landroid/preference/ListPreference;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 633
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 634
    check-cast p2, Ljava/lang/String;

    .line 636
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 650
    const-string/jumbo v0, "SettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received unexpected value for downloads video quality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_1
    return v1

    .line 636
    :sswitch_0
    const-string/jumbo v2, "BEST"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "DEFAULT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 638
    :pswitch_0
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v2, "Set downloads video quality to best"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->val$customPrefs:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    const v3, 0x7f090205

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->BEST:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$600(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_1

    .line 644
    :pswitch_1
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v2, "Set downloads video quality to default"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->val$customPrefs:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    const v3, 0x7f090207

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;->val$manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$600(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    goto :goto_1

    .line 654
    :cond_1
    const-string/jumbo v0, "SettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received unexpected NON string value for downloads video quality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 636
    :sswitch_data_0
    .sparse-switch
        -0x79209ddf -> :sswitch_1
        0x1f0de4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
