.class public Lvpadn/bo;
.super Ljava/lang/Object;
.source "VponLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/bo$a;
    }
.end annotation


# static fields
.field private static d:I

.field private static e:I

.field private static f:Lvpadn/bo;

.field private static h:Landroid/location/Location;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Timer;

.field private g:Landroid/location/LocationManager;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 33
    sput v0, Lvpadn/bo;->d:I

    .line 34
    sput v0, Lvpadn/bo;->e:I

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lvpadn/bo;->h:Landroid/location/Location;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lvpadn/bo;->g:Landroid/location/LocationManager;

    .line 38
    iput-boolean v2, p0, Lvpadn/bo;->i:Z

    .line 39
    iput-boolean v2, p0, Lvpadn/bo;->j:Z

    .line 40
    iput-boolean v2, p0, Lvpadn/bo;->k:Z

    .line 41
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lvpadn/bo;->l:Ljava/util/List;

    .line 138
    const-string v1, "VponLocation"

    const-string v2, "[location] Enter VponLoaction ctor"

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 142
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    iput-object v1, p0, Lvpadn/bo;->a:Landroid/app/Activity;

    .line 148
    :goto_0
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lvpadn/bo;->g:Landroid/location/LocationManager;

    .line 150
    invoke-static {p1}, Lvpadn/br;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lvpadn/bo;->g:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lvpadn/bo;->i:Z

    .line 153
    :cond_0
    iget-object v1, p0, Lvpadn/bo;->g:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lvpadn/bo;->j:Z

    .line 154
    const-string v1, "VponLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[location] isGpsProviderEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lvpadn/bo;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isNetworkProvideEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lvpadn/bo;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-boolean v1, p0, Lvpadn/bo;->i:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lvpadn/bo;->j:Z

    if-eqz v1, :cond_3

    .line 158
    :cond_1
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 159
    iget-object v2, p0, Lvpadn/bo;->g:Landroid/location/LocationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string v2, "VponLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[location] Best Location Provide : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lvpadn/bo;->g:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    sput-object v1, Lvpadn/bo;->h:Landroid/location/Location;

    .line 162
    const-string v1, "VponLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[location] locationMgr.getLastKnownLocation(locationPrivider); currentlocation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lvpadn/bo;->h:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lvpadn/bo;->c(I)V

    .line 176
    :goto_1
    return-void

    .line 144
    :cond_2
    iput-object p1, p0, Lvpadn/bo;->b:Landroid/content/Context;

    .line 145
    const-string v1, "VponLocation"

    const-string v2, "[location] currently use the context as a parameter"

    invoke-static {v1, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    const-string v1, "VponLocation"

    const-string v2, "[location] no ACCESS_FINE_LOCATION and ACCESS_COARSE_LOCATION permission is present."

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    :cond_3
    :try_start_1
    const-string v1, "VponLocation"

    const-string v2, "[location]new VponLocation failed. isGpsProviderEnable and isNetworkProvideEnable are false."

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 171
    :catch_1
    move-exception v1

    .line 172
    const-string v1, "VponLocation"

    const-string v2, "[location] can not get location privider because no ACCESS_FINE_LOCATION and ACCESS_COARSE_LOCATION permission is present."

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    :catch_2
    move-exception v1

    .line 174
    const-string v2, "VponLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[location] VponLocation ctor throws Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static declared-synchronized a(I)V
    .locals 2

    .prologue
    .line 324
    const-class v0, Lvpadn/bo;

    monitor-enter v0

    :try_start_0
    sput p0, Lvpadn/bo;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit v0

    return-void

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lvpadn/bo;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lvpadn/bo;->k:Z

    return v0
.end method

.method static synthetic a(Lvpadn/bo;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lvpadn/bo;->k:Z

    return p1
.end method

.method public static b(Landroid/content/Context;)Lvpadn/bo;
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lvpadn/bo;->f:Lvpadn/bo;

    if-nez v0, :cond_1

    .line 185
    const-class v1, Lvpadn/bo;

    monitor-enter v1

    .line 186
    :try_start_0
    sget-object v0, Lvpadn/bo;->f:Lvpadn/bo;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lvpadn/bo;

    invoke-direct {v0, p0}, Lvpadn/bo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lvpadn/bo;->f:Lvpadn/bo;

    .line 189
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    sget-object v0, Lvpadn/bo;->f:Lvpadn/bo;

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 191
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 192
    sget-object v0, Lvpadn/bo;->f:Lvpadn/bo;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lvpadn/bo;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 194
    :cond_2
    sget-object v0, Lvpadn/bo;->f:Lvpadn/bo;

    invoke-virtual {v0, p0}, Lvpadn/bo;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static declared-synchronized b(I)V
    .locals 2

    .prologue
    .line 332
    const-class v0, Lvpadn/bo;

    monitor-enter v0

    :try_start_0
    sput p0, Lvpadn/bo;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit v0

    return-void

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lvpadn/bo;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lvpadn/bo;->i:Z

    return v0
.end method

.method static synthetic c(Lvpadn/bo;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lvpadn/bo;->g:Landroid/location/LocationManager;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 179
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    .line 180
    iget-object v0, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    new-instance v1, Lvpadn/bo$a;

    invoke-direct {v1, p0}, Lvpadn/bo$a;-><init>(Lvpadn/bo;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 181
    return-void
.end method

.method static synthetic d(Lvpadn/bo;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lvpadn/bo;->j:Z

    return v0
.end method

.method static synthetic e(Lvpadn/bo;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lvpadn/bo;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lvpadn/bo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lvpadn/bo;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string v0, "VponLocation"

    const-string v1, "[location] Call assignActivityToNull()"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object v2, p0, Lvpadn/bo;->a:Landroid/app/Activity;

    .line 60
    iput-object v2, p0, Lvpadn/bo;->b:Landroid/content/Context;

    .line 61
    return-void
.end method

.method a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lvpadn/bo;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/bo;->a:Landroid/app/Activity;

    if-eq p1, v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/bo;->a:Landroid/app/Activity;

    .line 46
    iput-object p1, p0, Lvpadn/bo;->a:Landroid/app/Activity;

    .line 48
    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lvpadn/bo;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/bo;->b:Landroid/content/Context;

    if-eq p1, v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/bo;->b:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lvpadn/bo;->b:Landroid/content/Context;

    .line 55
    :cond_1
    return-void
.end method

.method public declared-synchronized b()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 201
    monitor-enter p0

    :try_start_0
    const-string v1, "VponLocation"

    const-string v2, "[location] call getLocation()"

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v1, Lvpadn/bo;->h:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 209
    const-string v1, "VponLocation"

    const-string v2, "[location] currentlocation == null at getLocation()"

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v1, "VponLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[location]isGpsProviderEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lvpadn/bo;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isNetworkProvideEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lvpadn/bo;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 217
    :cond_1
    :try_start_1
    sget v1, Lvpadn/bo;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Lvpadn/bo;->h:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v1, Lvpadn/bo;->e:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 218
    const-string v1, "VponLocation"

    const-string v2, "[location]locCacheTime != -1 && System.currentTimeMillis() - currentlocation.getTime() > (locCacheTime * 2)"

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lvpadn/bo;->k:Z

    if-nez v1, :cond_0

    .line 220
    const-string v1, "VponLocation"

    const-string v2, "[location] startLocationRegisterTimer(1), because currentlocation is very old"

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lvpadn/bo;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 226
    :cond_2
    :try_start_2
    sget-object v0, Lvpadn/bo;->h:Landroid/location/Location;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    const-string v0, "VponLocation"

    const-string v1, "[location] call cancelCheckLocationTimerAndUnregisterListener"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 340
    iget-object v0, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    .line 344
    :cond_0
    iget-boolean v0, p0, Lvpadn/bo;->k:Z

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lvpadn/bo;->g:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/bo;->k:Z

    .line 349
    :cond_1
    invoke-virtual {p0}, Lvpadn/bo;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/4 v4, -0x1

    .line 235
    const-string v0, "VponLocation"

    const-string v1, "[location] Enter onLocationChanged(Location location)"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sput-object p1, Lvpadn/bo;->h:Landroid/location/Location;

    .line 239
    sget-object v0, Lvpadn/bo;->h:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 240
    const-string v0, "VponLocation"

    const-string v1, "[location] currentlocation == null at onLocationChanged"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    return-void

    .line 244
    :cond_1
    const-string v0, "VponLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[location] onLocationChanged getAccuracy -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lvpadn/bo;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " meters, (lat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lvpadn/bo;->h:Landroid/location/Location;

    .line 245
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lvpadn/bo;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v0, Lvpadn/bo;->h:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    .line 248
    sget v1, Lvpadn/bo;->d:I

    if-ne v1, v4, :cond_2

    .line 250
    sput v5, Lvpadn/bo;->d:I

    .line 255
    :cond_2
    iget-boolean v1, p0, Lvpadn/bo;->k:Z

    if-eqz v1, :cond_5

    sget v1, Lvpadn/bo;->d:I

    if-gt v0, v1, :cond_5

    .line 256
    const-string v0, "VponLocation"

    const-string v1, "[location] Call locationMgr removeUpdates"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lvpadn/bo;->g:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/bo;->k:Z

    .line 260
    sget v0, Lvpadn/bo;->e:I

    if-ne v0, v4, :cond_3

    .line 261
    sput v5, Lvpadn/bo;->e:I

    .line 264
    :cond_3
    iget-object v0, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 265
    iget-object v0, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 266
    iget-object v0, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/bo;->c:Ljava/util/Timer;

    .line 270
    :cond_4
    const-string v0, "VponLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[location] current locCacheTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lvpadn/bo;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secs, call startLocationRegisterTimer(locCacheTime * 1000);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget v0, Lvpadn/bo;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0}, Lvpadn/bo;->c(I)V

    .line 276
    :goto_0
    iget-object v0, p0, Lvpadn/bo;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 277
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_1

    .line 273
    :cond_5
    const-string v1, "VponLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[location] The accuracy gap is too large, currentAccuracy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lvpadn/bo;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 289
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lvpadn/bo;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 301
    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lvpadn/bo;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    .line 315
    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method
