.class public Lorg/linphone/core/LinphoneXmlRpcSessionImpl;
.super Ljava/lang/Object;
.source "LinphoneXmlRpcSessionImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneXmlRpcSession;


# instance fields
.field protected nativePtr:J


# direct methods
.method public constructor <init>(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    check-cast p1, Lorg/linphone/core/LinphoneCoreImpl;

    iget-wide v0, p1, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p2}, Lorg/linphone/core/LinphoneXmlRpcSessionImpl;->newLinphoneXmlRpcSession(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcSessionImpl;->nativePtr:J

    .line 27
    return-void
.end method

.method private native newLinphoneXmlRpcSession(JLjava/lang/String;)J
.end method

.method private native sendRequest(JJ)V
.end method

.method private native unref(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcSessionImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneXmlRpcSessionImpl;->unref(J)V

    .line 36
    return-void
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcSessionImpl;->nativePtr:J

    return-wide v0
.end method

.method public sendRequest(Lorg/linphone/core/LinphoneXmlRpcRequest;)V
    .locals 4

    .prologue
    .line 41
    iget-wide v0, p0, Lorg/linphone/core/LinphoneXmlRpcSessionImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneXmlRpcRequestImpl;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneXmlRpcSessionImpl;->sendRequest(JJ)V

    .line 42
    return-void
.end method
