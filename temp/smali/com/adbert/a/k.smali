.class public Lcom/adbert/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/a/k$a;
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:Lcom/adbert/a/k$a;

.field private d:Landroid/content/Context;

.field private e:F

.field private f:F

.field private g:F

.field private h:D

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/adbert/a/k;->d:Landroid/content/Context;

    .line 33
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/adbert/a/k;->a:Landroid/hardware/SensorManager;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adbert/a/b/h;Lcom/adbert/a/k$a;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p3, p0, Lcom/adbert/a/k;->c:Lcom/adbert/a/k$a;

    .line 20
    iput-object p1, p0, Lcom/adbert/a/k;->d:Landroid/content/Context;

    .line 21
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/adbert/a/k;->a:Landroid/hardware/SensorManager;

    .line 22
    iget-object v0, p0, Lcom/adbert/a/k;->a:Landroid/hardware/SensorManager;

    invoke-virtual {p2}, Lcom/adbert/a/b/h;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/k;->b:Landroid/hardware/Sensor;

    .line 23
    iget-object v0, p0, Lcom/adbert/a/k;->b:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "Sensor is not supported"

    invoke-interface {p3, v0}, Lcom/adbert/a/k$a;->a(Ljava/lang/String;)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/adbert/a/k;->a()V

    goto :goto_0
.end method

.method private a(FFF)V
    .locals 6

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    iget-wide v2, p0, Lcom/adbert/a/k;->i:J

    sub-long v2, v0, v2

    .line 74
    const-wide/16 v4, 0x46

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iput-wide v0, p0, Lcom/adbert/a/k;->i:J

    .line 77
    iget v0, p0, Lcom/adbert/a/k;->e:F

    sub-float v0, p1, v0

    .line 78
    iget v1, p0, Lcom/adbert/a/k;->f:F

    sub-float v1, p2, v1

    .line 79
    iget v4, p0, Lcom/adbert/a/k;->g:F

    sub-float v4, p3, v4

    .line 80
    iput p1, p0, Lcom/adbert/a/k;->e:F

    .line 81
    iput p2, p0, Lcom/adbert/a/k;->f:F

    .line 82
    iput p3, p0, Lcom/adbert/a/k;->g:F

    .line 83
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v4, v4

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/adbert/a/k;->h:D

    .line 85
    iget-wide v0, p0, Lcom/adbert/a/k;->h:D

    const-wide v2, 0x409f400000000000L    # 2000.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/adbert/a/k;->c:Lcom/adbert/a/k$a;

    invoke-interface {v0}, Lcom/adbert/a/k$a;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adbert/a/k;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/adbert/a/k;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adbert/a/k;->b:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 93
    :cond_0
    return-void
.end method

.method public a(Lcom/adbert/a/b/h;)Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adbert/a/k;->a:Landroid/hardware/SensorManager;

    invoke-virtual {p1}, Lcom/adbert/a/b/h;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/adbert/a/k;->b:Landroid/hardware/Sensor;

    .line 39
    iget-object v0, p0, Lcom/adbert/a/k;->b:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adbert/a/k;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/adbert/a/k;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/adbert/a/k;->c:Lcom/adbert/a/k$a;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/adbert/a/k$a;->a(I)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 52
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/adbert/a/k;->a(FFF)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-int v0, v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/adbert/a/k;->c:Lcom/adbert/a/k$a;

    invoke-interface {v0}, Lcom/adbert/a/k$a;->a()V

    goto :goto_0
.end method
