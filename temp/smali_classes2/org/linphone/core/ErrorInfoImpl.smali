.class public Lorg/linphone/core/ErrorInfoImpl;
.super Ljava/lang/Object;
.source "ErrorInfoImpl.java"

# interfaces
.implements Lorg/linphone/core/ErrorInfo;


# instance fields
.field private mCode:I

.field private mDetails:Ljava/lang/String;

.field private mPhrase:Ljava/lang/String;

.field private mReason:Lorg/linphone/core/Reason;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/ErrorInfoImpl;->getReason(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/Reason;->fromInt(I)Lorg/linphone/core/Reason;

    move-result-object v0

    iput-object v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mReason:Lorg/linphone/core/Reason;

    .line 16
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/ErrorInfoImpl;->getProtocolCode(J)I

    move-result v0

    iput v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mCode:I

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/ErrorInfoImpl;->getPhrase(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mPhrase:Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/linphone/core/ErrorInfoImpl;->getDetails(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mDetails:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private native getDetails(J)Ljava/lang/String;
.end method

.method private native getPhrase(J)Ljava/lang/String;
.end method

.method private native getProtocolCode(J)I
.end method

.method private native getReason(J)I
.end method


# virtual methods
.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mCode:I

    return v0
.end method

.method public getReason()Lorg/linphone/core/Reason;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/linphone/core/ErrorInfoImpl;->mReason:Lorg/linphone/core/Reason;

    return-object v0
.end method
