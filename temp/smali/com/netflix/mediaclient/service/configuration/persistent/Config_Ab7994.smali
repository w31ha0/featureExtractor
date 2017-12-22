.class public Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "Config_Ab7994.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method

.method public static isInTest(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 29
    if-eqz p0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;

    .line 30
    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    .line 31
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldRenderDPWithBifs(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;->isInTest(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static shouldRenderTabs(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 39
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_0

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
    .line 65
    const/4 v0, 0x4

    return v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "Phone DP Redux"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 58
    const-string/jumbo v0, "Control"

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    const-string/jumbo v0, "DO NOT USE"

    goto :goto_0

    .line 54
    :pswitch_1
    const-string/jumbo v0, "Control DP + new episodes design + tabs (Ep, Sims, Trailers)"

    goto :goto_0

    .line 55
    :pswitch_2
    const-string/jumbo v0, "Control DP + new episodes design"

    goto :goto_0

    .line 52
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
    .line 25
    const-string/jumbo v0, "persistent_phone_dp_redux_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "7994"

    return-object v0
.end method
