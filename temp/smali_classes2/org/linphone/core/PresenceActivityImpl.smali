.class public Lorg/linphone/core/PresenceActivityImpl;
.super Ljava/lang/Object;
.source "PresenceActivityImpl.java"

# interfaces
.implements Lorg/linphone/core/PresenceActivity;


# instance fields
.field private mNativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/linphone/core/PresenceActivityImpl;->mNativePtr:J

    .line 27
    return-void
.end method

.method protected constructor <init>(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/linphone/core/PresenceActivityType;->toInt()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/linphone/core/PresenceActivityImpl;->newPresenceActivityImpl(ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/PresenceActivityImpl;->mNativePtr:J

    .line 32
    return-void
.end method

.method private native getDescription(J)Ljava/lang/String;
.end method

.method private native getType(J)I
.end method

.method private native newPresenceActivityImpl(ILjava/lang/String;)J
.end method

.method private native setDescription(JLjava/lang/String;)I
.end method

.method private native setType(JI)I
.end method

.method private native toString(J)Ljava/lang/String;
.end method

.method private native unref(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/linphone/core/PresenceActivityImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceActivityImpl;->unref(J)V

    .line 37
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/linphone/core/PresenceActivityImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceActivityImpl;->getDescription(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/linphone/core/PresenceActivityImpl;->mNativePtr:J

    return-wide v0
.end method

.method public getType()Lorg/linphone/core/PresenceActivityType;
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/linphone/core/PresenceActivityImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceActivityImpl;->getType(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/PresenceActivityType;->fromInt(I)Lorg/linphone/core/PresenceActivityType;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/linphone/core/PresenceActivityImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/PresenceActivityImpl;->setDescription(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setType(Lorg/linphone/core/PresenceActivityType;)I
    .locals 3

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/linphone/core/PresenceActivityImpl;->mNativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/PresenceActivityType;->toInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/PresenceActivityImpl;->setType(JI)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/linphone/core/PresenceActivityImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceActivityImpl;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
