.class public Lorg/linphone/core/LinphoneConferenceParamsImpl;
.super Ljava/lang/Object;
.source "LinphoneConferenceParamsImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneConferenceParams;


# instance fields
.field private nativePtr:J


# direct methods
.method public constructor <init>(Lorg/linphone/core/LinphoneConferenceParamsImpl;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneConferenceParamsImpl;->nativePtr:J

    .line 32
    iget-wide v0, p1, Lorg/linphone/core/LinphoneConferenceParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneConferenceParamsImpl;->copyInstance(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneConferenceParamsImpl;->nativePtr:J

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/linphone/core/LinphoneCore;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneConferenceParamsImpl;->nativePtr:J

    .line 27
    check-cast p1, Lorg/linphone/core/LinphoneCoreImpl;

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneConferenceParamsImpl;->createInstance(Lorg/linphone/core/LinphoneCoreImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneConferenceParamsImpl;->nativePtr:J

    .line 28
    return-void
.end method

.method private native copyInstance(J)J
.end method

.method private native createInstance(Lorg/linphone/core/LinphoneCoreImpl;)J
.end method

.method private native destroyInstance(J)V
.end method

.method private native enableVideo(JZ)V
.end method

.method private native isVideoRequested(J)Z
.end method


# virtual methods
.method public enableVideo(Z)V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/linphone/core/LinphoneConferenceParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneConferenceParamsImpl;->enableVideo(JZ)V

    .line 44
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/linphone/core/LinphoneConferenceParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneConferenceParamsImpl;->destroyInstance(J)V

    .line 38
    return-void
.end method

.method public isVideoRequested()Z
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/linphone/core/LinphoneConferenceParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneConferenceParamsImpl;->isVideoRequested(J)Z

    move-result v0

    return v0
.end method
