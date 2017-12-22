.class public Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "PrefetchLolomoConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellCount()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x6

    return v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "Aim Low 1 (Prefetch Lolomo)"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/PrefetchLolomoConfig$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46
    const-string/jumbo v0, "Control"

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    const-string/jumbo v0, "Prefetch + CW pinned + Job scheduler(Periodic, Any network)"

    goto :goto_0

    .line 40
    :pswitch_1
    const-string/jumbo v0, "Prefetch + CW pinned + Job scheduler(Periodic, Any network, Charging, Idle)"

    goto :goto_0

    .line 41
    :pswitch_2
    const-string/jumbo v0, "Prefetch + CW pinned + Job scheduler(Periodic, Network unmetered)"

    goto :goto_0

    .line 42
    :pswitch_3
    const-string/jumbo v0, "Prefetch + CW pinned + Job scheduler(Periodic, Network unmetered, Charging, Idle)"

    goto :goto_0

    .line 43
    :pswitch_4
    const-string/jumbo v0, "No prefetch, CW pinned"

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "persistent_prefetch_lolomo_experience_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "8432"

    return-object v0
.end method

.method protected shouldForceUpdateMemory()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
