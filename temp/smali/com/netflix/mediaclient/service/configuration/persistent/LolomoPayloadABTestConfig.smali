.class public Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "LolomoPayloadABTestConfig.java"


# static fields
.field private static final AIM_LOW_LOLOMO_PAYLOAD_TEST_ID:Ljava/lang/String; = "7984"

.field public static final DEFAULT_NUM_LOMOS_TO_FETCH_PER_BATCH:I = 0x16

.field private static final PERSISTENT_REDUCED_LOLOMO_PAYLOAD_CONFIG_PREFS_KEY:Ljava/lang/String; = "persistent_reduced_lolomo_payload_experience_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method

.method private static getCellForTest(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberRowsToFetch(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getCellForTest(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    const/16 v0, 0x16

    :goto_0
    return v0

    .line 78
    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 80
    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNumberVideosToFetchPerRow(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getCellForTest(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    const/4 v1, 0x1

    .line 107
    invoke-static {v1, p1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v1

    mul-int/2addr v0, v1

    .line 105
    :goto_0
    return v0

    .line 99
    :pswitch_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v0

    .line 101
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 100
    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getStandardNumberVideosToPrefetch(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 123
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v0

    .line 124
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    const-class v2, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;

    invoke-static {v2, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 132
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    :goto_0
    return v0

    .line 127
    :pswitch_0
    const/4 v1, 0x2

    .line 128
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->getNumVideosPerPageTableByOrientation(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 127
    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSummaryNodeKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getCellForTest(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "legacySummary"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "summary"

    goto :goto_0
.end method

.method public static isInTest(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 54
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getCellForTest(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCellCount()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x4

    return v0
.end method

.method public getDefaultCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, "Aim Low 4 (Lolomo payload test)"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    :pswitch_0
    const-string/jumbo v0, "Control"

    :goto_0
    return-object v0

    .line 146
    :pswitch_1
    const-string/jumbo v0, "Small-sized Lolomo Fetch the lolomo for first 6 rows and 6 titles in each row."

    goto :goto_0

    .line 147
    :pswitch_2
    const-string/jumbo v0, "Mid-sized Lolomo - Fetch the lolomo for first 10 rows and 6 titles in each row."

    goto :goto_0

    .line 148
    :pswitch_3
    const-string/jumbo v0, "Optimized Control - Fetch lolomo same as control, but with optimized summary node."

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "persistent_reduced_lolomo_payload_experience_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "7984"

    return-object v0
.end method
