.class public Lorg/linphone/core/LinphoneInfoMessageImpl;
.super Ljava/lang/Object;
.source "LinphoneInfoMessageImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneInfoMessage;


# instance fields
.field private mContent:Lorg/linphone/core/LinphoneContent;

.field protected nativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->nativePtr:J

    .line 10
    iget-wide v0, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneInfoMessageImpl;->getContent(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneContent;

    iput-object v0, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->mContent:Lorg/linphone/core/LinphoneContent;

    .line 11
    return-void
.end method

.method private native addHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native delete(J)V
.end method

.method private native getContent(J)Ljava/lang/Object;
.end method

.method private native getHeader(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native setContent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneInfoMessageImpl;->addHeader(JLjava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneInfoMessageImpl;->delete(J)V

    .line 40
    return-void
.end method

.method public getContent()Lorg/linphone/core/LinphoneContent;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->mContent:Lorg/linphone/core/LinphoneContent;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneInfoMessageImpl;->getHeader(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Lorg/linphone/core/LinphoneContent;)V
    .locals 7

    .prologue
    .line 16
    iput-object p1, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->mContent:Lorg/linphone/core/LinphoneContent;

    .line 17
    iget-wide v2, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->nativePtr:J

    iget-object v0, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->mContent:Lorg/linphone/core/LinphoneContent;

    invoke-interface {v0}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->mContent:Lorg/linphone/core/LinphoneContent;

    invoke-interface {v0}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/linphone/core/LinphoneInfoMessageImpl;->mContent:Lorg/linphone/core/LinphoneContent;

    invoke-interface {v0}, Lorg/linphone/core/LinphoneContent;->getDataAsString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneInfoMessageImpl;->setContent(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
