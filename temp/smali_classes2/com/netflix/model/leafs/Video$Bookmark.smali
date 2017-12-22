.class public final Lcom/netflix/model/leafs/Video$Bookmark;
.super Lcom/netflix/model/leafs/BaseFalkorLeafItem;
.source "Video.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "Bookmark"


# instance fields
.field private bookmarkPosition:I

.field private lastModified:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/netflix/model/leafs/BaseFalkorLeafItem;-><init>()V

    return-void
.end method


# virtual methods
.method public deepCopy(Lcom/netflix/model/leafs/Video$Bookmark;)V
    .locals 2

    .prologue
    .line 308
    iget v0, p1, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    iput v0, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    .line 309
    iget-wide v0, p1, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    iput-wide v0, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    .line 310
    return-void
.end method

.method public getBookmarkPosition()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    return-wide v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 239
    iget v5, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    .line 240
    iget-wide v6, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    .line 242
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 245
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    goto :goto_0

    .line 244
    :sswitch_0
    const-string/jumbo v9, "bookmarkPosition"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "lastModified"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    .line 246
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    goto :goto_0

    .line 251
    :cond_1
    iget-wide v0, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    cmp-long v0, v6, v0

    if-lez v0, :cond_2

    .line 252
    const-string/jumbo v0, "Bookmark"

    const-string/jumbo v1, "restoring bookmark and time (%d - %d) to older values (%d - %d)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v8, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    .line 253
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v2

    iget-wide v8, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    .line 252
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iput v5, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    .line 255
    iput-wide v6, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    .line 257
    :cond_2
    return-void

    .line 244
    :sswitch_data_0
    .sparse-switch
        -0x6d10f381 -> :sswitch_0
        0x74c4037f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 265
    iget v3, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    .line 266
    iget-wide v4, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    .line 268
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 283
    :goto_1
    return v0

    .line 268
    :sswitch_0
    const-string/jumbo v6, "bookmarkPosition"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "lastModified"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v1

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I

    move-result v2

    iput v2, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    .line 276
    :goto_2
    iget-wide v6, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 277
    const-string/jumbo v2, "Bookmark"

    const-string/jumbo v6, "restoring bookmark and time (%d - %d) to older values (%d - %d)"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    .line 278
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    iget-wide v8, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v0, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v0

    .line 277
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput v3, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    .line 280
    iput-wide v4, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    :cond_1
    move v0, v1

    .line 283
    goto :goto_1

    .line 270
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    goto :goto_2

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d10f381 -> :sswitch_0
        0x74c4037f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBookmarkPosition(I)V
    .locals 0

    .prologue
    .line 287
    iput p1, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    .line 288
    return-void
.end method

.method public setLastModified(J)V
    .locals 1

    .prologue
    .line 299
    iput-wide p1, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    .line 300
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bookmark [bookmarkPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/model/leafs/Video$Bookmark;->bookmarkPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/model/leafs/Video$Bookmark;->lastModified:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
