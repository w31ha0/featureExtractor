.class public final Lcom/netflix/mediaclient/util/NflxProtocolUtils;
.super Ljava/lang/Object;
.source "NflxProtocolUtils.java"


# static fields
.field public static final INTENT_RESULT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.HANDLER_RESULT"

.field public static final PARAM_STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "NflxHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static createDeepLink(Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;"
        }
    .end annotation

    .prologue
    .line 524
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getSource(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v0

    return-object v0
.end method

.method public static extractId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 270
    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 271
    if-gtz v1, :cond_2

    .line 272
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v2, "Check if this is simple ID"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractJustUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 297
    :goto_0
    return-object v0

    .line 295
    :cond_0
    const-string/jumbo v0, "uuid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "uuid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "uuid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :goto_1
    const-string/jumbo v1, "::urn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "::urn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 297
    :goto_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 296
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2
.end method

.method public static getAction(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    const-string/jumbo v0, "action"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string/jumbo v0, "a"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->isVideoInfoAvailable(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Action is empty, but video info is available, default action is video detail!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string/jumbo v0, "view_details"

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Action is empty and video info is NOT available, default action is home "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string/jumbo v0, "home"

    goto :goto_0
.end method

.method public static getEpisodeId(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 248
    const-string/jumbo v0, "episodeid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "episode id uri doesn\'t exist in params map"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    .line 255
    :cond_0
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 261
    :goto_1
    const-string/jumbo v1, "programs/"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getVideoIdFromUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    const-string/jumbo v2, "NflxHandler"

    const-string/jumbo v3, "Failed to decode URL"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getExpandUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tiny URL can not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    const-string/jumbo v0, "source=android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "source=android"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 222
    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 224
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Movie ID not found in tiny URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 232
    return-object v0
.end method

.method public static getParams(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    const/4 v0, 0x1

    .line 325
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    if-eqz v2, :cond_1

    .line 329
    const/4 v2, 0x0

    .line 333
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v2

    move v2, v0

    .line 335
    goto :goto_0

    .line 331
    :cond_1
    const/16 v5, 0x26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayContext(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 237
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-object v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Error parsing trackId %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->NFLX_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    goto :goto_0
.end method

.method public static getSource(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 58
    const-string/jumbo v0, "source"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string/jumbo v0, "s"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Source is empty!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string/jumbo v0, "uknown"

    .line 67
    :cond_0
    return-object v0
.end method

.method public static getTargetUrl(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 116
    const-string/jumbo v0, "target_url"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string/jumbo v0, "u"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    :cond_0
    return-object v0
.end method

.method public static getTrackId(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 111
    const-string/jumbo v0, "trkid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getVideoIdFromUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 181
    if-lez v0, :cond_2

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "empty video id"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 194
    if-lez v1, :cond_0

    .line 195
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 199
    goto :goto_0
.end method

.method public static getVideoInfoFromVideoIdUrl(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;"
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    const-string/jumbo v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 150
    :goto_0
    const-string/jumbo v0, "series/"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getVideoIdFromUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->createFromShow(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v0

    .line 172
    :goto_1
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v2, "Failed to decode URL"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    :cond_0
    const-string/jumbo v0, "movies/"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getVideoIdFromUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->createFromMovie(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NumberUtils;->isPositiveWholeNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    const-string/jumbo v0, "episodeid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    if-eqz v0, :cond_2

    .line 165
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->createFromShow(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v0

    goto :goto_1

    .line 167
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->createFromMovie(Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v0

    goto :goto_1

    .line 171
    :cond_3
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Unable to get video id! This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isGenreAction(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "genre"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "g"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayAction(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 132
    const-string/jumbo v0, "play"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoInfoAvailable(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 101
    const-string/jumbo v0, "movieid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getTargetUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isViewDetailsAction(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 128
    const-string/jumbo v0, "view_details"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "v"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reportDelayedResponseHandled(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 347
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 351
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.HANDLER_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v1, "LocalIntentNflxUi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static reportOnProfileGate(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->createDeepLink(Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v6

    .line 303
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->profilesGate:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUiSessions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;JLcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V

    .line 307
    :cond_0
    return-void
.end method

.method public static reportUiSessions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;JLcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V
    .locals 8

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v7

    .line 312
    if-eqz v7, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    if-ne p1, v0, :cond_1

    .line 313
    :cond_0
    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;->externalControlProtocol:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->getDisplay(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/Display;

    move-result-object v4

    .line 314
    invoke-static {p0}, Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;->create(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;

    move-result-object v6

    move-object v2, p3

    move-object v5, p6

    .line 313
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiStartupSession(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$UiStartupTrigger;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/Long;Lcom/netflix/mediaclient/service/logging/apm/model/Display;Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;Lcom/netflix/mediaclient/service/logging/apm/model/UIBrowseStartupSessionCustomData;)V

    .line 315
    if-eqz p2, :cond_1

    .line 316
    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getApplicationPerformanceMetricsLogging()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;

    move-result-object v0

    invoke-interface {v0, p4, p5}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;->startUiBrowseStartupSession(J)V

    .line 319
    :cond_1
    return-void
.end method

.method public static reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 362
    if-nez p0, :cond_0

    .line 363
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Service manager is null, enable to report that user opened notification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "reportIfSourceIsNotification"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 370
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NotificationUtils;->isIntentFromPushNotification(Landroid/content/Intent;)Z

    move-result v0

    .line 371
    if-eqz v0, :cond_1

    .line 372
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "From push notification, report."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v0

    .line 379
    if-nez v0, :cond_2

    .line 380
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Unable to report since message data are missing!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_1
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Not from push notification, do not report."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;

    new-instance v2, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;-><init>(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;->opened:Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;Lcom/netflix/mediaclient/service/pushnotification/UserFeedbackOnReceivedPushNotification;)V

    .line 389
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/PushNotificationLoggingUtils;->reportPushNotificationResolved(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;)V

    goto :goto_0
.end method
