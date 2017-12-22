.class public Lorg/linphone/core/PresenceServiceImpl;
.super Ljava/lang/Object;
.source "PresenceServiceImpl.java"

# interfaces
.implements Lorg/linphone/core/PresenceService;


# instance fields
.field private mNativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    .line 27
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/linphone/core/PresenceBasicStatus;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p2}, Lorg/linphone/core/PresenceBasicStatus;->toInt()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lorg/linphone/core/PresenceServiceImpl;->newPresenceServiceImpl(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    .line 32
    return-void
.end method

.method private native addNote(JJ)I
.end method

.method private native clearNotes(J)I
.end method

.method private native getBasicStatus(J)I
.end method

.method private native getContact(J)Ljava/lang/String;
.end method

.method private native getId(J)Ljava/lang/String;
.end method

.method private native getNbNotes(J)J
.end method

.method private native getNthNote(JJ)Ljava/lang/Object;
.end method

.method private native newPresenceServiceImpl(Ljava/lang/String;ILjava/lang/String;)J
.end method

.method private native setBasicStatus(JI)I
.end method

.method private native setContact(JLjava/lang/String;)I
.end method

.method private native setId(JLjava/lang/String;)I
.end method

.method private native unref(J)V
.end method


# virtual methods
.method public addNote(Lorg/linphone/core/PresenceNote;)I
    .locals 4

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/PresenceNote;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/PresenceServiceImpl;->addNote(JJ)I

    move-result v0

    return v0
.end method

.method public clearNotes()I
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceServiceImpl;->clearNotes(J)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceServiceImpl;->unref(J)V

    .line 37
    return-void
.end method

.method public getBasicStatus()Lorg/linphone/core/PresenceBasicStatus;
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceServiceImpl;->getBasicStatus(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/PresenceBasicStatus;->fromInt(I)Lorg/linphone/core/PresenceBasicStatus;

    move-result-object v0

    return-object v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceServiceImpl;->getContact(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceServiceImpl;->getId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    return-wide v0
.end method

.method public getNbNotes()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceServiceImpl;->getNbNotes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNthNote(J)Lorg/linphone/core/PresenceNote;
    .locals 3

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/PresenceServiceImpl;->getNthNote(JJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceNote;

    return-object v0
.end method

.method public setBasicStatus(Lorg/linphone/core/PresenceBasicStatus;)I
    .locals 3

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/PresenceBasicStatus;->toInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/PresenceServiceImpl;->setBasicStatus(JI)I

    move-result v0

    return v0
.end method

.method public setContact(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/PresenceServiceImpl;->setContact(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/linphone/core/PresenceServiceImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/PresenceServiceImpl;->setId(JLjava/lang/String;)I

    move-result v0

    return v0
.end method
