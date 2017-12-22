.class public Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;
.super Ljava/lang/Object;
.source "UserActionLogging.java"


# static fields
.field public static final PRIVACY_VIOLATION_PLACEHOLDER:Ljava/lang/String; = "PRIVACY_VIOLATION_PROFILE_NAME"

.field public static final PROFILE:Ljava/lang/String; = "profile"

.field public static final PROFILE_AGE:Ljava/lang/String; = "age"

.field public static final PROFILE_ID:Ljava/lang/String; = "profileId"

.field public static final PROFILE_IS_KIDS:Ljava/lang/String; = "kids"


# instance fields
.field private age:Ljava/lang/Integer;

.field private id:Ljava/lang/String;

.field private isKids:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->id:Ljava/lang/String;

    .line 478
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->name:Ljava/lang/String;

    .line 479
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->age:Ljava/lang/Integer;

    .line 480
    iput-boolean p4, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->isKids:Z

    .line 481
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const-string/jumbo v0, "profileId"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->id:Ljava/lang/String;

    .line 485
    const-string/jumbo v0, "kids"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->isKids:Z

    .line 486
    const-string/jumbo v0, "age"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 487
    if-gez v0, :cond_0

    .line 488
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->age:Ljava/lang/Integer;

    .line 490
    :cond_0
    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->age:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isKids()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->isKids:Z

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 497
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 499
    const-string/jumbo v1, "profileId"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->age:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 502
    const-string/jumbo v1, "age"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->age:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 504
    :cond_1
    const-string/jumbo v1, "kids"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;->isKids:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 505
    return-object v0
.end method
