.class public Lcom/netflix/model/leafs/PostPlayAction;
.super Ljava/lang/Object;
.source "PostPlayAction.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayAction"


# instance fields
.field private final additionalTrackIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ancestorTitle:Ljava/lang/String;

.field private bookmarkPosition:I

.field private displayText:Ljava/lang/String;

.field private doNotIncrementInterrupter:Z

.field private episode:I

.field private forceInterrupt:Z

.field private inMyList:Z

.field private interruptDisplayText:Ljava/lang/String;

.field private interruptThreshold:I

.field private itemIndex:I

.field private logicalStart:J

.field private minutesRemaining:J

.field private name:Ljava/lang/String;

.field private proxy:Lcom/netflix/falkor/ModelProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:Ljava/lang/String;

.field private seamlessStart:I

.field private season:I

.field private seasonSequenceAbbr:Ljava/lang/String;

.field private seasonSequenceLong:Ljava/lang/String;

.field private trackId:I

.field private type:Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

.field private videoId:I

.field private videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, v0}, Lcom/netflix/model/leafs/PostPlayAction;-><init>(Lcom/google/gson/JsonElement;Lcom/netflix/falkor/ModelProxy;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/model/leafs/PostPlayAction;-><init>(Lcom/google/gson/JsonElement;Lcom/netflix/falkor/ModelProxy;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;Lcom/netflix/falkor/ModelProxy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->additionalTrackIds:Ljava/util/Map;

    .line 76
    iput-boolean v1, p0, Lcom/netflix/model/leafs/PostPlayAction;->inMyList:Z

    .line 77
    iput-boolean v1, p0, Lcom/netflix/model/leafs/PostPlayAction;->doNotIncrementInterrupter:Z

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->seamlessStart:I

    .line 46
    iput-object p2, p0, Lcom/netflix/model/leafs/PostPlayAction;->proxy:Lcom/netflix/falkor/ModelProxy;

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/PostPlayAction;->populate(Lcom/google/gson/JsonElement;)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdditionalTrackIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->additionalTrackIds:Ljava/util/Map;

    return-object v0
.end method

.method public getAncestorTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->ancestorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBookmarkPosition()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->bookmarkPosition:I

    return v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisode()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->episode:I

    return v0
.end method

.method public getHeroTrackId()I
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterruptDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->interruptDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method public getInterruptThreshold()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->interruptThreshold:I

    return v0
.end method

.method public getItemIndex()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->itemIndex:I

    return v0
.end method

.method public getListPos()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->itemIndex:I

    return v0
.end method

.method public getLogicalStart()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->logicalStart:J

    return-wide v0
.end method

.method public getMinutesRemaining()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->minutesRemaining:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayBackVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 127
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->proxy:Lcom/netflix/falkor/ModelProxy;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "videos"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/netflix/model/leafs/PostPlayAction;->videoId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "summary"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/netflix/falkor/ModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 129
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorObject;

    .line 130
    instance-of v2, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    if-eqz v2, :cond_0

    .line 131
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 133
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 136
    goto :goto_0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeamlessStart()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->seamlessStart:I

    return v0
.end method

.method public getSeason()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->season:I

    return v0
.end method

.method public getSeasonSequenceAbbr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->seasonSequenceAbbr:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasonSequenceLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->seasonSequenceLong:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->trackId:I

    return v0
.end method

.method public getType()Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->type:Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->videoId:I

    return v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public isDoNotIncrementInterrupter()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->doNotIncrementInterrupter:Z

    return v0
.end method

.method public isForceInterrupt()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->forceInterrupt:Z

    return v0
.end method

.method public isHero()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public isInMyList()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->inMyList:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 92
    instance-of v2, v1, Lcom/google/gson/JsonNull;

    if-nez v2, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->displayText:Ljava/lang/String;

    goto :goto_0

    .line 93
    :sswitch_0
    const-string/jumbo v4, "displayText"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "trackId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "season"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "seasonSequenceAbbr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "seasonSequenceLong"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v4, "episode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v4, "bookmarkPosition"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v4, "minutesRemaining"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v4, "logicalStart"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v4, "videoType"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v4, "forceInterrupt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v4, "interruptThreshold"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v4, "interruptDisplayText"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v4, "additionalTrackIds"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v4, "inMyList"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v4, "doNotIncrementInterrupter"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v4, "videoId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v4, "seamlessStart"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    .line 95
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;->valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->type:Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    goto/16 :goto_0

    .line 97
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->trackId:I

    goto/16 :goto_0

    .line 98
    :pswitch_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->season:I

    goto/16 :goto_0

    .line 99
    :pswitch_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->seasonSequenceAbbr:Ljava/lang/String;

    goto/16 :goto_0

    .line 100
    :pswitch_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->seasonSequenceLong:Ljava/lang/String;

    goto/16 :goto_0

    .line 101
    :pswitch_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->episode:I

    goto/16 :goto_0

    .line 102
    :pswitch_8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->bookmarkPosition:I

    goto/16 :goto_0

    .line 103
    :pswitch_9
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->minutesRemaining:J

    goto/16 :goto_0

    .line 104
    :pswitch_a
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->logicalStart:J

    goto/16 :goto_0

    .line 105
    :pswitch_b
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto/16 :goto_0

    .line 106
    :pswitch_c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->forceInterrupt:Z

    goto/16 :goto_0

    .line 107
    :pswitch_d
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->interruptThreshold:I

    goto/16 :goto_0

    .line 108
    :pswitch_e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->interruptDisplayText:Ljava/lang/String;

    goto/16 :goto_0

    .line 110
    :pswitch_f
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    iget-object v2, p0, Lcom/netflix/model/leafs/PostPlayAction;->additionalTrackIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 117
    :pswitch_10
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->inMyList:Z

    goto/16 :goto_0

    .line 118
    :pswitch_11
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->doNotIncrementInterrupter:Z

    goto/16 :goto_0

    .line 119
    :pswitch_12
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->videoId:I

    goto/16 :goto_0

    .line 120
    :pswitch_13
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayAction;->seamlessStart:I

    goto/16 :goto_0

    .line 124
    :cond_2
    return-void

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d10f381 -> :sswitch_8
        -0x69d8b154 -> :sswitch_e
        -0x67b54429 -> :sswitch_9
        -0x643ec5eb -> :sswitch_5
        -0x643993a0 -> :sswitch_6
        -0x5c0e4205 -> :sswitch_7
        -0x4ef9a5f5 -> :sswitch_13
        -0x3f9f2c3a -> :sswitch_3
        -0x3605951d -> :sswitch_4
        -0x23e2aa27 -> :sswitch_a
        -0x2196154c -> :sswitch_f
        -0x1f84ba11 -> :sswitch_10
        0x337a8b -> :sswitch_1
        0x368f3a -> :sswitch_2
        0x1afceaf6 -> :sswitch_12
        0x2df635c9 -> :sswitch_11
        0x32735548 -> :sswitch_d
        0x4f736255 -> :sswitch_b
        0x6121dbb8 -> :sswitch_c
        0x662ea10f -> :sswitch_0
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
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public setAncestorTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->ancestorTitle:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setBookmarkPosition(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->bookmarkPosition:I

    .line 186
    return-void
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->displayText:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setDoNotIncrementInterrupter(Z)V
    .locals 0

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->doNotIncrementInterrupter:Z

    .line 254
    return-void
.end method

.method public setEpisode(I)V
    .locals 0

    .prologue
    .line 330
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->episode:I

    .line 331
    return-void
.end method

.method public setForceInterrupt(Z)V
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->forceInterrupt:Z

    .line 218
    return-void
.end method

.method public setInMyList(Z)V
    .locals 0

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->inMyList:Z

    .line 246
    return-void
.end method

.method public setInterruptDisplayText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->interruptDisplayText:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setInterruptThreshold(I)V
    .locals 0

    .prologue
    .line 225
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->interruptThreshold:I

    .line 226
    return-void
.end method

.method public setItemIndex(I)V
    .locals 0

    .prologue
    .line 269
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->itemIndex:I

    .line 270
    return-void
.end method

.method public setLogicalStart(J)V
    .locals 1

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->logicalStart:J

    .line 202
    return-void
.end method

.method public setMinutesRemaining(J)V
    .locals 1

    .prologue
    .line 193
    iput-wide p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->minutesRemaining:J

    .line 194
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->name:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->requestId:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setSeamlessStart(I)V
    .locals 0

    .prologue
    .line 338
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->seamlessStart:I

    .line 339
    return-void
.end method

.method public setSeason(I)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->season:I

    .line 178
    return-void
.end method

.method public setSeasonSequenceAbbr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->seasonSequenceAbbr:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setSeasonSequenceLong(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->seasonSequenceLong:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setTrackId(I)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->trackId:I

    .line 170
    return-void
.end method

.method public setType(Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->type:Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    .line 162
    return-void
.end method

.method public setVideoId(I)V
    .locals 0

    .prologue
    .line 261
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->videoId:I

    .line 262
    return-void
.end method

.method public setVideoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayAction;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 210
    return-void
.end method
