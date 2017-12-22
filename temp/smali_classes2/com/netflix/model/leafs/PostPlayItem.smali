.class public Lcom/netflix/model/leafs/PostPlayItem;
.super Ljava/lang/Object;
.source "PostPlayItem.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/Ratable;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayItem"


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation
.end field

.field private ancestorSynopsis:Ljava/lang/String;

.field private ancestorTitle:Ljava/lang/String;

.field private autoPlay:Z

.field private autoPlaySeconds:I

.field private availabilityDateMessaging:Ljava/lang/String;

.field private backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private badgeKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delivery:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayArtAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private episodes:I

.field private experienceType:Ljava/lang/String;

.field private impressionData:Ljava/lang/String;

.field private isNSRE:Z

.field private logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private matchPercentage:I

.field private maturityRating:Ljava/lang/String;

.field private newForPvr:Z

.field private nextEpisodeAutoPlay:Z

.field private nextEpisodeSeamless:Z

.field proxy:Lcom/netflix/falkor/ModelProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;"
        }
    .end annotation
.end field

.field private runtime:I

.field private seamlessStart:I

.field private seasonSequenceAbbr:Ljava/lang/String;

.field private seasons:I

.field private seasonsLabel:Ljava/lang/String;

.field private supplementalMessage:Ljava/lang/String;

.field private synopsis:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private userThumbRating:I

.field private videoId:Ljava/lang/Integer;

.field private year:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0, v0}, Lcom/netflix/model/leafs/PostPlayItem;-><init>(Lcom/google/gson/JsonElement;Lcom/netflix/falkor/ModelProxy;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/model/leafs/PostPlayItem;-><init>(Lcom/google/gson/JsonElement;Lcom/netflix/falkor/ModelProxy;)V

    .line 80
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->delivery:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->actions:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->isNSRE:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->badgeKeys:Ljava/util/List;

    .line 84
    iput-object p2, p0, Lcom/netflix/model/leafs/PostPlayItem;->proxy:Lcom/netflix/falkor/ModelProxy;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/PostPlayItem;->populate(Lcom/google/gson/JsonElement;)V

    .line 88
    :cond_0
    return-void
.end method

.method private populateCTA(Lcom/google/gson/JsonElement;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 170
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 171
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 172
    new-instance v2, Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/model/leafs/PostPlayItem;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-direct {v2, v3, v4}, Lcom/netflix/model/leafs/PostPlayAction;-><init>(Lcom/google/gson/JsonElement;Lcom/netflix/falkor/ModelProxy;)V

    .line 173
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method private populateFloatMap(Lcom/google/gson/JsonElement;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_1
    return-void
.end method

.method private populateMap(Lcom/google/gson/JsonElement;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method private populateThumbsRating(Lcom/google/gson/JsonElement;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 153
    const-string/jumbo v2, "matchPercentage"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "matchPercentage"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    const-string/jumbo v2, "matchPercentage"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/netflix/model/leafs/PostPlayItem;->matchPercentage:I

    .line 158
    :goto_0
    const-string/jumbo v2, "userThumbsRating"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "userThumbsRating"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_2

    .line 159
    const-string/jumbo v2, "userThumbsRating"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->thumbRatingFromString(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/netflix/model/leafs/PostPlayItem;->userThumbRating:I

    .line 163
    :goto_1
    const-string/jumbo v2, "newForPVR"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->newForPvr:Z

    .line 165
    return-void

    .line 156
    :cond_1
    iput v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->matchPercentage:I

    goto :goto_0

    .line 161
    :cond_2
    iput v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->userThumbRating:I

    goto :goto_1
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getAncestorSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->ancestorSynopsis:Ljava/lang/String;

    return-object v0
.end method

.method public getAncestorTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->ancestorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoPlaySeconds()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->autoPlaySeconds:I

    return v0
.end method

.method public getAvailabilityDateMessaging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->availabilityDateMessaging:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
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
    .line 411
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->badgeKeys:Ljava/util/List;

    return-object v0
.end method

.method public getDelivery()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->delivery:Ljava/util/Map;

    return-object v0
.end method

.method public getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->displayArtAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getEpisodes()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->episodes:I

    return v0
.end method

.method public getExperienceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->experienceType:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->impressionData:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getMatchPercentage()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->matchPercentage:I

    return v0
.end method

.method public getMaturityRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->maturityRating:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreInfoAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 3

    .prologue
    .line 329
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    move-result-object v0

    sget-object v2, Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;->mdp:Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayAction;

    .line 334
    :goto_1
    return-object v0

    .line 329
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;
    .locals 3

    .prologue
    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    move-result-object v0

    sget-object v2, Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;->play:Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;

    invoke-virtual {v0, v2}, Lcom/netflix/model/leafs/PostPlayAction$CallToActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->actions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayAction;

    .line 325
    :goto_1
    return-object v0

    .line 320
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getRuntime()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->runtime:I

    return v0
.end method

.method public getSeamlessStart()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->seamlessStart:I

    return v0
.end method

.method public getSeasonSequenceAbbr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->seasonSequenceAbbr:Ljava/lang/String;

    return-object v0
.end method

.method public getSeasons()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->seasons:I

    return v0
.end method

.method public getSeasonsLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->seasonsLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplementalMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->supplementalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSynopsis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->synopsis:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserThumbRating()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->userThumbRating:I

    return v0
.end method

.method public getVideoId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->videoId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getYear()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasNewBadge()Z
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->badgeKeys:Ljava/util/List;

    const-string/jumbo v1, "NEW"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->autoPlay:Z

    return v0
.end method

.method public isNSRE()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->isNSRE:Z

    return v0
.end method

.method public isNewForPvr()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->newForPvr:Z

    return v0
.end method

.method public isNextEpisodeAutoPlay()Z
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->nextEpisodeAutoPlay:Z

    return v0
.end method

.method public isNextEpisodeSeamless()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->nextEpisodeSeamless:Z

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 106
    instance-of v7, v1, Lcom/google/gson/JsonNull;

    if-nez v7, :cond_0

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->videoId:Ljava/lang/Integer;

    goto :goto_0

    .line 107
    :sswitch_0
    const-string/jumbo v7, "videoId"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "type"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "title"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "ancestorTitle"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v7, "supplementalMessage"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v7, "synopsis"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v7, "ancestorSynopsis"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v7, "year"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v7, "rating"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v7, "maturityRating"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v7, "seasonSequenceAbbr"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v7, "seasonsLabel"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v7, "seasons"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v7, "episodes"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v7, "runtime"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v7, "delivery"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v7, "actions"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v7, "isNSRE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v7, "availabilityDateMessaging"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v7, "badgeKeys"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v7, "assets"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v7, "impressionData"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_1

    .line 109
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 110
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 111
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->ancestorTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 112
    :pswitch_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->supplementalMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 113
    :pswitch_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->synopsis:Ljava/lang/String;

    goto/16 :goto_0

    .line 114
    :pswitch_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->ancestorSynopsis:Ljava/lang/String;

    goto/16 :goto_0

    .line 115
    :pswitch_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->year:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 116
    :pswitch_8
    invoke-direct {p0, v1}, Lcom/netflix/model/leafs/PostPlayItem;->populateThumbsRating(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 117
    :pswitch_9
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->maturityRating:Ljava/lang/String;

    goto/16 :goto_0

    .line 118
    :pswitch_a
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->seasonSequenceAbbr:Ljava/lang/String;

    goto/16 :goto_0

    .line 119
    :pswitch_b
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->seasonsLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 120
    :pswitch_c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->seasons:I

    goto/16 :goto_0

    .line 121
    :pswitch_d
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->episodes:I

    goto/16 :goto_0

    .line 122
    :pswitch_e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->runtime:I

    goto/16 :goto_0

    .line 123
    :pswitch_f
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->delivery:Ljava/util/Map;

    invoke-direct {p0, v1, v0}, Lcom/netflix/model/leafs/PostPlayItem;->populateMap(Lcom/google/gson/JsonElement;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 124
    :pswitch_10
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->actions:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/netflix/model/leafs/PostPlayItem;->populateCTA(Lcom/google/gson/JsonElement;Ljava/util/List;)V

    goto/16 :goto_0

    .line 125
    :pswitch_11
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->isNSRE:Z

    goto/16 :goto_0

    .line 126
    :pswitch_12
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->availabilityDateMessaging:Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    :pswitch_13
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->badgeKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    move v0, v2

    .line 131
    :goto_2
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 132
    iget-object v7, p0, Lcom/netflix/model/leafs/PostPlayItem;->badgeKeys:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 137
    :pswitch_14
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_2
    move v1, v3

    :goto_4
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 140
    :pswitch_15
    new-instance v1, Lcom/netflix/model/leafs/PostPlayAsset;

    sget-object v8, Lcom/netflix/model/leafs/PostPlayAsset$Type;->BACKGROUND:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v8, v0}, Lcom/netflix/model/leafs/PostPlayAsset;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    iput-object v1, p0, Lcom/netflix/model/leafs/PostPlayItem;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    goto :goto_3

    .line 139
    :sswitch_16
    const-string/jumbo v8, "BACKGROUND"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_4

    :sswitch_17
    const-string/jumbo v8, "DISPLAY_ART"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_4

    :sswitch_18
    const-string/jumbo v8, "LOGO"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_4

    .line 141
    :pswitch_16
    new-instance v1, Lcom/netflix/model/leafs/PostPlayAsset;

    sget-object v8, Lcom/netflix/model/leafs/PostPlayAsset$Type;->DISPLAY_ART:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v8, v0}, Lcom/netflix/model/leafs/PostPlayAsset;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    iput-object v1, p0, Lcom/netflix/model/leafs/PostPlayItem;->displayArtAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    goto :goto_3

    .line 142
    :pswitch_17
    new-instance v1, Lcom/netflix/model/leafs/PostPlayAsset;

    sget-object v8, Lcom/netflix/model/leafs/PostPlayAsset$Type;->LOGO:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v8, v0}, Lcom/netflix/model/leafs/PostPlayAsset;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    iput-object v1, p0, Lcom/netflix/model/leafs/PostPlayItem;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    goto :goto_3

    .line 146
    :pswitch_18
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayItem;->impressionData:Ljava/lang/String;

    goto/16 :goto_0

    .line 149
    :cond_3
    return-void

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x643ec5eb -> :sswitch_a
        -0x53ef8c7d -> :sswitch_14
        -0x4659e11e -> :sswitch_11
        -0x453fb703 -> :sswitch_10
        -0x37ea4e63 -> :sswitch_8
        -0x29637f79 -> :sswitch_6
        -0x25b9fe28 -> :sswitch_d
        -0x143cad1c -> :sswitch_b
        -0x6c936ad -> :sswitch_15
        0x368f3a -> :sswitch_1
        0x38883d -> :sswitch_7
        0x6942258 -> :sswitch_2
        0x758d445 -> :sswitch_3
        0x18e67cc3 -> :sswitch_4
        0x1afceaf6 -> :sswitch_0
        0x31151bf4 -> :sswitch_f
        0x3da6115b -> :sswitch_12
        0x5133cc8e -> :sswitch_9
        0x5c71cfd8 -> :sswitch_e
        0x6cff1594 -> :sswitch_5
        0x7552f1f0 -> :sswitch_c
        0x7de9b437 -> :sswitch_13
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
        :pswitch_18
    .end packed-switch

    .line 139
    :sswitch_data_1
    .sparse-switch
        -0x327dbed2 -> :sswitch_16
        -0x196a4eda -> :sswitch_17
        0x23bdab -> :sswitch_18
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public setAncestorSynopsis(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->ancestorSynopsis:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setAncestorTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->ancestorTitle:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .prologue
    .line 423
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->autoPlay:Z

    .line 424
    return-void
.end method

.method public setAutoPlaySeconds(I)V
    .locals 0

    .prologue
    .line 431
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->autoPlaySeconds:I

    .line 432
    return-void
.end method

.method public setAvailabilityDateMessaging(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->availabilityDateMessaging:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setBackgroundAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    .line 347
    return-void
.end method

.method public setDelivery(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->delivery:Ljava/util/Map;

    .line 317
    return-void
.end method

.method public setDisplayArtAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->displayArtAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    .line 355
    return-void
.end method

.method public setEpisodes(I)V
    .locals 0

    .prologue
    .line 300
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->episodes:I

    .line 301
    return-void
.end method

.method public setExperienceType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->experienceType:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setImpressionData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->impressionData:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setLogoAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    .line 363
    return-void
.end method

.method public setMaturityRating(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->maturityRating:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setNSRE(Z)V
    .locals 0

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->isNSRE:Z

    .line 392
    return-void
.end method

.method public setNextEpisodeAutoPlay(Z)V
    .locals 0

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->nextEpisodeAutoPlay:Z

    .line 440
    return-void
.end method

.method public setNextEpisodeSeamless(Z)V
    .locals 0

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->nextEpisodeSeamless:Z

    .line 456
    return-void
.end method

.method public setRuntime(I)V
    .locals 0

    .prologue
    .line 308
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->runtime:I

    .line 309
    return-void
.end method

.method public setSeamlessStart(I)V
    .locals 0

    .prologue
    .line 459
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->seamlessStart:I

    .line 460
    return-void
.end method

.method public setSeasonSequenceAbbr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->seasonSequenceAbbr:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setSeasons(I)V
    .locals 0

    .prologue
    .line 292
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->seasons:I

    .line 293
    return-void
.end method

.method public setSeasonsLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->seasonsLabel:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setSupplementalMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->supplementalMessage:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setSynopsis(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->synopsis:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->title:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->type:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setUserThumbRating(I)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public setVideoId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->videoId:Ljava/lang/Integer;

    .line 205
    return-void
.end method

.method public setYear(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayItem;->year:Ljava/lang/Integer;

    .line 261
    return-void
.end method
