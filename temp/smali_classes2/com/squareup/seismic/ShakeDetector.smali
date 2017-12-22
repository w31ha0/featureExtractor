.class public Lcom/squareup/seismic/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private accelerationThreshold:I

.field private final listener:Lcom/squareup/seismic/ShakeDetector$Listener;

.field private final queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;


# direct methods
.method private isAccelerating(Landroid/hardware/SensorEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    .line 97
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v0

    .line 98
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 103
    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-float v3, v4, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 104
    iget v4, p0, Lcom/squareup/seismic/ShakeDetector;->accelerationThreshold:I

    iget v5, p0, Lcom/squareup/seismic/ShakeDetector;->accelerationThreshold:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/squareup/seismic/ShakeDetector;->isAccelerating(Landroid/hardware/SensorEvent;)Z

    move-result v0

    .line 86
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 87
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {v1, v2, v3, v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->add(JZ)V

    .line 88
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->isShaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->queue:Lcom/squareup/seismic/ShakeDetector$SampleQueue;

    invoke-virtual {v0}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->clear()V

    .line 90
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector;->listener:Lcom/squareup/seismic/ShakeDetector$Listener;

    invoke-interface {v0}, Lcom/squareup/seismic/ShakeDetector$Listener;->hearShake()V

    .line 92
    :cond_0
    return-void
.end method
