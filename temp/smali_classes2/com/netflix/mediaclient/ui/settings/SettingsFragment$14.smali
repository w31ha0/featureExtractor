.class Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

.field final synthetic val$dlLocationPref:Landroid/preference/Preference;

.field final synthetic val$offlineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->val$offlineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->val$dlLocationPref:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 916
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->val$offlineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->hasAnyCreatingOrCreateFailedItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 918
    const v1, 0x7f09020b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901da

    new-instance v2, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$2;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900bd

    new-instance v2, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$1;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;)V

    .line 927
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 932
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 970
    :goto_0
    return v12

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->val$offlineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getOfflineStorageVolumeList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;

    move-result-object v4

    .line 935
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 936
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "osvList size=%d"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->val$offlineAgent:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->recalculateSpaceUsageForOfflineStorageVolumes()V

    .line 940
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->getCurrentSelectedVolumeIndex()I

    move-result v5

    .line 941
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "currentlySelected=%d"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 943
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/CharSequence;

    move v1, v2

    .line 944
    :goto_1
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 945
    invoke-interface {v4, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    .line 946
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f09020a

    :goto_2
    invoke-virtual {v7, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 947
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    const v8, 0x7f0901ef

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;->getFreeSpace()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/netflix/mediaclient/util/StringUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    aput-object v0, v6, v1

    .line 944
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 946
    :cond_2
    const v3, 0x7f0901f6

    goto :goto_2

    .line 950
    :cond_3
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;->this$0:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 951
    const v1, 0x7f0901ee

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 952
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14$3;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;)V

    invoke-virtual {v0, v6, v5, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
