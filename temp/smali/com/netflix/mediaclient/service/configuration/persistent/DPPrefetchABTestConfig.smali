.class public Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig;
.super Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;
.source "DPPrefetchABTestConfig.java"


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
    .line 45
    const/4 v0, 0x5

    return v0
.end method

.method public getFriendlyName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "Aim Low 2 (Prefetch DP)"

    return-object v0
.end method

.method public getFriendlyNameForCell(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/DPPrefetchABTestConfig$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    const-string/jumbo v0, "Control"

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    const-string/jumbo v0, "Cell 3 + Prefetch DP data for top 3 titles in Lolomo rows / Genre rows & Similars (in DP)"

    goto :goto_0

    .line 33
    :pswitch_1
    const-string/jumbo v0, "Cell 3 + Prefetch DP data for top title in Lolomo rows / Genre rows & Similars (in DP)"

    goto :goto_0

    .line 34
    :pswitch_2
    const-string/jumbo v0, "Cell 2 + Prefetch DP data for all titles in CW & BB."

    goto :goto_0

    .line 35
    :pswitch_3
    const-string/jumbo v0, "Prefetch DP data for top 3 search results."

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "persistent_reduced_dp_tti_experience_key"

    return-object v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "7722"

    return-object v0
.end method
