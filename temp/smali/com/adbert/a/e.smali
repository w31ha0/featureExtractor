.class public Lcom/adbert/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/a/e$a;
    }
.end annotation


# instance fields
.field a:Lcom/adbert/a/e$a;

.field b:Landroid/content/Context;

.field private c:Landroid/location/LocationManager;

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:I

.field private final h:I

.field private i:Landroid/location/Location;

.field private j:Ljava/lang/Double;

.field private k:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adbert/a/e$a;)V
    .locals 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/adbert/a/e;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/adbert/a/e;->h:I

    .line 14
    iput-object p1, p0, Lcom/adbert/a/e;->b:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/adbert/a/e;->a:Lcom/adbert/a/e$a;

    .line 16
    invoke-direct {p0}, Lcom/adbert/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/adbert/a/e;->j:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/adbert/a/e;->k:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/adbert/a/e$a;->a(DD)V

    .line 20
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-interface {p2}, Lcom/adbert/a/e$a;->a()V

    goto :goto_0
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/adbert/a/e;->b:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/adbert/a/e;->c:Landroid/location/LocationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/adbert/a/e;->c:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adbert/a/e;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/adbert/a/e;->c:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adbert/a/e;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 43
    :goto_1
    :try_start_3
    iget-boolean v0, p0, Lcom/adbert/a/e;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adbert/a/e;->e:Z

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_2
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 40
    :catch_2
    move-exception v0

    .line 41
    :try_start_4
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 46
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/a/e;->f:Z

    .line 47
    iget-boolean v0, p0, Lcom/adbert/a/e;->e:Z

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/adbert/a/e;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/adbert/a/e;->c:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/e;->i:Landroid/location/Location;

    .line 52
    iget-object v0, p0, Lcom/adbert/a/e;->i:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/adbert/a/e;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/e;->j:Ljava/lang/Double;

    .line 54
    iget-object v0, p0, Lcom/adbert/a/e;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/e;->k:Ljava/lang/Double;

    move v0, v1

    .line 56
    goto :goto_3

    .line 60
    :cond_2
    iget-boolean v0, p0, Lcom/adbert/a/e;->d:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/adbert/a/e;->i:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/adbert/a/e;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/adbert/a/e;->c:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/e;->i:Landroid/location/Location;

    .line 66
    iget-object v0, p0, Lcom/adbert/a/e;->i:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/adbert/a/e;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/e;->j:Ljava/lang/Double;

    .line 68
    iget-object v0, p0, Lcom/adbert/a/e;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/e;->k:Ljava/lang/Double;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v1

    .line 70
    goto :goto_3
.end method
