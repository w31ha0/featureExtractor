.class Lorg/linphone/core/LinphoneCallLogImpl;
.super Ljava/lang/Object;
.source "LinphoneCallLogImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneCallLog;


# instance fields
.field protected final nativePtr:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    .line 38
    return-void
.end method

.method private native getCallDuration(J)I
.end method

.method private native getCallId(J)Ljava/lang/String;
.end method

.method private native getFrom(J)J
.end method

.method private native getStartDate(J)Ljava/lang/String;
.end method

.method private native getStatus(J)I
.end method

.method private native getTimestamp(J)J
.end method

.method private native getTo(J)J
.end method

.method private native isIncoming(J)Z
.end method

.method private native wasConference(J)Z
.end method


# virtual methods
.method public getCallDuration()I
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallLogImpl;->getCallDuration(J)I

    move-result v0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallLogImpl;->getCallId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Lorg/linphone/core/CallDirection;
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallLogImpl;->isIncoming(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/linphone/core/CallDirection;->Incoming:Lorg/linphone/core/CallDirection;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/linphone/core/CallDirection;->Outgoing:Lorg/linphone/core/CallDirection;

    goto :goto_0
.end method

.method public getFrom()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneCallLogImpl;->getFrom(J)J

    move-result-wide v2

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromExisting:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    return-wide v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallLogImpl;->getStartDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/linphone/core/LinphoneCallLog$CallStatus;
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallLogImpl;->getStatus(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCallLog$CallStatus;->fromInt(I)Lorg/linphone/core/LinphoneCallLog$CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 4

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallLogImpl;->getTimestamp(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTo()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneCallLogImpl;->getTo(J)J

    move-result-wide v2

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromExisting:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    return-object v0
.end method

.method public wasConference()Z
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallLogImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallLogImpl;->wasConference(J)Z

    move-result v0

    return v0
.end method
