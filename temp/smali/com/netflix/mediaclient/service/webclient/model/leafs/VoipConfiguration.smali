.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
.super Ljava/lang/Object;
.source "VoipConfiguration.java"


# static fields
.field public static final DEFAULT_SAMPLERATE:I = 0x1f40

.field public static final DEF_VOIP_CONIFG:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

.field public static final MAX_SAMPLERATE_48K:I = 0xbb80

.field public static final MIN_SAMPLERATE_8K:I = 0x1f40

.field private static TAG:Ljava/lang/String;


# instance fields
.field private enableVoip:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoip"
    .end annotation
.end field

.field private enableVoipOverData:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoipOverData"
    .end annotation
.end field

.field private enableVoipOverWiFi:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableVoipOverWiFi"
    .end annotation
.end field

.field private jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jitterThresholdInMs"
    .end annotation
.end field

.field private openDialpadByDefault:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openDialpadByDefault"
    .end annotation
.end field

.field private packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packetLosThresholdInPercent"
    .end annotation
.end field

.field private rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rttThresholdInMs"
    .end annotation
.end field

.field private sampleRateInHz:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sampleRateInHz"
    .end annotation
.end field

.field private showConfirmationDialog:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showConfirmationDialog"
    .end annotation
.end field

.field private showHelpForNonMember:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showHelpForNonMember"
    .end annotation
.end field

.field private sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sipThresholdInMs"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "nf_log"

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->DEF_VOIP_CONIFG:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoip:Z

    .line 25
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverData:Z

    .line 28
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverWiFi:Z

    .line 43
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->sampleRateInHz:I

    .line 49
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->showConfirmationDialog:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->openDialpadByDefault:Z

    return-void
.end method


# virtual methods
.method public getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public getSampleRateInHz()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->sampleRateInHz:I

    return v0
.end method

.method public getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    return-object v0
.end method

.method public isEnableVoip()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoip:Z

    return v0
.end method

.method public isEnableVoipOverData()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverData:Z

    return v0
.end method

.method public isEnableVoipOverWiFi()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverWiFi:Z

    return v0
.end method

.method public isOpenDialpadByDefault()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->openDialpadByDefault:Z

    return v0
.end method

.method public isShowConfirmationDialog()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->showConfirmationDialog:Z

    return v0
.end method

.method public isShowHelpForNonMember()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->showHelpForNonMember:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoipConfiguration{enableVoip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableVoipOverData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableVoipOverWiFi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->enableVoipOverWiFi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rttThresholdInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->rttThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", jitterThresholdInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->jitterThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sipThresholdInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->sipThresholdInMs:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packetLosThresholdInPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->packetLosThresholdInPercent:Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sampleRateInHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->sampleRateInHz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showHelpForNonMember="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->showHelpForNonMember:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showConfirmationDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->showConfirmationDialog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", openDialpadByDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->openDialpadByDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
