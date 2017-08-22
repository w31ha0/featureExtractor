.class public Lcom/vpadn/ads/VpadnAdRequest;
.super Ljava/lang/Object;
.source "VpadnAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;,
        Lcom/vpadn/ads/VpadnAdRequest$Gender;
    }
.end annotation


# instance fields
.field private a:Lcom/vpadn/ads/VpadnAdRequest$Gender;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Date;

.field private f:Z

.field private g:Landroid/location/Location;

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/vpadn/ads/VpadnAdRequest$Gender;->UNKNOWN:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->a:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->b:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->c:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->d:Ljava/util/Set;

    .line 70
    iput-object v2, p0, Lcom/vpadn/ads/VpadnAdRequest;->e:Ljava/util/Date;

    .line 73
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->f:Z

    .line 76
    iput-object v2, p0, Lcom/vpadn/ads/VpadnAdRequest;->g:Landroid/location/Location;

    .line 79
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->h:Z

    .line 85
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->k:Z

    .line 119
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->h:Z

    .line 120
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    return-object p0
.end method

.method public addKeyword(Ljava/lang/String;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    if-eqz p1, :cond_2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    array-length v0, v2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    aget-object v0, v2, v4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    const-string v1, ""

    .line 171
    const/4 v0, 0x1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->c:Ljava/util/Map;

    aget-object v2, v2, v4

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_1
    return-object p0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addKeywords(Ljava/util/Set;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vpadn/ads/VpadnAdRequest;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    if-eqz v0, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 196
    array-length v1, v3

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    aget-object v1, v3, v5

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    const-string v1, ""

    .line 198
    const/4 v0, 0x1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->c:Ljava/util/Map;

    aget-object v3, v3, v5

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_3
    return-object p0
.end method

.method public addMediationExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 0

    .prologue
    .line 230
    return-object p0
.end method

.method public addPublisherExtraData(Ljava/lang/String;Ljava/lang/String;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 1

    .prologue
    .line 214
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 215
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    return-object p0
.end method

.method public clearBirthday()Lcom/vpadn/ads/VpadnAdRequest;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->e:Ljava/util/Date;

    .line 252
    return-object p0
.end method

.method public disableForceFakeAdvertisingId()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->k:Z

    .line 564
    return-void
.end method

.method public enableForceFakeAdvertisingId()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->k:Z

    .line 559
    return-void
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->i:I

    return v0
.end method

.method public getBirthday()Ljava/util/Date;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->e:Ljava/util/Date;

    return-object v0
.end method

.method public getFakeAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/vpadn/ads/VpadnAdRequest$Gender;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->a:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->b:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->g:Landroid/location/Location;

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlusOneOptOut()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public getPublisherExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutoRefresh()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->h:Z

    return v0
.end method

.method public isForceFakeAdvertisingId()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->k:Z

    return v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 339
    :try_start_0
    sget-boolean v0, Lvpadn/ac;->a:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 356
    :goto_0
    return v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 342
    goto :goto_0

    .line 344
    :cond_1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 345
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v2, p0, Lcom/vpadn/ads/VpadnAdRequest;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->f:Z

    .line 352
    :goto_1
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->f:Z

    goto :goto_0

    .line 350
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    const-string v2, "VpadnAdRequest"

    const-string v3, "isTestDevice throw Exception"

    invoke-static {v2, v3, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 356
    goto :goto_0
.end method

.method public isTestDevice(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->f:Z

    .line 368
    :goto_0
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->f:Z

    return v0

    .line 365
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->f:Z

    goto :goto_0
.end method

.method public removeNetworkExtras(Ljava/lang/Class;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/vpadn/ads/VpadnAdRequest;"
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAge(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/vpadn/ads/VpadnAdRequest;->i:I

    .line 104
    return-void
.end method

.method public setAutoRefresh(Z)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/vpadn/ads/VpadnAdRequest;->h:Z

    .line 141
    return-object p0
.end method

.method public setBirthday(Ljava/lang/String;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-DD"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 417
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->e:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-object p0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBirthday(Ljava/util/Calendar;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnAdRequest;->e:Ljava/util/Date;

    .line 391
    return-object p0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/vpadn/ads/VpadnAdRequest;->e:Ljava/util/Date;

    .line 403
    return-object p0
.end method

.method public setEnableAutoRefresh(Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vpadn/ads/VpadnAdRequest;->h:Z

    .line 130
    return-void
.end method

.method public setExtras(Ljava/util/Map;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/vpadn/ads/VpadnAdRequest;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 433
    return-object p0
.end method

.method public setFakeAdvertisingId(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 548
    const-string v0, "VpadnAdRequest"

    const-string v1, "[Very Dangerous] you cannot make a profit! Don\'t use this method setFakeAdvertisingId"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iput-object p1, p0, Lcom/vpadn/ads/VpadnAdRequest;->j:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public setGender(Lcom/vpadn/ads/VpadnAdRequest$Gender;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/vpadn/ads/VpadnAdRequest;->a:Lcom/vpadn/ads/VpadnAdRequest$Gender;

    .line 445
    return-object p0
.end method

.method public setKeywords(Ljava/util/Set;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vpadn/ads/VpadnAdRequest;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    if-eqz v0, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 459
    array-length v1, v3

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    aget-object v1, v3, v5

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    const-string v1, ""

    .line 461
    const/4 v0, 0x1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->c:Ljava/util/Map;

    aget-object v3, v3, v5

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/vpadn/ads/VpadnAdRequest;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    :cond_3
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/vpadn/ads/VpadnAdRequest;->g:Landroid/location/Location;

    .line 485
    return-object p0
.end method

.method public setMediationExtras(Ljava/util/Map;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/vpadn/ads/VpadnAdRequest;"
        }
    .end annotation

    .prologue
    .line 496
    return-object p0
.end method

.method public setPlusOneOptOut(Z)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    return-object p0
.end method

.method public setTestDevices(Ljava/util/Set;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vpadn/ads/VpadnAdRequest;"
        }
    .end annotation

    .prologue
    .line 523
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    iget-object v2, p0, Lcom/vpadn/ads/VpadnAdRequest;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 526
    :cond_0
    return-object p0
.end method

.method public setTesting(Z)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/vpadn/ads/VpadnAdRequest;->f:Z

    .line 539
    return-object p0
.end method
