.class Lorg/linphone/core/LinphoneCallStatsImpl;
.super Ljava/lang/Object;
.source "LinphoneCallStatsImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneCallStats;


# instance fields
.field private bytesReceived:J

.field private bytesSent:J

.field private cumulativePacketsLost:J

.field private downloadBandwidth:F

.field private iceState:I

.field private jitterBufferSize:F

.field private latePacketsCumulativeNumber:J

.field private localLateRate:F

.field private localLossRate:F

.field private mediaType:I

.field private nativePtr:J

.field private packetsReceived:J

.field private packetsSent:J

.field private receiverInterarrivalJitter:F

.field private receiverLossRate:F

.field private roundTripDelay:F

.field private senderInterarrivalJitter:F

.field private senderLossRate:F

.field private uploadBandwidth:F


# direct methods
.method protected constructor <init>(J)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->nativePtr:J

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getMediaType(J)I

    move-result v0

    iput v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->mediaType:I

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getIceState(J)I

    move-result v0

    iput v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->iceState:I

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getDownloadBandwidth(J)F

    move-result v0

    iput v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->downloadBandwidth:F

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getUploadBandwidth(J)F

    move-result v0

    iput v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->uploadBandwidth:F

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getNumberPacketsSent(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->packetsSent:J

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getNumberPacketsReceived(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->packetsReceived:J

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getNumberBytesSent(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->bytesSent:J

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getNumberBytesReceived(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->bytesReceived:J

    .line 74
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getSenderLossRate(J)F

    move-result v0

    iput v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->senderLossRate:F

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getReceiverLossRate(J)F

    move-result v0

    iput v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->receiverLossRate:F

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getCumulativePacketsLost(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->cumulativePacketsLost:J

    .line 77
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getSenderInterarrivalJitter(J)F

    move-result v0

    iput v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->senderInterarrivalJitter:F

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getReceiverInterarrivalJitter(J)F

    move-result v0

    iput v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->receiverInterarrivalJitter:F

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getRoundTripDelay(J)F

    move-result v0

    iput v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->roundTripDelay:F

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getLatePacketsCumulativeNumber(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->latePacketsCumulativeNumber:J

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/LinphoneCallStatsImpl;->getJitterBufferSize(J)F

    move-result v0

    iput v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->jitterBufferSize:F

    .line 82
    return-void
.end method

.method private native getCumulativePacketsLost(J)J
.end method

.method private native getDownloadBandwidth(J)F
.end method

.method private native getIceState(J)I
.end method

.method private native getIpFamilyOfRemote(J)I
.end method

.method private native getJitterBufferSize(J)F
.end method

.method private native getLatePacketsCumulativeNumber(J)J
.end method

.method private native getLocalLateRate(J)F
.end method

.method private native getLocalLossRate(J)F
.end method

.method private native getMediaType(J)I
.end method

.method private native getNumberBytesReceived(J)J
.end method

.method private native getNumberBytesSent(J)J
.end method

.method private native getNumberPacketsReceived(J)J
.end method

.method private native getNumberPacketsSent(J)J
.end method

.method private native getReceiverInterarrivalJitter(J)F
.end method

.method private native getReceiverLossRate(J)F
.end method

.method private native getRoundTripDelay(J)F
.end method

.method private native getSenderInterarrivalJitter(J)F
.end method

.method private native getSenderLossRate(J)F
.end method

.method private native getUploadBandwidth(J)F
.end method

.method private native updateStats(JI)V
.end method


# virtual methods
.method public getCumulativePacketsLost()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->cumulativePacketsLost:J

    return-wide v0
.end method

.method public getDownloadBandwidth()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->downloadBandwidth:F

    return v0
.end method

.method public getIceState()Lorg/linphone/core/LinphoneCallStats$IceState;
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->iceState:I

    invoke-static {v0}, Lorg/linphone/core/LinphoneCallStats$IceState;->fromInt(I)Lorg/linphone/core/LinphoneCallStats$IceState;

    move-result-object v0

    return-object v0
.end method

.method public getIpFamilyOfRemote()I
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallStatsImpl;->getIpFamilyOfRemote(J)I

    move-result v0

    return v0
.end method

.method public getJitterBufferSize()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->jitterBufferSize:F

    return v0
.end method

.method public getLatePacketsCumulativeNumber()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->latePacketsCumulativeNumber:J

    return-wide v0
.end method

.method public getLocalLateRate()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->localLateRate:F

    return v0
.end method

.method public getLocalLossRate()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->localLossRate:F

    return v0
.end method

.method public getMediaType()Lorg/linphone/core/LinphoneCallStats$MediaType;
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->mediaType:I

    invoke-static {v0}, Lorg/linphone/core/LinphoneCallStats$MediaType;->fromInt(I)Lorg/linphone/core/LinphoneCallStats$MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getNumberBytesReceived()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallStatsImpl;->getNumberBytesReceived(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberBytesSent()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallStatsImpl;->getNumberBytesSent(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberPacketsReceived()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallStatsImpl;->getNumberPacketsReceived(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberPacketsSent()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallStatsImpl;->getNumberPacketsSent(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReceiverInterarrivalJitter()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->receiverInterarrivalJitter:F

    return v0
.end method

.method public getReceiverLossRate()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->receiverLossRate:F

    return v0
.end method

.method public getRoundTripDelay()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->roundTripDelay:F

    return v0
.end method

.method public getSenderInterarrivalJitter()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->senderInterarrivalJitter:F

    return v0
.end method

.method public getSenderLossRate()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->senderLossRate:F

    return v0
.end method

.method public getUploadBandwidth()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/linphone/core/LinphoneCallStatsImpl;->uploadBandwidth:F

    return v0
.end method
