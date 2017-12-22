.class public abstract Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.super Ljava/lang/Object;
.source "VoipCallStatistics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;
.end method

.method public abstract setAverageJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setAverageJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setAverageRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setBytesReceived(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setBytesSent(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setCodec(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setDownloadBw(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setIncomingPacketsLost(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setIncomingTooLate(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setMaxJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setMaxJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setMaxRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setMinJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setMinJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setMinRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setPacketsReceived(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setPacketsSent(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setRate(I)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setRecvLossRate(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setSdk(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setSendLossRate(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method

.method public abstract setUploadBw(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.end method
