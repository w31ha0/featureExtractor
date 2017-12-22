.class public Lcom/netflix/mediaclient/partner/PartnerFactory;
.super Ljava/lang/Object;
.source "PartnerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_partner"


# instance fields
.field private partnerHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/partner/Partner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerFactory;->partnerHandlers:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public getExternalSignUpServices(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    .line 102
    :goto_0
    return-object v0

    .line 91
    :cond_1
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalSignUpService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getIntentName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 95
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v0

    .line 96
    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 97
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 99
    goto :goto_0

    .line 102
    :cond_3
    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getExternalSsoServices(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 60
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    .line 74
    :goto_0
    return-object v0

    .line 63
    :cond_1
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalSsoService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getIntentName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 67
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v0

    .line 68
    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_2

    .line 69
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 71
    goto :goto_0

    .line 74
    :cond_3
    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getPartner(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;)Lcom/netflix/mediaclient/partner/Partner;
    .locals 3

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerFactory;->partnerHandlers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/partner/Partner;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v1, "nf_partner"

    const-string/jumbo v2, "Partner implementation found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_0
    monitor-exit p0

    return-object v0

    .line 125
    :cond_0
    :try_start_1
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Partner implementation lookup..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/partner/PartnerFactory;->getExternalSsoServices(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 129
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 130
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Partner implementation created!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;)V

    .line 133
    iget-object v1, p0, Lcom/netflix/mediaclient/partner/PartnerFactory;->partnerHandlers:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_2
    :try_start_2
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Partner implementation NOT found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized releasePartners()V
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerFactory;->partnerHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/partner/Partner;

    .line 44
    invoke-interface {v0}, Lcom/netflix/mediaclient/partner/Partner;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 46
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/PartnerFactory;->partnerHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    return-void
.end method
