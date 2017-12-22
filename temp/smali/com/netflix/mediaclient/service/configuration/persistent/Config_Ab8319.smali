.class public Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "Config_Ab8319.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method

.method public static isInTest(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 25
    if-eqz p0, :cond_0

    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;

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
.method public getCellCount()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    return v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "IO Party Easter Eggs"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 41
    const-string/jumbo v0, "Control"

    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    const-string/jumbo v0, "All Easter Eggs"

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "persistent_io_gift"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "8319"

    return-object v0
.end method

.method protected shouldForceUpdateMemory()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method
