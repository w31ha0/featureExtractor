.class public Lcom/netflix/model/leafs/originals/BillboardAssets;
.super Ljava/lang/Object;
.source "BillboardAssets.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "Assets"


# instance fields
.field private awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

.field private background:Lcom/netflix/model/leafs/originals/BillboardBackground;

.field private backgroundPortrait:Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

.field private dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

.field private logo:Lcom/netflix/model/leafs/originals/BillboardLogo;

.field private originalsLogo:Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

.field private stackedLogo:Lcom/netflix/model/leafs/originals/BillboardStackedLogo;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {p0, p1, v0, v1, v2}, Lcom/netflix/falkor/BranchNodeUtils;->merge(Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;ZI)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/BillboardAssets;->populate(Lcom/google/gson/JsonElement;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getAwardsHeadline()Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    return-object v0
.end method

.method public getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->background:Lcom/netflix/model/leafs/originals/BillboardBackground;

    return-object v0
.end method

.method public getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->backgroundPortrait:Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    return-object v0
.end method

.method public getDateBadge()Lcom/netflix/model/leafs/originals/BillboardDateBadge;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    return-object v0
.end method

.method public getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->logo:Lcom/netflix/model/leafs/originals/BillboardLogo;

    return-object v0
.end method

.method public getOriginalsLogo()Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->originalsLogo:Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    return-object v0
.end method

.method public getStackedLogo()Lcom/netflix/model/leafs/originals/BillboardStackedLogo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->stackedLogo:Lcom/netflix/model/leafs/originals/BillboardStackedLogo;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardLogo;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardLogo;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->logo:Lcom/netflix/model/leafs/originals/BillboardLogo;

    goto :goto_0

    .line 91
    :sswitch_0
    const-string/jumbo v4, "logo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "originalsLogo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "stackedLogo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "background"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "backgroundPortrait"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "dateBadge"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "awardsHeadline"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    .line 93
    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->originalsLogo:Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    goto/16 :goto_0

    .line 94
    :pswitch_2
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardStackedLogo;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardStackedLogo;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->stackedLogo:Lcom/netflix/model/leafs/originals/BillboardStackedLogo;

    goto/16 :goto_0

    .line 95
    :pswitch_3
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardBackground;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardBackground;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->background:Lcom/netflix/model/leafs/originals/BillboardBackground;

    goto/16 :goto_0

    .line 96
    :pswitch_4
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->backgroundPortrait:Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    goto/16 :goto_0

    .line 97
    :pswitch_5
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardDateBadge;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    goto/16 :goto_0

    .line 98
    :pswitch_6
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    goto/16 :goto_0

    .line 101
    :cond_1
    return-void

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f67aad2 -> :sswitch_3
        -0x43c0648e -> :sswitch_2
        -0x1076a76b -> :sswitch_5
        0x32c5ab -> :sswitch_0
        0x251166e9 -> :sswitch_4
        0x7018b98d -> :sswitch_1
        0x74eaadaa -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 69
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 80
    :goto_1
    return v0

    .line 69
    :sswitch_0
    const-string/jumbo v3, "logo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "originalsLogo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "stackedLogo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "background"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "dateBadge"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "backgroundPortrait"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "awardsHeadline"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    .line 70
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardLogo;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardLogo;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->logo:Lcom/netflix/model/leafs/originals/BillboardLogo;

    :goto_2
    move v0, v1

    .line 80
    goto :goto_1

    .line 71
    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->originalsLogo:Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    goto :goto_2

    .line 72
    :pswitch_2
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardStackedLogo;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardStackedLogo;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->stackedLogo:Lcom/netflix/model/leafs/originals/BillboardStackedLogo;

    goto :goto_2

    .line 73
    :pswitch_3
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardBackground;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardBackground;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->background:Lcom/netflix/model/leafs/originals/BillboardBackground;

    goto :goto_2

    .line 74
    :pswitch_4
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardDateBadge;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    goto :goto_2

    .line 75
    :pswitch_5
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->backgroundPortrait:Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    goto :goto_2

    .line 76
    :pswitch_6
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    goto :goto_2

    .line 69
    :sswitch_data_0
    .sparse-switch
        -0x4f67aad2 -> :sswitch_3
        -0x43c0648e -> :sswitch_2
        -0x1076a76b -> :sswitch_4
        0x32c5ab -> :sswitch_0
        0x251166e9 -> :sswitch_5
        0x7018b98d -> :sswitch_1
        0x74eaadaa -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
