.class public Lcom/vailsys/whistleengine/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"


# static fields
.field static final NEAR_THRESHOLD_CM:F = 2.0f


# instance fields
.field covered:Z

.field enabled:Z

.field eventListener:Landroid/hardware/SensorEventListener;

.field listener:Lcom/vailsys/whistleengine/ProximityListener;

.field manager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vailsys/whistleengine/ProximityListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/vailsys/whistleengine/ProximitySensor$1;

    invoke-direct {v0, p0}, Lcom/vailsys/whistleengine/ProximitySensor$1;-><init>(Lcom/vailsys/whistleengine/ProximitySensor;)V

    iput-object v0, p0, Lcom/vailsys/whistleengine/ProximitySensor;->eventListener:Landroid/hardware/SensorEventListener;

    .line 105
    iput-boolean v1, p0, Lcom/vailsys/whistleengine/ProximitySensor;->covered:Z

    .line 106
    iput-boolean v1, p0, Lcom/vailsys/whistleengine/ProximitySensor;->enabled:Z

    .line 24
    iput-object p2, p0, Lcom/vailsys/whistleengine/ProximitySensor;->listener:Lcom/vailsys/whistleengine/ProximityListener;

    .line 25
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/vailsys/whistleengine/ProximitySensor;->manager:Landroid/hardware/SensorManager;

    .line 26
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/vailsys/whistleengine/ProximitySensor;->enabled:Z

    if-eq v0, p1, :cond_0

    .line 40
    iput-boolean p1, p0, Lcom/vailsys/whistleengine/ProximitySensor;->enabled:Z

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/vailsys/whistleengine/ProximitySensor;->enabled:Z

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/vailsys/whistleengine/ProximitySensor;->manager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vailsys/whistleengine/ProximitySensor;->eventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/vailsys/whistleengine/ProximitySensor;->manager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/vailsys/whistleengine/ProximitySensor;->manager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vailsys/whistleengine/ProximitySensor;->eventListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method
