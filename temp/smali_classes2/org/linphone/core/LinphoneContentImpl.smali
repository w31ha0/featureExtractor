.class public Lorg/linphone/core/LinphoneContentImpl;
.super Ljava/lang/Object;
.source "LinphoneContentImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneContent;


# instance fields
.field private mData:[B

.field private mEncoding:Ljava/lang/String;

.field private mExpectedSize:I

.field private mName:Ljava/lang/String;

.field private mSubtype:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lorg/linphone/core/LinphoneContentImpl;->mType:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lorg/linphone/core/LinphoneContentImpl;->mSubtype:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lorg/linphone/core/LinphoneContentImpl;->mData:[B

    .line 40
    iput-object p5, p0, Lorg/linphone/core/LinphoneContentImpl;->mEncoding:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lorg/linphone/core/LinphoneContentImpl;->mName:Ljava/lang/String;

    .line 42
    iput p6, p0, Lorg/linphone/core/LinphoneContentImpl;->mExpectedSize:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/linphone/core/LinphoneContentImpl;->mType:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lorg/linphone/core/LinphoneContentImpl;->mSubtype:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lorg/linphone/core/LinphoneContentImpl;->mData:[B

    .line 31
    iput-object p4, p0, Lorg/linphone/core/LinphoneContentImpl;->mEncoding:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mExpectedSize:I

    .line 34
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mData:[B

    return-object v0
.end method

.method public getDataAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mData:[B

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/linphone/core/LinphoneContentImpl;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExpectedSize()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mExpectedSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRealSize()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mData:[B

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mData:[B

    array-length v0, v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mSubtype:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lorg/linphone/core/LinphoneContentImpl;->mData:[B

    .line 100
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lorg/linphone/core/LinphoneContentImpl;->mEncoding:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setExpectedSize(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lorg/linphone/core/LinphoneContentImpl;->mExpectedSize:I

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lorg/linphone/core/LinphoneContentImpl;->mName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setStringData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mData:[B

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/linphone/core/LinphoneContentImpl;->mData:[B

    goto :goto_0
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/linphone/core/LinphoneContentImpl;->mSubtype:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/linphone/core/LinphoneContentImpl;->mType:Ljava/lang/String;

    .line 82
    return-void
.end method
