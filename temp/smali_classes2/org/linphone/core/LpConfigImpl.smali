.class Lorg/linphone/core/LpConfigImpl;
.super Ljava/lang/Object;
.source "LpConfigImpl.java"

# interfaces
.implements Lorg/linphone/core/LpConfig;


# instance fields
.field private nativePtr:J

.field ownPtr:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lorg/linphone/core/LpConfigImpl;->ownPtr:Z

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    .line 42
    iput-boolean v2, p0, Lorg/linphone/core/LpConfigImpl;->ownPtr:Z

    .line 43
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/linphone/core/LpConfigImpl;->ownPtr:Z

    .line 27
    iput-wide p1, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/linphone/core/LpConfigImpl;->ownPtr:Z

    .line 36
    invoke-direct {p0, p1}, Lorg/linphone/core/LpConfigImpl;->newLpConfigImpl(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/linphone/core/LpConfigImpl;->ownPtr:Z

    .line 38
    return-void
.end method

.method private native delete(J)V
.end method

.method public static fromBuffer(Ljava/lang/String;)Lorg/linphone/core/LpConfigImpl;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lorg/linphone/core/LpConfigImpl;

    invoke-direct {v0}, Lorg/linphone/core/LpConfigImpl;-><init>()V

    .line 54
    invoke-direct {v0, p0}, Lorg/linphone/core/LpConfigImpl;->newLpConfigImplFromBuffer(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/linphone/core/LpConfigImpl;->ownPtr:Z

    .line 56
    return-object v0
.end method

.method public static fromFile(Ljava/lang/String;)Lorg/linphone/core/LpConfigImpl;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lorg/linphone/core/LpConfigImpl;

    invoke-direct {v0}, Lorg/linphone/core/LpConfigImpl;-><init>()V

    .line 47
    invoke-direct {v0, p0}, Lorg/linphone/core/LpConfigImpl;->newLpConfigImpl(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/linphone/core/LpConfigImpl;->ownPtr:Z

    .line 49
    return-object v0
.end method

.method private native getBool(JLjava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private native getFloat(JLjava/lang/String;Ljava/lang/String;F)F
.end method

.method private native getInt(JLjava/lang/String;Ljava/lang/String;I)I
.end method

.method private native getIntRange(JLjava/lang/String;Ljava/lang/String;II)[I
.end method

.method private native getString(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native newLpConfigImpl(Ljava/lang/String;)J
.end method

.method private native newLpConfigImplFromBuffer(Ljava/lang/String;)J
.end method

.method private native setBool(JLjava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native setFloat(JLjava/lang/String;Ljava/lang/String;F)V
.end method

.method private native setInt(JLjava/lang/String;Ljava/lang/String;I)V
.end method

.method private native setIntRange(JLjava/lang/String;Ljava/lang/String;II)V
.end method

.method private native setString(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native sync(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/linphone/core/LpConfigImpl;->ownPtr:Z

    if-eqz v0, :cond_0

    .line 61
    iget-wide v0, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LpConfigImpl;->delete(J)V

    .line 63
    :cond_0
    return-void
.end method

.method public getBool(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    .line 116
    iget-wide v2, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LpConfigImpl;->getBool(JLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 7

    .prologue
    .line 110
    iget-wide v2, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LpConfigImpl;->getFloat(JLjava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 104
    iget-wide v2, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LpConfigImpl;->getInt(JLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntRange(Ljava/lang/String;Ljava/lang/String;II)[I
    .locals 8

    .prologue
    .line 128
    iget-wide v2, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LpConfigImpl;->getIntRange(JLjava/lang/String;Ljava/lang/String;II)[I

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 122
    iget-wide v2, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LpConfigImpl;->getString(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBool(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 86
    iget-wide v2, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LpConfigImpl;->setBool(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 87
    return-void
.end method

.method public setFloat(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 7

    .prologue
    .line 80
    iget-wide v2, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LpConfigImpl;->setFloat(JLjava/lang/String;Ljava/lang/String;F)V

    .line 81
    return-void
.end method

.method public setInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 74
    iget-wide v2, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LpConfigImpl;->setInt(JLjava/lang/String;Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public setIntRange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .prologue
    .line 98
    iget-wide v2, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LpConfigImpl;->setIntRange(JLjava/lang/String;Ljava/lang/String;II)V

    .line 99
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 92
    iget-wide v2, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LpConfigImpl;->setString(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public sync()V
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/linphone/core/LpConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LpConfigImpl;->sync(J)V

    .line 69
    return-void
.end method
