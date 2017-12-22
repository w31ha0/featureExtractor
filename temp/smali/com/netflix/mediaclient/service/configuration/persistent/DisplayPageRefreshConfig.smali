.class public Lcom/netflix/mediaclient/service/configuration/persistent/DisplayPageRefreshConfig;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "DisplayPageRefreshConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellCount()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    return v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "Tablet DP Refresh 2"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/DisplayPageRefreshConfig$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    const-string/jumbo v0, "Control"

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    const-string/jumbo v0, "Refreshed DP"

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "display_page_refresh_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "7842"

    return-object v0
.end method
