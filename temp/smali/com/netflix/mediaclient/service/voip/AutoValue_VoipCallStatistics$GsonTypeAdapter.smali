.class public final Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "AutoValue_VoipCallStatistics.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;",
        ">;"
    }
.end annotation


# instance fields
.field private final averageJitterRxAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final averageJitterTxAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final averageRttAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final bytesReceivedAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bytesSentAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final codecAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAverageJitterRx:F

.field private defaultAverageJitterTx:F

.field private defaultAverageRtt:F

.field private defaultBytesReceived:J

.field private defaultBytesSent:J

.field private defaultCodec:Ljava/lang/String;

.field private defaultDownloadBw:F

.field private defaultIncomingPacketsLost:J

.field private defaultIncomingTooLate:J

.field private defaultMaxJitterRx:F

.field private defaultMaxJitterTx:F

.field private defaultMaxRtt:F

.field private defaultMinJitterRx:F

.field private defaultMinJitterTx:F

.field private defaultMinRtt:F

.field private defaultPacketsReceived:J

.field private defaultPacketsSent:J

.field private defaultRate:I

.field private defaultRecvLossRate:F

.field private defaultSdk:Ljava/lang/String;

.field private defaultSendLossRate:F

.field private defaultUploadBw:F

.field private final downloadBwAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final incomingPacketsLostAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final incomingTooLateAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final maxJitterRxAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final maxJitterTxAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final maxRttAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final minJitterRxAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final minJitterTxAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final minRttAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final packetsReceivedAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final packetsSentAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final rateAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final recvLossRateAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sendLossRateAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadBwAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultSdk:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultCodec:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultRate:I

    .line 50
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultDownloadBw:F

    .line 51
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultUploadBw:F

    .line 52
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultPacketsSent:J

    .line 53
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultPacketsReceived:J

    .line 54
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultBytesSent:J

    .line 55
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultBytesReceived:J

    .line 56
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultSendLossRate:F

    .line 57
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultRecvLossRate:F

    .line 58
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultIncomingTooLate:J

    .line 59
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultIncomingPacketsLost:J

    .line 60
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultAverageJitterRx:F

    .line 61
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMinJitterRx:F

    .line 62
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMaxJitterRx:F

    .line 63
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultAverageJitterTx:F

    .line 64
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMinJitterTx:F

    .line 65
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMaxJitterTx:F

    .line 66
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultAverageRtt:F

    .line 67
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMinRtt:F

    .line 68
    iput v1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMaxRtt:F

    .line 70
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->sdkAdapter:Lcom/google/gson/TypeAdapter;

    .line 71
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->codecAdapter:Lcom/google/gson/TypeAdapter;

    .line 72
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->rateAdapter:Lcom/google/gson/TypeAdapter;

    .line 73
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->downloadBwAdapter:Lcom/google/gson/TypeAdapter;

    .line 74
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->uploadBwAdapter:Lcom/google/gson/TypeAdapter;

    .line 75
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->packetsSentAdapter:Lcom/google/gson/TypeAdapter;

    .line 76
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->packetsReceivedAdapter:Lcom/google/gson/TypeAdapter;

    .line 77
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->bytesSentAdapter:Lcom/google/gson/TypeAdapter;

    .line 78
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->bytesReceivedAdapter:Lcom/google/gson/TypeAdapter;

    .line 79
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->sendLossRateAdapter:Lcom/google/gson/TypeAdapter;

    .line 80
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->recvLossRateAdapter:Lcom/google/gson/TypeAdapter;

    .line 81
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->incomingTooLateAdapter:Lcom/google/gson/TypeAdapter;

    .line 82
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->incomingPacketsLostAdapter:Lcom/google/gson/TypeAdapter;

    .line 83
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->averageJitterRxAdapter:Lcom/google/gson/TypeAdapter;

    .line 84
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->minJitterRxAdapter:Lcom/google/gson/TypeAdapter;

    .line 85
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->maxJitterRxAdapter:Lcom/google/gson/TypeAdapter;

    .line 86
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->averageJitterTxAdapter:Lcom/google/gson/TypeAdapter;

    .line 87
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->minJitterTxAdapter:Lcom/google/gson/TypeAdapter;

    .line 88
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->maxJitterTxAdapter:Lcom/google/gson/TypeAdapter;

    .line 89
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->averageRttAdapter:Lcom/google/gson/TypeAdapter;

    .line 90
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->minRttAdapter:Lcom/google/gson/TypeAdapter;

    .line 91
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->maxRttAdapter:Lcom/google/gson/TypeAdapter;

    .line 92
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;
    .locals 33

    .prologue
    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 238
    const/4 v2, 0x0

    .line 364
    :goto_0
    return-object v2

    .line 240
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultSdk:Ljava/lang/String;

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultCodec:Ljava/lang/String;

    .line 243
    move-object/from16 v0, p0

    iget v5, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultRate:I

    .line 244
    move-object/from16 v0, p0

    iget v6, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultDownloadBw:F

    .line 245
    move-object/from16 v0, p0

    iget v7, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultUploadBw:F

    .line 246
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultPacketsSent:J

    .line 247
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultPacketsReceived:J

    .line 248
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultBytesSent:J

    .line 249
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultBytesReceived:J

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultSendLossRate:F

    move/from16 v16, v0

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultRecvLossRate:F

    move/from16 v17, v0

    .line 252
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultIncomingTooLate:J

    move-wide/from16 v18, v0

    .line 253
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultIncomingPacketsLost:J

    move-wide/from16 v20, v0

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultAverageJitterRx:F

    move/from16 v22, v0

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMinJitterRx:F

    move/from16 v23, v0

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMaxJitterRx:F

    move/from16 v24, v0

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultAverageJitterTx:F

    move/from16 v25, v0

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMinJitterTx:F

    move/from16 v26, v0

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMaxJitterTx:F

    move/from16 v27, v0

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultAverageRtt:F

    move/from16 v28, v0

    .line 261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMinRtt:F

    move/from16 v29, v0

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMaxRtt:F

    move/from16 v30, v0

    .line 263
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v31

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v32, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    move-object/from16 v0, v32

    if-ne v2, v0, :cond_1

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_1

    .line 269
    :cond_1
    const/4 v2, -0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v32

    sparse-switch v32, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_1

    .line 269
    :sswitch_0
    const-string/jumbo v32, "sdk"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v32, "codec"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v32, "rate"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v32, "downloadBw"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v32, "uploadBw"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v32, "packetsSent"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_6
    const-string/jumbo v32, "packetsReceived"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_7
    const-string/jumbo v32, "bytesSent"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_8
    const-string/jumbo v32, "bytesReceived"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_9
    const-string/jumbo v32, "sendLossRate"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0x9

    goto :goto_2

    :sswitch_a
    const-string/jumbo v32, "recvLossRate"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v32, "incomingTooLate"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v32, "incomingPacketsLost"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v32, "averageJitterRx"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v32, "minJitterRx"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string/jumbo v32, "maxJitterRx"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string/jumbo v32, "averageJitterTx"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0x10

    goto/16 :goto_2

    :sswitch_11
    const-string/jumbo v32, "minJitterTx"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string/jumbo v32, "maxJitterTx"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0x12

    goto/16 :goto_2

    :sswitch_13
    const-string/jumbo v32, "averageRtt"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0x13

    goto/16 :goto_2

    :sswitch_14
    const-string/jumbo v32, "minRtt"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0x14

    goto/16 :goto_2

    :sswitch_15
    const-string/jumbo v32, "maxRtt"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    const/16 v2, 0x15

    goto/16 :goto_2

    .line 271
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->sdkAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    .line 272
    goto/16 :goto_1

    .line 275
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->codecAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    .line 276
    goto/16 :goto_1

    .line 279
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->rateAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_1

    .line 283
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->downloadBwAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto/16 :goto_1

    .line 287
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->uploadBwAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto/16 :goto_1

    .line 291
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->packetsSentAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto/16 :goto_1

    .line 295
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->packetsReceivedAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto/16 :goto_1

    .line 299
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->bytesSentAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto/16 :goto_1

    .line 303
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->bytesReceivedAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto/16 :goto_1

    .line 307
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->sendLossRateAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v16

    goto/16 :goto_1

    .line 311
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->recvLossRateAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v17

    goto/16 :goto_1

    .line 315
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->incomingTooLateAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto/16 :goto_1

    .line 319
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->incomingPacketsLostAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    goto/16 :goto_1

    .line 323
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->averageJitterRxAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v22

    goto/16 :goto_1

    .line 327
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->minJitterRxAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v23

    goto/16 :goto_1

    .line 331
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->maxJitterRxAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v24

    goto/16 :goto_1

    .line 335
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->averageJitterTxAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v25

    goto/16 :goto_1

    .line 339
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->minJitterTxAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v26

    goto/16 :goto_1

    .line 343
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->maxJitterTxAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v27

    goto/16 :goto_1

    .line 347
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->averageRttAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v28

    goto/16 :goto_1

    .line 351
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->minRttAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v29

    goto/16 :goto_1

    .line 355
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->maxRttAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v30

    goto/16 :goto_1

    .line 363
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 364
    new-instance v2, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics;

    invoke-direct/range {v2 .. v30}, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics;-><init>(Ljava/lang/String;Ljava/lang/String;IFFJJJJFFJJFFFFFFFFF)V

    goto/16 :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7937295d -> :sswitch_7
        -0x73524957 -> :sswitch_a
        -0x594895b5 -> :sswitch_9
        -0x4d4cb8ec -> :sswitch_b
        -0x40710d92 -> :sswitch_15
        -0x4004dd40 -> :sswitch_14
        -0x2f33b157 -> :sswitch_c
        -0x2d0f173c -> :sswitch_e
        -0x2d0f16fe -> :sswitch_11
        -0x4ae4a2a -> :sswitch_f
        -0x4ae49ec -> :sswitch_12
        0x1bc3a -> :sswitch_0
        0x354ce0 -> :sswitch_2
        0x5a71016 -> :sswitch_1
        0x1d1cd315 -> :sswitch_13
        0x20ba1b23 -> :sswitch_5
        0x36d977ec -> :sswitch_6
        0x381e736c -> :sswitch_8
        0x5d389a36 -> :sswitch_4
        0x6869258f -> :sswitch_d
        0x686925cd -> :sswitch_10
        0x798acefd -> :sswitch_3
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
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultAverageJitterRx(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultAverageJitterRx:F

    .line 147
    return-object p0
.end method

.method public setDefaultAverageJitterTx(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultAverageJitterTx:F

    .line 159
    return-object p0
.end method

.method public setDefaultAverageRtt(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultAverageRtt:F

    .line 171
    return-object p0
.end method

.method public setDefaultBytesReceived(J)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 1

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultBytesReceived:J

    .line 127
    return-object p0
.end method

.method public setDefaultBytesSent(J)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 1

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultBytesSent:J

    .line 123
    return-object p0
.end method

.method public setDefaultCodec(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultCodec:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public setDefaultDownloadBw(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultDownloadBw:F

    .line 107
    return-object p0
.end method

.method public setDefaultIncomingPacketsLost(J)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 1

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultIncomingPacketsLost:J

    .line 143
    return-object p0
.end method

.method public setDefaultIncomingTooLate(J)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 1

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultIncomingTooLate:J

    .line 139
    return-object p0
.end method

.method public setDefaultMaxJitterRx(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMaxJitterRx:F

    .line 155
    return-object p0
.end method

.method public setDefaultMaxJitterTx(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMaxJitterTx:F

    .line 167
    return-object p0
.end method

.method public setDefaultMaxRtt(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMaxRtt:F

    .line 179
    return-object p0
.end method

.method public setDefaultMinJitterRx(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMinJitterRx:F

    .line 151
    return-object p0
.end method

.method public setDefaultMinJitterTx(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMinJitterTx:F

    .line 163
    return-object p0
.end method

.method public setDefaultMinRtt(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultMinRtt:F

    .line 175
    return-object p0
.end method

.method public setDefaultPacketsReceived(J)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 1

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultPacketsReceived:J

    .line 119
    return-object p0
.end method

.method public setDefaultPacketsSent(J)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 1

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultPacketsSent:J

    .line 115
    return-object p0
.end method

.method public setDefaultRate(I)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultRate:I

    .line 103
    return-object p0
.end method

.method public setDefaultRecvLossRate(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultRecvLossRate:F

    .line 135
    return-object p0
.end method

.method public setDefaultSdk(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultSdk:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setDefaultSendLossRate(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultSendLossRate:F

    .line 131
    return-object p0
.end method

.method public setDefaultUploadBw(F)Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->defaultUploadBw:F

    .line 111
    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)V
    .locals 4

    .prologue
    .line 183
    if-nez p2, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 233
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 188
    const-string/jumbo v0, "sdk"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->sdkAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->sdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 190
    const-string/jumbo v0, "codec"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->codecAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->codec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 192
    const-string/jumbo v0, "rate"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->rateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->rate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 194
    const-string/jumbo v0, "downloadBw"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->downloadBwAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->downloadBw()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 196
    const-string/jumbo v0, "uploadBw"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->uploadBwAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->uploadBw()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 198
    const-string/jumbo v0, "packetsSent"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->packetsSentAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->packetsSent()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 200
    const-string/jumbo v0, "packetsReceived"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->packetsReceivedAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->packetsReceived()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 202
    const-string/jumbo v0, "bytesSent"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->bytesSentAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->bytesSent()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 204
    const-string/jumbo v0, "bytesReceived"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->bytesReceivedAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->bytesReceived()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 206
    const-string/jumbo v0, "sendLossRate"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->sendLossRateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->sendLossRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 208
    const-string/jumbo v0, "recvLossRate"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->recvLossRateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->recvLossRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 210
    const-string/jumbo v0, "incomingTooLate"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->incomingTooLateAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->incomingTooLate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 212
    const-string/jumbo v0, "incomingPacketsLost"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->incomingPacketsLostAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->incomingPacketsLost()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 214
    const-string/jumbo v0, "averageJitterRx"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->averageJitterRxAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageJitterRx()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 216
    const-string/jumbo v0, "minJitterRx"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->minJitterRxAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minJitterRx()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 218
    const-string/jumbo v0, "maxJitterRx"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->maxJitterRxAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxJitterRx()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 220
    const-string/jumbo v0, "averageJitterTx"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->averageJitterTxAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageJitterTx()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 222
    const-string/jumbo v0, "minJitterTx"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->minJitterTxAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minJitterTx()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 224
    const-string/jumbo v0, "maxJitterTx"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->maxJitterTxAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxJitterTx()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 226
    const-string/jumbo v0, "averageRtt"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->averageRttAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageRtt()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 228
    const-string/jumbo v0, "minRtt"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->minRttAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minRtt()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 230
    const-string/jumbo v0, "maxRtt"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->maxRttAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxRtt()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p2, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)V

    return-void
.end method
