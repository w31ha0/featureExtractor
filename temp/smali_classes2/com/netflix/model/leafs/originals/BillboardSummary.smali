.class public Lcom/netflix/model/leafs/originals/BillboardSummary;
.super Ljava/lang/Object;
.source "BillboardSummary.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;
.implements Lcom/netflix/model/branches/FalkorObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "BillboardSummary"


# instance fields
.field private actionToken:Ljava/lang/String;

.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;"
        }
    .end annotation
.end field

.field private ancestorId:Ljava/lang/String;

.field private assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

.field private awardTrackId:Ljava/lang/String;

.field public badgeKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private billboardTheme:Ljava/lang/String;

.field private billboardType:Ljava/lang/String;

.field private delivery:Lcom/netflix/model/leafs/Delivery;

.field private episodes:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageDescriptor:Ljava/lang/String;

.field private impressionToken:Ljava/lang/String;

.field private isAward:Z

.field private isOriginal:Z

.field private maturityRating:Ljava/lang/String;

.field private motionId:Ljava/lang/String;

.field private motionShouldLoop:Z

.field private motionUrl:Ljava/lang/String;

.field private rating:Lcom/netflix/model/leafs/Rating;

.field private runtime:Ljava/lang/String;

.field private seasons:Ljava/lang/String;

.field private supplementalMessage:Ljava/lang/String;

.field private synopsis:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->badgeKeys:Ljava/util/List;

    return-void
.end method

.method private getMotionBillboardData(Lcom/google/gson/JsonElement;)V
    .locals 6

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 267
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "horizontalBackground"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->motionId:Ljava/lang/String;

    goto :goto_0

    .line 272
    :sswitch_0
    const-string/jumbo v5, "motionId"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "motionUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "motionShouldLoop"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 274
    :pswitch_1
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->motionUrl:Ljava/lang/String;

    goto :goto_0

    .line 275
    :pswitch_2
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsBoolSafe(Lcom/google/gson/JsonElement;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->motionShouldLoop:Z

    goto :goto_0

    .line 280
    :cond_2
    return-void

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        -0x226b1627 -> :sswitch_1
        -0x1ccfd0b3 -> :sswitch_2
        -0x95e4c8f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getActionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->actionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getAncestorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->ancestorId:Ljava/lang/String;

    return-object v0
.end method

.method public getAwardTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->awardTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getAwardsHeadline()Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssets;->getAwardsHeadline()Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssets;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssets;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v0

    goto :goto_0
.end method

.method public getBadgeKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->badgeKeys:Ljava/util/List;

    return-object v0
.end method

.method public getBillboardTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->billboardTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getBillboardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->billboardType:Ljava/lang/String;

    return-object v0
.end method

.method public getDateBadge()Lcom/netflix/model/leafs/originals/BillboardDateBadge;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssets;->getDateBadge()Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    move-result-object v0

    goto :goto_0
.end method

.method public getDelivery()Lcom/netflix/model/leafs/Delivery;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->delivery:Lcom/netflix/model/leafs/Delivery;

    return-object v0
.end method

.method public getEpisodes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->episodes:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->imageDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->impressionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssets;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaturityRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->maturityRating:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->motionId:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionShouldLoop()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->motionShouldLoop:Z

    return v0
.end method

.method public getMotionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->motionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalsLogo()Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssets;->getOriginalsLogo()Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    move-result-object v0

    goto :goto_0
.end method

.method public getRating()Lcom/netflix/model/leafs/Rating;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->rating:Lcom/netflix/model/leafs/Rating;

    return-object v0
.end method

.method public getRuntime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->runtime:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasons()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->seasons:Ljava/lang/String;

    return-object v0
.end method

.method public getStackedLogo()Lcom/netflix/model/leafs/originals/BillboardStackedLogo;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAssets;->getStackedLogo()Lcom/netflix/model/leafs/originals/BillboardStackedLogo;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->supplementalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->synopsis:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->year:Ljava/lang/String;

    return-object v0
.end method

.method public isAward()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->isAward:Z

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 225
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->id:Ljava/lang/String;

    goto :goto_0

    .line 225
    :sswitch_0
    const-string/jumbo v5, "id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "ancestorId"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "isOriginal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "title"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "synopsis"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v5, "supplementalMessage"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v5, "imageDescriptor"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v5, "year"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v5, "maturityRating"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v5, "seasons"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v5, "runtime"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v5, "videoAssets"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v5, "isAward"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v5, "awardTrackId"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v5, "billboardTheme"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v5, "billboardType"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v5, "badgeKeys"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v5, "assets"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v5, "delivery"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v5, "actions"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v5, "impressionToken"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v5, "actionToken"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v5, "rating"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    goto/16 :goto_1

    .line 227
    :pswitch_1
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->ancestorId:Ljava/lang/String;

    goto/16 :goto_0

    .line 228
    :pswitch_2
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsBoolSafe(Lcom/google/gson/JsonElement;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal:Z

    goto/16 :goto_0

    .line 229
    :pswitch_3
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 230
    :pswitch_4
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->synopsis:Ljava/lang/String;

    goto/16 :goto_0

    .line 231
    :pswitch_5
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->supplementalMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 232
    :pswitch_6
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->imageDescriptor:Ljava/lang/String;

    goto/16 :goto_0

    .line 233
    :pswitch_7
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->year:Ljava/lang/String;

    goto/16 :goto_0

    .line 234
    :pswitch_8
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->maturityRating:Ljava/lang/String;

    goto/16 :goto_0

    .line 235
    :pswitch_9
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->seasons:Ljava/lang/String;

    goto/16 :goto_0

    .line 236
    :pswitch_a
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->runtime:Ljava/lang/String;

    goto/16 :goto_0

    .line 238
    :pswitch_b
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionBillboardData(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 242
    :pswitch_c
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsBoolSafe(Lcom/google/gson/JsonElement;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->isAward:Z

    goto/16 :goto_0

    .line 243
    :pswitch_d
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->awardTrackId:Ljava/lang/String;

    goto/16 :goto_0

    .line 244
    :pswitch_e
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->billboardTheme:Ljava/lang/String;

    goto/16 :goto_0

    .line 245
    :pswitch_f
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->billboardType:Ljava/lang/String;

    goto/16 :goto_0

    .line 247
    :pswitch_10
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    move v0, v2

    .line 249
    :goto_2
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->badgeKeys:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 254
    :pswitch_11
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardAssets;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardAssets;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    goto/16 :goto_0

    .line 255
    :pswitch_12
    new-instance v0, Lcom/netflix/model/leafs/Delivery;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/Delivery;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->delivery:Lcom/netflix/model/leafs/Delivery;

    goto/16 :goto_0

    .line 256
    :pswitch_13
    invoke-static {v1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getListOfActions(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->actions:Ljava/util/List;

    goto/16 :goto_0

    .line 257
    :pswitch_14
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->impressionToken:Ljava/lang/String;

    goto/16 :goto_0

    .line 258
    :pswitch_15
    invoke-static {v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getAsStringSafe(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->actionToken:Ljava/lang/String;

    goto/16 :goto_0

    .line 259
    :pswitch_16
    new-instance v0, Lcom/netflix/model/leafs/Rating;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/Rating;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->rating:Lcom/netflix/model/leafs/Rating;

    goto/16 :goto_0

    .line 262
    :cond_2
    return-void

    .line 225
    :sswitch_data_0
    .sparse-switch
        -0x79025cd6 -> :sswitch_6
        -0x53ef8c7d -> :sswitch_11
        -0x453fb703 -> :sswitch_13
        -0x3dd70236 -> :sswitch_e
        -0x37ea4e63 -> :sswitch_16
        -0xa407ce7 -> :sswitch_f
        0xd1b -> :sswitch_0
        0x38883d -> :sswitch_7
        0x6942258 -> :sswitch_3
        0x18e67cc3 -> :sswitch_5
        0x1af96a4e -> :sswitch_1
        0x1f64ebde -> :sswitch_b
        0x22ea311b -> :sswitch_2
        0x2e8a1570 -> :sswitch_14
        0x31151bf4 -> :sswitch_12
        0x5133cc8e -> :sswitch_8
        0x5c71cfd8 -> :sswitch_a
        0x5dc8bd63 -> :sswitch_15
        0x6cff1594 -> :sswitch_4
        0x6e7afea9 -> :sswitch_d
        0x7552f1f0 -> :sswitch_9
        0x7a772753 -> :sswitch_c
        0x7de9b437 -> :sswitch_10
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 184
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 214
    :goto_1
    return v0

    .line 184
    :sswitch_0
    const-string/jumbo v3, "id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "ancestorId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "isOriginal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "synopsis"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "supplementalMessage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "imageDescriptor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v3, "maturityRating"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v3, "seasons"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v3, "runtime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v3, "motionId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v3, "motionUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v3, "motionShouldLoop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v3, "isAward"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v3, "awardTrackId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v3, "billboardTheme"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v3, "billboardType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v3, "badgeKeys"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v3, "assets"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v3, "delivery"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v3, "actions"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v3, "impressionToken"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v3, "actionToken"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v3, "rating"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_0

    .line 185
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->id:Ljava/lang/String;

    :goto_2
    move v0, v1

    .line 214
    goto/16 :goto_1

    .line 186
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->ancestorId:Ljava/lang/String;

    goto :goto_2

    .line 187
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal:Z

    goto :goto_2

    .line 188
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->title:Ljava/lang/String;

    goto :goto_2

    .line 189
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->synopsis:Ljava/lang/String;

    goto :goto_2

    .line 190
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->supplementalMessage:Ljava/lang/String;

    goto :goto_2

    .line 191
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->imageDescriptor:Ljava/lang/String;

    goto :goto_2

    .line 192
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->year:Ljava/lang/String;

    goto :goto_2

    .line 193
    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->maturityRating:Ljava/lang/String;

    goto :goto_2

    .line 194
    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->seasons:Ljava/lang/String;

    goto :goto_2

    .line 195
    :pswitch_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->runtime:Ljava/lang/String;

    goto :goto_2

    .line 196
    :pswitch_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->motionId:Ljava/lang/String;

    goto :goto_2

    .line 197
    :pswitch_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->motionUrl:Ljava/lang/String;

    goto :goto_2

    .line 198
    :pswitch_d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->motionShouldLoop:Z

    goto :goto_2

    .line 199
    :pswitch_e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->isAward:Z

    goto :goto_2

    .line 200
    :pswitch_f
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->awardTrackId:Ljava/lang/String;

    goto :goto_2

    .line 201
    :pswitch_10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->billboardTheme:Ljava/lang/String;

    goto :goto_2

    .line 202
    :pswitch_11
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->billboardType:Ljava/lang/String;

    goto :goto_2

    .line 203
    :pswitch_12
    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->badgeKeys:Ljava/util/List;

    invoke-static {p2}, Lcom/netflix/falkor/BranchNodeUtils;->getAsStringArray(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 204
    :pswitch_13
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardAssets;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardAssets;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->assets:Lcom/netflix/model/leafs/originals/BillboardAssets;

    goto/16 :goto_2

    .line 205
    :pswitch_14
    new-instance v0, Lcom/netflix/model/leafs/Delivery;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/Delivery;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->delivery:Lcom/netflix/model/leafs/Delivery;

    goto/16 :goto_2

    .line 206
    :pswitch_15
    invoke-static {p2}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getListOfActions(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->actions:Ljava/util/List;

    goto/16 :goto_2

    .line 207
    :pswitch_16
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->impressionToken:Ljava/lang/String;

    goto/16 :goto_2

    .line 208
    :pswitch_17
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->actionToken:Ljava/lang/String;

    goto/16 :goto_2

    .line 209
    :pswitch_18
    new-instance v0, Lcom/netflix/model/leafs/Rating;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/Rating;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardSummary;->rating:Lcom/netflix/model/leafs/Rating;

    goto/16 :goto_2

    .line 184
    :sswitch_data_0
    .sparse-switch
        -0x79025cd6 -> :sswitch_6
        -0x53ef8c7d -> :sswitch_13
        -0x453fb703 -> :sswitch_15
        -0x3dd70236 -> :sswitch_10
        -0x37ea4e63 -> :sswitch_18
        -0x226b1627 -> :sswitch_c
        -0x1ccfd0b3 -> :sswitch_d
        -0xa407ce7 -> :sswitch_11
        -0x95e4c8f -> :sswitch_b
        0xd1b -> :sswitch_0
        0x38883d -> :sswitch_7
        0x6942258 -> :sswitch_3
        0x18e67cc3 -> :sswitch_5
        0x1af96a4e -> :sswitch_1
        0x22ea311b -> :sswitch_2
        0x2e8a1570 -> :sswitch_16
        0x31151bf4 -> :sswitch_14
        0x5133cc8e -> :sswitch_8
        0x5c71cfd8 -> :sswitch_a
        0x5dc8bd63 -> :sswitch_17
        0x6cff1594 -> :sswitch_4
        0x6e7afea9 -> :sswitch_f
        0x7552f1f0 -> :sswitch_9
        0x7a772753 -> :sswitch_e
        0x7de9b437 -> :sswitch_12
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
