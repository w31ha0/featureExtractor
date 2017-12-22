.class public Lorg/linphone/core/PresencePersonImpl;
.super Ljava/lang/Object;
.source "PresencePersonImpl.java"

# interfaces
.implements Lorg/linphone/core/PresencePerson;


# instance fields
.field private mNativePtr:J


# direct methods
.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    .line 27
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lorg/linphone/core/PresencePersonImpl;->newPresencePersonImpl(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    .line 32
    return-void
.end method

.method private native addActivitiesNote(JJ)I
.end method

.method private native addActivity(JJ)I
.end method

.method private native addNote(JJ)I
.end method

.method private native clearActivitesNotes(J)I
.end method

.method private native clearActivities(J)I
.end method

.method private native clearNotes(J)I
.end method

.method private native getId(J)Ljava/lang/String;
.end method

.method private native getNbActivities(J)J
.end method

.method private native getNbActivitiesNotes(J)J
.end method

.method private native getNbNotes(J)J
.end method

.method private native getNthActivitiesNote(JJ)Ljava/lang/Object;
.end method

.method private native getNthActivity(JJ)Ljava/lang/Object;
.end method

.method private native getNthNote(JJ)Ljava/lang/Object;
.end method

.method private native newPresencePersonImpl(Ljava/lang/String;)J
.end method

.method private native setId(JLjava/lang/String;)I
.end method

.method private native unref(J)V
.end method


# virtual methods
.method public addActivitiesNote(Lorg/linphone/core/PresenceNote;)I
    .locals 4

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/PresenceNote;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/PresencePersonImpl;->addActivitiesNote(JJ)I

    move-result v0

    return v0
.end method

.method public addActivity(Lorg/linphone/core/PresenceActivity;)I
    .locals 4

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/PresenceActivity;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/PresencePersonImpl;->addActivity(JJ)I

    move-result v0

    return v0
.end method

.method public addNote(Lorg/linphone/core/PresenceNote;)I
    .locals 4

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/PresenceNote;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/PresencePersonImpl;->addNote(JJ)I

    move-result v0

    return v0
.end method

.method public clearActivitesNotes()I
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresencePersonImpl;->clearActivitesNotes(J)I

    move-result v0

    return v0
.end method

.method public clearActivities()I
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresencePersonImpl;->clearActivities(J)I

    move-result v0

    return v0
.end method

.method public clearNotes()I
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresencePersonImpl;->clearNotes(J)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresencePersonImpl;->unref(J)V

    .line 37
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresencePersonImpl;->getId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    return-wide v0
.end method

.method public getNbActivities()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresencePersonImpl;->getNbActivities(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNbActivitiesNotes()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresencePersonImpl;->getNbActivitiesNotes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNbNotes()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresencePersonImpl;->getNbNotes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNthActivitiesNote(J)Lorg/linphone/core/PresenceNote;
    .locals 3

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/PresencePersonImpl;->getNthActivitiesNote(JJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceNote;

    return-object v0
.end method

.method public getNthActivity(J)Lorg/linphone/core/PresenceActivity;
    .locals 3

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/PresencePersonImpl;->getNthActivity(JJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceActivity;

    return-object v0
.end method

.method public getNthNote(J)Lorg/linphone/core/PresenceNote;
    .locals 3

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/PresencePersonImpl;->getNthNote(JJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceNote;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/linphone/core/PresencePersonImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/PresencePersonImpl;->setId(JLjava/lang/String;)I

    move-result v0

    return v0
.end method
