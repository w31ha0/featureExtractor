.class public interface abstract Lorg/linphone/core/PresenceModel;
.super Ljava/lang/Object;
.source "PresenceModel.java"


# virtual methods
.method public abstract addActivity(Lorg/linphone/core/PresenceActivity;)I
.end method

.method public abstract addNote(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract addPerson(Lorg/linphone/core/PresencePerson;)I
.end method

.method public abstract addService(Lorg/linphone/core/PresenceService;)I
.end method

.method public abstract clearActivities()I
.end method

.method public abstract clearNotes()I
.end method

.method public abstract clearPersons()I
.end method

.method public abstract clearServices()I
.end method

.method public abstract getActivity()Lorg/linphone/core/PresenceActivity;
.end method

.method public abstract getBasicStatus()Lorg/linphone/core/PresenceBasicStatus;
.end method

.method public abstract getContact()Ljava/lang/String;
.end method

.method public abstract getNbActivities()J
.end method

.method public abstract getNbPersons()J
.end method

.method public abstract getNbServices()J
.end method

.method public abstract getNote(Ljava/lang/String;)Lorg/linphone/core/PresenceNote;
.end method

.method public abstract getNthActivity(J)Lorg/linphone/core/PresenceActivity;
.end method

.method public abstract getNthPerson(J)Lorg/linphone/core/PresencePerson;
.end method

.method public abstract getNthService(J)Lorg/linphone/core/PresenceService;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract setActivity(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)I
.end method

.method public abstract setBasicStatus(Lorg/linphone/core/PresenceBasicStatus;)I
.end method

.method public abstract setContact(Ljava/lang/String;)V
.end method
