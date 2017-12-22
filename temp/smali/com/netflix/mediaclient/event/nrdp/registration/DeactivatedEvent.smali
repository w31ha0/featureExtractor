.class public Lcom/netflix/mediaclient/event/nrdp/registration/DeactivatedEvent;
.super Lcom/netflix/mediaclient/event/nrdp/registration/BaseRegistrationEvent;
.source "DeactivatedEvent.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "deactivate"

.field private static final PROP_accountKey:Ljava/lang/String; = "accountKey"

.field private static final PROP_current:Ljava/lang/String; = "current"

.field public static final TYPE:Ljava/lang/String; = "deactivated"


# instance fields
.field private accountKey:Ljava/lang/String;

.field private current:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "deactivated"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/registration/BaseRegistrationEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getAccountKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/DeactivatedEvent;->accountKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "deactivate"

    return-object v0
.end method

.method public isCurrent()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/DeactivatedEvent;->current:Z

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "accountKey"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/registration/DeactivatedEvent;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/DeactivatedEvent;->accountKey:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "current"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/registration/DeactivatedEvent;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/event/nrdp/registration/DeactivatedEvent;->current:Z

    .line 53
    return-void
.end method
