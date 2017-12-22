.class Lcom/vailsys/whistleengine/ProximitySensor$1;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/vailsys/whistleengine/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/vailsys/whistleengine/ProximitySensor;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vailsys/whistleengine/ProximitySensor$1;->this$0:Lcom/vailsys/whistleengine/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 69
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v0

    .line 82
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 83
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/vailsys/whistleengine/ProximitySensor$1;->this$0:Lcom/vailsys/whistleengine/ProximitySensor;

    iget-boolean v1, v1, Lcom/vailsys/whistleengine/ProximitySensor;->covered:Z

    if-eq v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/vailsys/whistleengine/ProximitySensor$1;->this$0:Lcom/vailsys/whistleengine/ProximitySensor;

    iput-boolean v0, v1, Lcom/vailsys/whistleengine/ProximitySensor;->covered:Z

    .line 91
    iget-object v1, p0, Lcom/vailsys/whistleengine/ProximitySensor$1;->this$0:Lcom/vailsys/whistleengine/ProximitySensor;

    iget-object v1, v1, Lcom/vailsys/whistleengine/ProximitySensor;->listener:Lcom/vailsys/whistleengine/ProximityListener;

    invoke-interface {v1, v0}, Lcom/vailsys/whistleengine/ProximityListener;->sensorUpdate(Z)V

    .line 94
    :cond_1
    return-void
.end method
