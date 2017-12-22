.class public Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7888;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "Config_Ab7888.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellCount()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x6

    return v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "Force UMA"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7888$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    const-string/jumbo v0, "WTF"

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    const-string/jumbo v0, "BLOCKING_EVENT_EXAMPLE_TITLE_BODY_CTA1_CTA2_ALERT"

    goto :goto_0

    .line 41
    :pswitch_1
    const-string/jumbo v0, "BLOCKING_EVENT_EXAMPLE_TITLE_BODY_CTA_ALERT"

    goto :goto_0

    .line 42
    :pswitch_2
    const-string/jumbo v0, "BLOCKING_EVENT_EXAMPLE_TITLE_BODY_ALERT"

    goto :goto_0

    .line 43
    :pswitch_3
    const-string/jumbo v0, "EVENT_EXAMPLE_TITLE_BODY_CTA1_CTA2_ALERT"

    goto :goto_0

    .line 44
    :pswitch_4
    const-string/jumbo v0, "EVENT_EXAMPLE_TITLE_BODY_CTA_ALERT"

    goto :goto_0

    .line 45
    :pswitch_5
    const-string/jumbo v0, "EVENT_EXAMPLE_TITLE_BODY_ALERT"

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "test_uma"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "7888"

    return-object v0
.end method
