.class public Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityTablet;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "KidsParityTablet.java"


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
    .line 49
    const/4 v0, 0x2

    return v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "Kids Parity for Tablet"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityTablet$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    const-string/jumbo v0, "Control"

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    const-string/jumbo v0, "Kids Parity"

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "persistent_kids_parity_tablet_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "7872"

    return-object v0
.end method

.method public isTabletOnly()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
