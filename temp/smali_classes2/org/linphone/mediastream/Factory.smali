.class public Lorg/linphone/mediastream/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# instance fields
.field private mNativePtr:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    .line 25
    return-void
.end method

.method private native enableFilterFromName(JLjava/lang/String;Z)V
.end method

.method private native filterFromNameEnabled(JLjava/lang/String;)Z
.end method

.method private native getDecoderText(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getEncoderText(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native setDeviceInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end method


# virtual methods
.method public enableFilterFromName(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/mediastream/Factory;->enableFilterFromName(JLjava/lang/String;Z)V

    .line 29
    return-void
.end method

.method public filterFromNameEnabled(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/mediastream/Factory;->filterFromNameEnabled(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDecoderText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/mediastream/Factory;->getDecoderText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoderText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/mediastream/Factory;->getEncoderText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 10

    .prologue
    .line 36
    iget-wide v2, p0, Lorg/linphone/mediastream/Factory;->mNativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/linphone/mediastream/Factory;->setDeviceInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 37
    return-void
.end method
