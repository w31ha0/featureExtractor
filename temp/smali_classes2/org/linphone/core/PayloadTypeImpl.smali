.class Lorg/linphone/core/PayloadTypeImpl;
.super Ljava/lang/Object;
.source "PayloadTypeImpl.java"

# interfaces
.implements Lorg/linphone/core/PayloadType;


# instance fields
.field public final nativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    .line 32
    return-void
.end method

.method private native getMime(J)Ljava/lang/String;
.end method

.method private native getRate(J)I
.end method

.method private native getRecvFmtp(J)Ljava/lang/String;
.end method

.method private native getSendFmtp(J)Ljava/lang/String;
.end method

.method private native setRecvFmtp(JLjava/lang/String;)V
.end method

.method private native setSendFmtp(JLjava/lang/String;)V
.end method

.method private native toString(J)Ljava/lang/String;
.end method


# virtual methods
.method public getMime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PayloadTypeImpl;->getMime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRate()I
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PayloadTypeImpl;->getRate(J)I

    move-result v0

    return v0
.end method

.method public getRecvFmtp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PayloadTypeImpl;->getRecvFmtp(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSendFmtp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PayloadTypeImpl;->getSendFmtp(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRecvFmtp(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/PayloadTypeImpl;->setRecvFmtp(JLjava/lang/String;)V

    .line 50
    return-void
.end method

.method public setSendFmtp(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/PayloadTypeImpl;->setSendFmtp(JLjava/lang/String;)V

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PayloadTypeImpl;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
