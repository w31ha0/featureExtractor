.class synthetic Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;
.super Ljava/lang/Object;
.source "OfflineAgent.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$mediaclient$service$offline$agent$IntentCommandGroupType:[I

.field static final synthetic $SwitchMap$com$netflix$mediaclient$service$offline$registry$OfflineRegistry$RegistryState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1294
    invoke-static {}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->values()[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;->$SwitchMap$com$netflix$mediaclient$service$offline$agent$IntentCommandGroupType:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;->$SwitchMap$com$netflix$mediaclient$service$offline$agent$IntentCommandGroupType:[I

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->DownloadNotification:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    .line 277
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->values()[Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;->$SwitchMap$com$netflix$mediaclient$service$offline$registry$OfflineRegistry$RegistryState:[I

    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;->$SwitchMap$com$netflix$mediaclient$service$offline$registry$OfflineRegistry$RegistryState:[I

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->NOT_READY:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;->$SwitchMap$com$netflix$mediaclient$service$offline$registry$OfflineRegistry$RegistryState:[I

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->SUCCESS:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;->$SwitchMap$com$netflix$mediaclient$service$offline$registry$OfflineRegistry$RegistryState:[I

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->CHECKSUM_ERROR:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$28;->$SwitchMap$com$netflix$mediaclient$service$offline$registry$OfflineRegistry$RegistryState:[I

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->STORAGE_ERROR:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    .line 1294
    :catch_4
    move-exception v0

    goto :goto_0
.end method
