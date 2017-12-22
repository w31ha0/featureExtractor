.class public Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "Config_Ab8204.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method

.method public static getLolomoExpiry(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    sget-object v2, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    const-class v3, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204;

    invoke-static {v3, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    return-wide v0

    .line 42
    :pswitch_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    .line 45
    :pswitch_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    .line 48
    :pswitch_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isCacheEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 31
    if-eqz p0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCanaryCellToAllocateOnDebugBuild()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    return-object v0
.end method

.method public getCellCount()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x4

    return v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "Realm Falcor Cache"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    const-string/jumbo v0, "Not activated"

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    const-string/jumbo v0, "Lolomo 5m expiry"

    goto :goto_0

    .line 63
    :pswitch_1
    const-string/jumbo v0, "Lolomo 8h expiry"

    goto :goto_0

    .line 65
    :pswitch_2
    const-string/jumbo v0, "Lolomo 16h expiry"

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "persistent_ab8204_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "8204"

    return-object v0
.end method
