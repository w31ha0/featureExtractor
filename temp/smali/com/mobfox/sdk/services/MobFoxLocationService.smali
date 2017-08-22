.class public Lcom/mobfox/sdk/services/MobFoxLocationService;
.super Lcom/mobfox/sdk/services/MobFoxService;
.source "MobFoxLocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ERROR:Ljava/lang/String; = "location not available"

.field private static final MY_PERMISSIONS_REQUEST_FINE_LOCATION:I = 0x1


# instance fields
.field final MIN_DIST:I

.field final MIN_TIME:I

.field context:Landroid/content/Context;

.field err:Ljava/lang/String;

.field listener:Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;

.field location:Landroid/location/Location;

.field locationManager:Landroid/location/LocationManager;

.field mainHandler:Landroid/os/Handler;

.field self:Lcom/mobfox/sdk/services/MobFoxLocationService;

.field task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;Landroid/content/Context;)V
    .locals 2
    .param p1, "listener"    # Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p2}, Lcom/mobfox/sdk/services/MobFoxService;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->location:Landroid/location/Location;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->err:Ljava/lang/String;

    .line 60
    const/16 v0, 0x32

    iput v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->MIN_TIME:I

    .line 61
    const/16 v0, 0xa

    iput v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->MIN_DIST:I

    .line 70
    iput-object p1, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->listener:Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;

    .line 71
    iput-object p2, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->context:Landroid/content/Context;

    .line 72
    iput-object p0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->self:Lcom/mobfox/sdk/services/MobFoxLocationService;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->mainHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/mobfox/sdk/services/MobFoxLocationService$1;

    invoke-direct {v0, p0, p2}, Lcom/mobfox/sdk/services/MobFoxLocationService$1;-><init>(Lcom/mobfox/sdk/services/MobFoxLocationService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->task:Landroid/os/AsyncTask;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/mobfox/sdk/services/MobFoxLocationService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobfox/sdk/services/MobFoxLocationService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mobfox/sdk/services/MobFoxLocationService;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobfox/sdk/services/MobFoxLocationService;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onSuccess(Landroid/location/Location;)V

    return-void
.end method

.method private onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->err:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->run()V

    .line 189
    return-void
.end method

.method private onSuccess(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->location:Landroid/location/Location;

    .line 183
    invoke-virtual {p0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->run()V

    .line 184
    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->location:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->err:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->listener:Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;

    iget-object v1, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->err:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;->onError(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->listener:Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;

    const-string v1, "location not available"

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->listener:Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;

    iget-object v1, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->location:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;->onLocation(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->initLocationDialog()V

    goto :goto_0

    .line 126
    :cond_1
    const-string v0, "please add location permission in manifest"

    invoke-direct {p0, v0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initLocationDialog()V
    .locals 5

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "dialog failed"

    invoke-direct {p0, v1}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "dialog failed"

    invoke-direct {p0, v1}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->self:Lcom/mobfox/sdk/services/MobFoxLocationService;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 159
    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onSuccess(Landroid/location/Location;)V

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v0, "location not available"

    invoke-direct {p0, v0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v0, "onProviderDisabled"

    invoke-direct {p0, v0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onFailed(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v0, "onProviderEnabled"

    invoke-direct {p0, v0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onFailed(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 151
    const-string v0, "location dialog error"

    invoke-direct {p0, v0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onFailed(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 144
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxLocationService;->task:Landroid/os/AsyncTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 148
    :cond_0
    const-string v0, "location dialog not confirmed"

    invoke-direct {p0, v0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const-string v0, "onStatusChanged"

    invoke-direct {p0, v0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onFailed(Ljava/lang/String;)V

    .line 169
    return-void
.end method
