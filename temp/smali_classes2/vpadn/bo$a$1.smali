.class Lvpadn/bo$a$1;
.super Ljava/lang/Object;
.source "VponLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/bo$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/bo$a;


# direct methods
.method constructor <init>(Lvpadn/bo$a;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    iget-object v0, v0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v0}, Lvpadn/bo;->a(Lvpadn/bo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    iget-object v0, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    iget-object v0, v0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v0}, Lvpadn/bo;->b(Lvpadn/bo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    iget-object v0, v0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v0}, Lvpadn/bo;->c(Lvpadn/bo;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    iget-object v5, v5, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 79
    const-string v0, "VponLocation"

    const-string v1, "[location] Call requestLocationUpdates for gps"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    iget-object v0, v0, Lvpadn/bo$a;->a:Lvpadn/bo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/bo;->a(Lvpadn/bo;Z)Z

    .line 83
    :cond_0
    iget-object v0, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    iget-object v0, v0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v0}, Lvpadn/bo;->d(Lvpadn/bo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    iget-object v0, v0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v0}, Lvpadn/bo;->c(Lvpadn/bo;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    iget-object v5, v5, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 88
    const-string v0, "VponLocation"

    const-string v1, "[location] Call requestLocationUpdates for network"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    iget-object v0, v0, Lvpadn/bo$a;->a:Lvpadn/bo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/bo;->a(Lvpadn/bo;Z)Z

    .line 92
    :cond_1
    iget-object v0, p0, Lvpadn/bo$a$1;->a:Lvpadn/bo$a;

    iget-object v0, v0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v0}, Lvpadn/bo;->a(Lvpadn/bo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    const-string v0, "VponLocation"

    const-string v1, "[location] isNetworkProvideEnable is false and isGpsProviderEnable is false at LocationRegisterTask"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    :goto_0
    return-void

    .line 96
    :cond_3
    const-string v0, "VponLocation"

    const-string v1, "[location] isRegisterLocationListener IS TRUE"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "VponLocation"

    const-string v2, "[location] requestLocationUpdates throw Exception."

    invoke-static {v1, v2, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
