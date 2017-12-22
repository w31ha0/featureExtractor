.class public Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
.super Ljava/lang/Object;
.source "DataContext.java"


# static fields
.field public static final RANK:Ljava/lang/String; = "rank"

.field public static final REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final ROW:Ljava/lang/String; = "row"

.field private static final TAG:Ljava/lang/String; = "DataContext"

.field public static final TRACKING_INFO:Ljava/lang/String; = "trackingInfo"

.field public static final TRACK_ID:Ljava/lang/String; = "trackId"

.field public static final VIDEO_ID:Ljava/lang/String; = "videoId"

.field public static final XID:Ljava/lang/String; = "xid"


# instance fields
.field private rank:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private row:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "row"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private trackId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private trackingInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackingInfo"
    .end annotation
.end field

.field private videoId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private xid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xid"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 2

    .prologue
    .line 229
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 230
    if-nez p1, :cond_0

    .line 233
    :cond_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getVideoPos()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getListPos()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setRow(Ljava/lang/Integer;)V

    .line 246
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setRequestId(Ljava/lang/String;)V

    .line 247
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getTrackId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setTrackId(Ljava/lang/Integer;)V

    .line 249
    :cond_0
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setRank(Ljava/lang/Integer;)V

    .line 250
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/netflix/mediaclient/util/NumberUtils;->toIntegerSafely(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setVideoId(Ljava/lang/Integer;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 238
    if-nez p1, :cond_0

    .line 241
    :cond_0
    return-void

    .line 236
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v0

    goto :goto_0
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DataContext;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 300
    if-nez p0, :cond_0

    .line 322
    :goto_0
    return-object v1

    .line 304
    :cond_0
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>()V

    .line 305
    const-string/jumbo v0, "rank"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 306
    if-gez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    .line 308
    const-string/jumbo v0, "videoId"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 309
    if-gez v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    .line 311
    const-string/jumbo v0, "row"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 312
    if-gez v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    .line 314
    const-string/jumbo v0, "trackId"

    invoke-static {p0, v0, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 315
    if-gez v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    .line 317
    const-string/jumbo v0, "requestId"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    .line 318
    const-string/jumbo v0, "xid"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    .line 320
    const-string/jumbo v0, "trackingInfo"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackingInfo:Ljava/lang/String;

    move-object v1, v2

    .line 322
    goto :goto_0

    .line 306
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 309
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 312
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 315
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public getRank()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRow()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrackingInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackingInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    return-object v0
.end method

.method public setRank(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    .line 208
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setRow(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    .line 190
    return-void
.end method

.method public setTrackId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    .line 135
    return-void
.end method

.method public setTrackingInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackingInfo:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    .line 154
    return-void
.end method

.method public setXid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 267
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v0, "requestId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 272
    const-string/jumbo v0, "trackId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 275
    const-string/jumbo v0, "videoId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 278
    const-string/jumbo v0, "xid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 281
    const-string/jumbo v0, "row"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 284
    const-string/jumbo v0, "rank"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackingInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 289
    :try_start_0
    const-string/jumbo v0, "trackingInfo"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackingInfo:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_6
    :goto_0
    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    const-string/jumbo v2, "DataContext"

    const-string/jumbo v3, "Failed to put an errror"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const-string/jumbo v0, "trackingInfo"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackingInfo:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DataContext [requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->videoId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", xid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->xid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->row:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->rank:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->trackingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
