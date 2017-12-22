.class public Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityPhone;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "KidsParityPhone.java"


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
    .line 47
    const/4 v0, 0x2

    return v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "Kids Parity for Phone"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityPhone$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 40
    const-string/jumbo v0, "Control"

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    const-string/jumbo v0, "Kids Parity"

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "persistent_kids_parity_phone_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "8132"

    return-object v0
.end method

.method public isMobileOnly()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
