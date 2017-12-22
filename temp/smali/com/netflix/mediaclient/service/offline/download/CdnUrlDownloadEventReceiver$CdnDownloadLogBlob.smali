.class Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "CdnUrlDownloadEventReceiver.java"


# static fields
.field private static final BYTES_DOWNLOAD_IN_SESSION:Ljava/lang/String; = "bytes"

.field private static final CDN_ID:Ljava/lang/String; = "cdnid"

.field private static final DL_START_TIME:Ljava/lang/String; = "downloadstarttime"

.field private static final DOWNLOADABLE_ID:Ljava/lang/String; = "dlid"

.field private static final DOWNLOAD_DURATION:Ljava/lang/String; = "duration"

.field private static final DXID:Ljava/lang/String; = "dxid"

.field private static final OXID:Ljava/lang/String; = "oxid"

.field private static final PLAYBACK_CONTEXT_ID:Ljava/lang/String; = "playbackcontextid"

.field private static final START_BYTE_OFFSET:Ljava/lang/String; = "startbyteoffset"

.field private static final TYPE:Ljava/lang/String; = "offlinedlreport"


# instance fields
.field private final mShouldSendNow:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;Z)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->this$0:Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 165
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mShouldSendNow:Z

    .line 166
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_CDN_URL_DOWNLOAD:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method populateJson(Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;Lcom/netflix/mediaclient/service/offline/download/CdnUrl;JJJJLcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V
    .locals 7

    .prologue
    .line 186
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "offlinedlreport"

    sget-object v4, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_CDN_URL_DOWNLOAD:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "oxid"

    iget-object v4, p1, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mOxId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "dxid"

    iget-object v4, p1, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mDxId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "downloadstarttime"

    invoke-virtual {v2, v3, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 190
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "startbyteoffset"

    invoke-virtual {v2, v3, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 191
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playbackcontextid"

    iget-object v4, p1, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mManifestPlaybackContextId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "cdnid"

    iget-wide v4, p2, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mCdnId:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 193
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "dlid"

    iget-object v4, p1, Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;->mDownloadableId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "bytes"

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 195
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "duration"

    invoke-virtual {v2, v3, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mJson:Lorg/json/JSONObject;

    move-object/from16 v0, p11

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->fillNetworkType(Lorg/json/JSONObject;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Lorg/json/JSONObject;

    .line 197
    return-void
.end method

.method public shouldSendNow()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->mShouldSendNow:Z

    return v0
.end method
