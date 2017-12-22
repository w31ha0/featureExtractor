.class public Lorg/linphone/core/LinphoneCore$Transports;
.super Ljava/lang/Object;
.source "LinphoneCore.java"


# instance fields
.field public tcp:I

.field public tls:I

.field public udp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/linphone/core/LinphoneCore$Transports;)V
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iget v0, p1, Lorg/linphone/core/LinphoneCore$Transports;->udp:I

    iput v0, p0, Lorg/linphone/core/LinphoneCore$Transports;->udp:I

    .line 246
    iget v0, p1, Lorg/linphone/core/LinphoneCore$Transports;->tcp:I

    iput v0, p0, Lorg/linphone/core/LinphoneCore$Transports;->tcp:I

    .line 247
    iget v0, p1, Lorg/linphone/core/LinphoneCore$Transports;->tls:I

    iput v0, p0, Lorg/linphone/core/LinphoneCore$Transports;->tls:I

    .line 248
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "udp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/linphone/core/LinphoneCore$Transports;->udp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] tcp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/linphone/core/LinphoneCore$Transports;->tcp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] tls["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/linphone/core/LinphoneCore$Transports;->tls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
