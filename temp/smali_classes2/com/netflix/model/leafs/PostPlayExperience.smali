.class public Lcom/netflix/model/leafs/PostPlayExperience;
.super Ljava/lang/Object;
.source "PostPlayExperience.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;
.implements Lcom/netflix/model/branches/FalkorObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayExperience"


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

.field private actionsInitialIndex:Ljava/lang/Integer;

.field private autoplay:Z

.field private autoplaySeconds:I

.field private backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private final experienceTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/PostPlayAction;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/PostPlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private itemsInitialIndex:Ljava/lang/Integer;

.field private logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

.field private promotedSupplementalMessage:Ljava/lang/String;

.field private promotedTitle:Ljava/lang/String;

.field private promotedVideoId:Ljava/lang/Integer;

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

.field private requestId:Ljava/lang/String;

.field private seamlessCountdownSeconds:I

.field private seamlessEnd:I

.field private theme:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/model/leafs/PostPlayExperience;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->experienceTitle:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->actions:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->items:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->proxy:Lcom/netflix/falkor/ModelProxy;

    .line 32
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
    .line 120
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 122
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 123
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 124
    new-instance v2, Lcom/netflix/model/leafs/PostPlayAction;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/model/leafs/PostPlayExperience;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-direct {v2, v3, v4}, Lcom/netflix/model/leafs/PostPlayAction;-><init>(Lcom/google/gson/JsonElement;Lcom/netflix/falkor/ModelProxy;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
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
    .line 222
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getActionsInitialIndex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->actionsInitialIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAutoplay()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->autoplay:Z

    return v0
.end method

.method public getAutoplaySeconds()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->autoplaySeconds:I

    return v0
.end method

.method public getBackgroundAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getExperienceTitle()Ljava/util/List;
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
    .line 210
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->experienceTitle:Ljava/util/List;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/PostPlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->items:Ljava/util/List;

    return-object v0
.end method

.method public getItemsInitialIndex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->itemsInitialIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLogoAsset()Lcom/netflix/model/leafs/PostPlayAsset;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    return-object v0
.end method

.method public getPromotedSupplementalMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->promotedSupplementalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->promotedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotedVideoId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->promotedVideoId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeamlessCountdownSeconds()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->seamlessCountdownSeconds:I

    return v0
.end method

.method public getSeamlessEnd()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->seamlessEnd:I

    return v0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->type:Ljava/lang/String;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 72
    instance-of v6, v1, Lcom/google/gson/JsonNull;

    if-nez v6, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->requestId:Ljava/lang/String;

    goto :goto_0

    .line 73
    :sswitch_0
    const-string/jumbo v6, "requestId"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "type"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "theme"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "autoplay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "autoplaySeconds"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "promotedVideoId"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "promotedTitle"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v6, "promotedSupplementalMessage"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v6, "assets"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v6, "experienceTitle"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v6, "actionsInitialIndex"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v6, "actions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v6, "itemsInitialIndex"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v6, "items"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v6, "currentEpisodeSeamlessData"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    .line 75
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 76
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->theme:Ljava/lang/String;

    goto/16 :goto_0

    .line 77
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->autoplay:Z

    goto/16 :goto_0

    .line 78
    :pswitch_4
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->autoplaySeconds:I

    goto/16 :goto_0

    .line 79
    :pswitch_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->promotedVideoId:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 80
    :pswitch_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->promotedTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 81
    :pswitch_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->promotedSupplementalMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 83
    :pswitch_8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_2
    move v1, v3

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 87
    :pswitch_9
    new-instance v1, Lcom/netflix/model/leafs/PostPlayAsset;

    sget-object v7, Lcom/netflix/model/leafs/PostPlayAsset$Type;->BACKGROUND:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v7, v0}, Lcom/netflix/model/leafs/PostPlayAsset;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    iput-object v1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    goto :goto_2

    .line 86
    :sswitch_f
    const-string/jumbo v7, "background"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_3

    :sswitch_10
    const-string/jumbo v7, "logo"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_3

    .line 88
    :pswitch_a
    new-instance v1, Lcom/netflix/model/leafs/PostPlayAsset;

    sget-object v7, Lcom/netflix/model/leafs/PostPlayAsset$Type;->LOGO:Lcom/netflix/model/leafs/PostPlayAsset$Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-direct {v1, v7, v0}, Lcom/netflix/model/leafs/PostPlayAsset;-><init>(Lcom/netflix/model/leafs/PostPlayAsset$Type;Lcom/google/gson/JsonElement;)V

    iput-object v1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    goto :goto_2

    .line 93
    :pswitch_b
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->experienceTitle:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/netflix/model/leafs/PostPlayExperience;->populateCTA(Lcom/google/gson/JsonElement;Ljava/util/List;)V

    goto/16 :goto_0

    .line 94
    :pswitch_c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->actionsInitialIndex:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 95
    :pswitch_d
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->actions:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/netflix/model/leafs/PostPlayExperience;->populateCTA(Lcom/google/gson/JsonElement;Ljava/util/List;)V

    goto/16 :goto_0

    .line 96
    :pswitch_e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->itemsInitialIndex:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 98
    :pswitch_f
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    move v0, v2

    .line 101
    :goto_4
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 102
    iget-object v6, p0, Lcom/netflix/model/leafs/PostPlayExperience;->items:Ljava/util/List;

    new-instance v7, Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    iget-object v9, p0, Lcom/netflix/model/leafs/PostPlayExperience;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-direct {v7, v8, v9}, Lcom/netflix/model/leafs/PostPlayItem;-><init>(Lcom/google/gson/JsonElement;Lcom/netflix/falkor/ModelProxy;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 107
    :pswitch_10
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string/jumbo v6, "seamlessEnd"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string/jumbo v6, "seamlessEnd"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->seamlessEnd:I

    .line 110
    :cond_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string/jumbo v6, "seamlessCountdownSeconds"

    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string/jumbo v1, "seamlessCountdownSeconds"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/PostPlayExperience;->seamlessCountdownSeconds:I

    goto/16 :goto_0

    .line 117
    :cond_4
    return-void

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        -0x53ef8c7d -> :sswitch_8
        -0x453fb703 -> :sswitch_b
        -0x359832 -> :sswitch_c
        0x368f3a -> :sswitch_1
        0x2f2239c -> :sswitch_4
        0x5fde7c0 -> :sswitch_d
        0x69375c9 -> :sswitch_2
        0x1c3bd58b -> :sswitch_a
        0x295c940a -> :sswitch_0
        0x42dcd014 -> :sswitch_6
        0x55cdf963 -> :sswitch_3
        0x6371b043 -> :sswitch_e
        0x67d119b2 -> :sswitch_5
        0x7b1e717f -> :sswitch_7
        0x7ddc2b0e -> :sswitch_9
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 86
    :sswitch_data_1
    .sparse-switch
        -0x4f67aad2 -> :sswitch_f
        0x32c5ab -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public setActionsInitialIndex(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->actionsInitialIndex:Ljava/lang/Integer;

    .line 219
    return-void
.end method

.method public setAutoplay(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->autoplay:Z

    .line 159
    return-void
.end method

.method public setAutoplaySeconds(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->autoplaySeconds:I

    .line 167
    return-void
.end method

.method public setBackgroundAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->backgroundAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    .line 199
    return-void
.end method

.method public setItemsInitialIndex(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->itemsInitialIndex:Ljava/lang/Integer;

    .line 231
    return-void
.end method

.method public setLogoAsset(Lcom/netflix/model/leafs/PostPlayAsset;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->logoAsset:Lcom/netflix/model/leafs/PostPlayAsset;

    .line 207
    return-void
.end method

.method public setPromotedSupplementalMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->promotedSupplementalMessage:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setPromotedTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->promotedTitle:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setPromotedVideoId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->promotedVideoId:Ljava/lang/Integer;

    .line 175
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->requestId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setSeamlessCountdownSeconds(I)V
    .locals 0

    .prologue
    .line 242
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->seamlessCountdownSeconds:I

    .line 243
    return-void
.end method

.method public setSeamlessEnd(I)V
    .locals 0

    .prologue
    .line 250
    iput p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->seamlessEnd:I

    .line 251
    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->theme:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/netflix/model/leafs/PostPlayExperience;->type:Ljava/lang/String;

    .line 143
    return-void
.end method
