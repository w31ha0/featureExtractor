.class public Lorg/linphone/core/LinphoneConferenceImpl;
.super Ljava/lang/Object;
.source "LinphoneConferenceImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneConference;


# instance fields
.field private final nativePtr:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lorg/linphone/core/LinphoneConferenceImpl;->nativePtr:J

    .line 30
    return-void
.end method

.method private native getParticipants(J)[Lorg/linphone/core/LinphoneAddress;
.end method

.method private native removeParticipant(JLorg/linphone/core/LinphoneAddress;)I
.end method


# virtual methods
.method public getParticipants()[Lorg/linphone/core/LinphoneAddress;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lorg/linphone/core/LinphoneConferenceImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneConferenceImpl;->getParticipants(J)[Lorg/linphone/core/LinphoneAddress;

    move-result-object v0

    return-object v0
.end method

.method public removeParticipant(Lorg/linphone/core/LinphoneAddress;)I
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/linphone/core/LinphoneConferenceImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneConferenceImpl;->removeParticipant(JLorg/linphone/core/LinphoneAddress;)I

    move-result v0

    return v0
.end method
