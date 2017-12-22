.class public Lorg/linphone/core/PresenceModelImpl;
.super Ljava/lang/Object;
.source "PresenceModelImpl.java"

# interfaces
.implements Lorg/linphone/core/PresenceModel;


# instance fields
.field private mNativePtr:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0}, Lorg/linphone/core/PresenceModelImpl;->newPresenceModelImpl()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    .line 32
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    .line 27
    return-void
.end method

.method protected constructor <init>(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/linphone/core/PresenceActivityType;->toInt()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/linphone/core/PresenceModelImpl;->newPresenceModelImpl(ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    .line 37
    return-void
.end method

.method protected constructor <init>(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/linphone/core/PresenceActivityType;->toInt()I

    move-result v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/linphone/core/PresenceModelImpl;->newPresenceModelImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    .line 42
    return-void
.end method

.method private native addActivity(JJ)I
.end method

.method private native addNote(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native addPerson(JJ)I
.end method

.method private native addService(JJ)I
.end method

.method private native clearActivities(J)I
.end method

.method private native clearNotes(J)I
.end method

.method private native clearPersons(J)I
.end method

.method private native clearServices(J)I
.end method

.method private native getActivity(J)Ljava/lang/Object;
.end method

.method private native getBasicStatus(J)I
.end method

.method private native getContact(J)Ljava/lang/String;
.end method

.method private native getNbActivities(J)J
.end method

.method private native getNbPersons(J)J
.end method

.method private native getNbServices(J)J
.end method

.method private native getNote(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native getNthActivity(JJ)Ljava/lang/Object;
.end method

.method private native getNthPerson(JJ)Ljava/lang/Object;
.end method

.method private native getNthService(JJ)Ljava/lang/Object;
.end method

.method private native getTimestamp(J)J
.end method

.method private native newPresenceModelImpl()J
.end method

.method private native newPresenceModelImpl(ILjava/lang/String;)J
.end method

.method private native newPresenceModelImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native setActivity(JILjava/lang/String;)I
.end method

.method private native setBasicStatus(JI)I
.end method

.method private native setContact(JLjava/lang/String;)V
.end method

.method private native unref(J)V
.end method


# virtual methods
.method public addActivity(Lorg/linphone/core/PresenceActivity;)I
    .locals 4

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/PresenceActivity;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/PresenceModelImpl;->addActivity(JJ)I

    move-result v0

    return v0
.end method

.method public addNote(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/PresenceModelImpl;->addNote(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addPerson(Lorg/linphone/core/PresencePerson;)I
    .locals 4

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/PresencePerson;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/PresenceModelImpl;->addPerson(JJ)I

    move-result v0

    return v0
.end method

.method public addService(Lorg/linphone/core/PresenceService;)I
    .locals 4

    .prologue
    .line 148
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/PresenceService;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/PresenceModelImpl;->addService(JJ)I

    move-result v0

    return v0
.end method

.method public clearActivities()I
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->clearActivities(J)I

    move-result v0

    return v0
.end method

.method public clearNotes()I
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->clearNotes(J)I

    move-result v0

    return v0
.end method

.method public clearPersons()I
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->clearPersons(J)I

    move-result v0

    return v0
.end method

.method public clearServices()I
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->clearServices(J)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->unref(J)V

    .line 47
    return-void
.end method

.method public getActivity()Lorg/linphone/core/PresenceActivity;
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->getActivity(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceActivity;

    return-object v0
.end method

.method public getBasicStatus()Lorg/linphone/core/PresenceBasicStatus;
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->getBasicStatus(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/PresenceBasicStatus;->fromInt(I)Lorg/linphone/core/PresenceBasicStatus;

    move-result-object v0

    return-object v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->getContact(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    return-wide v0
.end method

.method public getNbActivities()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->getNbActivities(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNbPersons()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->getNbPersons(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNbServices()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->getNbServices(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNote(Ljava/lang/String;)Lorg/linphone/core/PresenceNote;
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/PresenceModelImpl;->getNote(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceNote;

    return-object v0
.end method

.method public getNthActivity(J)Lorg/linphone/core/PresenceActivity;
    .locals 3

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/PresenceModelImpl;->getNthActivity(JJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceActivity;

    return-object v0
.end method

.method public getNthPerson(J)Lorg/linphone/core/PresencePerson;
    .locals 3

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/PresenceModelImpl;->getNthPerson(JJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresencePerson;

    return-object v0
.end method

.method public getNthService(J)Lorg/linphone/core/PresenceService;
    .locals 3

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/PresenceModelImpl;->getNthService(JJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceService;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/PresenceModelImpl;->getTimestamp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setActivity(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/PresenceActivityType;->toInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/linphone/core/PresenceModelImpl;->setActivity(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBasicStatus(Lorg/linphone/core/PresenceBasicStatus;)I
    .locals 3

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/PresenceBasicStatus;->toInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/PresenceModelImpl;->setBasicStatus(JI)I

    move-result v0

    return v0
.end method

.method public setContact(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/linphone/core/PresenceModelImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/PresenceModelImpl;->setContact(JLjava/lang/String;)V

    .line 77
    return-void
.end method
