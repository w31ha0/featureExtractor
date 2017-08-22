.class public Lcom/mobfox/sdk/background/GetLocation;
.super Landroid/os/AsyncTask;
.source "GetLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/background/GetLocation$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/location/LocationListener;"
    }
.end annotation


# instance fields
.field final MIN_DIST:I

.field final MIN_TIME:I

.field context:Landroid/content/Context;

.field listener:Lcom/mobfox/sdk/background/GetLocation$Listener;

.field locationManager:Landroid/location/LocationManager;

.field mainHandler:Landroid/os/Handler;

.field self:Lcom/mobfox/sdk/background/GetLocation;


# direct methods
.method public constructor <init>(Lcom/mobfox/sdk/background/GetLocation$Listener;Landroid/content/Context;)V
    .locals 2
    .param p1, "listener"    # Lcom/mobfox/sdk/background/GetLocation$Listener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    const/16 v0, 0x32

    iput v0, p0, Lcom/mobfox/sdk/background/GetLocation;->MIN_TIME:I

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/mobfox/sdk/background/GetLocation;->MIN_DIST:I

    .line 36
    iput-object p1, p0, Lcom/mobfox/sdk/background/GetLocation;->listener:Lcom/mobfox/sdk/background/GetLocation$Listener;

    .line 37
    iput-object p2, p0, Lcom/mobfox/sdk/background/GetLocation;->context:Landroid/content/Context;

    .line 38
    iput-object p0, p0, Lcom/mobfox/sdk/background/GetLocation;->self:Lcom/mobfox/sdk/background/GetLocation;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobfox/sdk/background/GetLocation;->mainHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/background/GetLocation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v2, p0, Lcom/mobfox/sdk/background/GetLocation;->context:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/mobfox/sdk/background/GetLocation;->locationManager:Landroid/location/LocationManager;

    .line 71
    iget-object v2, p0, Lcom/mobfox/sdk/background/GetLocation;->locationManager:Landroid/location/LocationManager;

    if-nez v2, :cond_0

    .line 72
    const-string v2, "MobFoxBanner"

    const-string v3, "location manager not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-object v4

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/mobfox/sdk/background/GetLocation;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 77
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 78
    iget-object v2, p0, Lcom/mobfox/sdk/background/GetLocation;->listener:Lcom/mobfox/sdk/background/GetLocation$Listener;

    invoke-interface {v2, v1}, Lcom/mobfox/sdk/background/GetLocation$Listener;->onLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/mobfox/sdk/background/GetLocation;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 83
    .local v0, "GPSEnabled":Z
    if-nez v0, :cond_2

    .line 84
    const-string v2, "MobFoxBanner"

    const-string v3, "gps not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/mobfox/sdk/background/GetLocation;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/mobfox/sdk/background/GetLocation$1;

    invoke-direct {v3, p0}, Lcom/mobfox/sdk/background/GetLocation$1;-><init>(Lcom/mobfox/sdk/background/GetLocation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mobfox/sdk/background/GetLocation;->listener:Lcom/mobfox/sdk/background/GetLocation$Listener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/background/GetLocation$Listener;->onLocation(Landroid/location/Location;)V

    .line 45
    iget-object v0, p0, Lcom/mobfox/sdk/background/GetLocation;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/background/GetLocation;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mobfox/sdk/background/GetLocation;->self:Lcom/mobfox/sdk/background/GetLocation;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 60
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 55
    return-void
.end method
