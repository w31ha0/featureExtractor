.class public Lcom/skipping/TrainingActivity;
.super Landroid/app/Activity;
.source "TrainingActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field HeightScreen:I

.field private final THRESHOLD_MOTION:F

.field TopTextView:Landroid/widget/TextView;

.field WidthScreen:I

.field private adView:Lcom/google/ads/AdView;

.field buttonStart:Landroid/widget/Button;

.field caloriesTextView:Landroid/widget/TextView;

.field calories_workoute:F

.field isStarted:Z

.field jumpTextView:Landroid/widget/TextView;

.field level_sec:I

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field mLastTimeValue:J

.field mLastXValue:D

.field mLastYValue:D

.field mLastZValue:D

.field private mLinearAccelerometer:Landroid/hardware/Sensor;

.field mNowTimeValue:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mSettings:Landroid/content/SharedPreferences;

.field mStatusChecker:Ljava/lang/Runnable;

.field private nCounter:I

.field practice:Z

.field stepTaken:Z

.field stepsCount:I

.field timeTextView:Landroid/widget/TextView;

.field user_weight:F

.field workout_end_time:J

.field workout_start_time:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput v1, p0, Lcom/skipping/TrainingActivity;->stepsCount:I

    .line 55
    iput-wide v2, p0, Lcom/skipping/TrainingActivity;->mLastXValue:D

    iput-wide v2, p0, Lcom/skipping/TrainingActivity;->mLastYValue:D

    iput-wide v2, p0, Lcom/skipping/TrainingActivity;->mLastZValue:D

    .line 57
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/skipping/TrainingActivity;->THRESHOLD_MOTION:F

    .line 58
    iput-boolean v1, p0, Lcom/skipping/TrainingActivity;->stepTaken:Z

    .line 60
    iput-boolean v1, p0, Lcom/skipping/TrainingActivity;->isStarted:Z

    .line 62
    iput-wide v4, p0, Lcom/skipping/TrainingActivity;->mNowTimeValue:J

    .line 74
    iput v1, p0, Lcom/skipping/TrainingActivity;->nCounter:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/skipping/TrainingActivity;->calories_workoute:F

    .line 82
    iput-wide v4, p0, Lcom/skipping/TrainingActivity;->workout_start_time:J

    .line 83
    iput-wide v4, p0, Lcom/skipping/TrainingActivity;->workout_end_time:J

    .line 85
    iput-boolean v1, p0, Lcom/skipping/TrainingActivity;->practice:Z

    .line 91
    iput v1, p0, Lcom/skipping/TrainingActivity;->WidthScreen:I

    .line 92
    iput v1, p0, Lcom/skipping/TrainingActivity;->HeightScreen:I

    .line 163
    new-instance v0, Lcom/skipping/TrainingActivity$1;

    invoke-direct {v0, p0}, Lcom/skipping/TrainingActivity$1;-><init>(Lcom/skipping/TrainingActivity;)V

    iput-object v0, p0, Lcom/skipping/TrainingActivity;->mStatusChecker:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/skipping/TrainingActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/skipping/TrainingActivity;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/skipping/TrainingActivity;I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/skipping/TrainingActivity;->nCounter:I

    return-void
.end method

.method private startSensor()V
    .locals 3

    .prologue
    .line 287
    const-string v0, "Sensor_App : "

    const-string v1, "Starting Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/skipping/TrainingActivity;->mLinearAccelerometer:Landroid/hardware/Sensor;

    .line 289
    const/4 v2, 0x0

    .line 288
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 290
    return-void
.end method


# virtual methods
.method public Back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->ShowStop()V

    .line 180
    return-void
.end method

.method public Lock(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "dialog":Landroid/app/Dialog;
    const v2, 0x7f030014

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 190
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, p0, Lcom/skipping/TrainingActivity;->WidthScreen:I

    iget v4, p0, Lcom/skipping/TrainingActivity;->HeightScreen:I

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 203
    const v2, 0x7f0a0062

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 204
    .local v1, "sk":Landroid/widget/SeekBar;
    new-instance v2, Lcom/skipping/TrainingActivity$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/skipping/TrainingActivity$2;-><init>(Lcom/skipping/TrainingActivity;Landroid/widget/SeekBar;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 243
    new-instance v2, Lcom/skipping/TrainingActivity$3;

    invoke-direct {v2, p0}, Lcom/skipping/TrainingActivity$3;-><init>(Lcom/skipping/TrainingActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 257
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 262
    return-void
.end method

.method public SaveToBD()V
    .locals 10

    .prologue
    .line 813
    new-instance v0, Ldatabase/MyWorkouts;

    const-wide/16 v1, -0x1

    iget-wide v3, p0, Lcom/skipping/TrainingActivity;->workout_start_time:J

    iget-wide v5, p0, Lcom/skipping/TrainingActivity;->workout_end_time:J

    iget v7, p0, Lcom/skipping/TrainingActivity;->stepsCount:I

    iget v8, p0, Lcom/skipping/TrainingActivity;->calories_workoute:F

    float-to-int v8, v8

    invoke-direct/range {v0 .. v8}, Ldatabase/MyWorkouts;-><init>(JJJII)V

    .line 815
    .local v0, "md":Ldatabase/MyWorkouts;
    new-instance v9, Ldatabase/DBConnectorWorkouts;

    invoke-direct {v9, p0}, Ldatabase/DBConnectorWorkouts;-><init>(Landroid/content/Context;)V

    .line 816
    .local v9, "mDBConnector":Ldatabase/DBConnectorWorkouts;
    invoke-virtual {v9, v0}, Ldatabase/DBConnectorWorkouts;->insert(Ldatabase/MyWorkouts;)J

    .line 820
    return-void
.end method

.method public ShowGetWeight()V
    .locals 8

    .prologue
    .line 648
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 649
    .local v2, "dialog":Landroid/app/Dialog;
    const v5, 0x7f03000e

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 650
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    const v5, 0x7f0a005f

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 656
    .local v0, "TextView1":Landroid/widget/TextView;
    const v5, 0x7f0a0060

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 658
    .local v1, "TextView2":Landroid/widget/TextView;
    const v5, 0x7f05002b

    invoke-virtual {p0, v5}, Lcom/skipping/TrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    const v5, 0x7f050024

    invoke-virtual {p0, v5}, Lcom/skipping/TrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    const/high16 v5, 0x7f0a0000

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 663
    .local v3, "dialogButton":Landroid/widget/Button;
    new-instance v5, Lcom/skipping/TrainingActivity$5;

    invoke-direct {v5, p0, v2}, Lcom/skipping/TrainingActivity$5;-><init>(Lcom/skipping/TrainingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    const v5, 0x7f0a005a

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 675
    .local v4, "dialogButton1":Landroid/widget/Button;
    new-instance v5, Lcom/skipping/TrainingActivity$6;

    invoke-direct {v5, p0, v2}, Lcom/skipping/TrainingActivity$6;-><init>(Lcom/skipping/TrainingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 684
    return-void
.end method

.method public ShowPutPocket()V
    .locals 7

    .prologue
    .line 690
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 691
    .local v2, "dialog":Landroid/app/Dialog;
    const v4, 0x7f03000f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 692
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 697
    const v4, 0x7f0a005f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 698
    .local v0, "TextView1":Landroid/widget/TextView;
    const v4, 0x7f0a0060

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 700
    .local v1, "TextView2":Landroid/widget/TextView;
    const v4, 0x7f050022

    invoke-virtual {p0, v4}, Lcom/skipping/TrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    const v4, 0x7f050062

    invoke-virtual {p0, v4}, Lcom/skipping/TrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    const/high16 v4, 0x7f0a0000

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 705
    .local v3, "dialogButton":Landroid/widget/Button;
    new-instance v4, Lcom/skipping/TrainingActivity$7;

    invoke-direct {v4, p0, v2}, Lcom/skipping/TrainingActivity$7;-><init>(Lcom/skipping/TrainingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 719
    return-void
.end method

.method public ShowStop()V
    .locals 8

    .prologue
    .line 723
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 724
    .local v2, "dialog":Landroid/app/Dialog;
    const v5, 0x7f03000e

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 725
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    const v5, 0x7f0a005f

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 731
    .local v0, "TextView1":Landroid/widget/TextView;
    const v5, 0x7f0a0060

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 733
    .local v1, "TextView2":Landroid/widget/TextView;
    const v5, 0x7f050020

    invoke-virtual {p0, v5}, Lcom/skipping/TrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    const v5, 0x7f050050

    invoke-virtual {p0, v5}, Lcom/skipping/TrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    const/high16 v5, 0x7f0a0000

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 738
    .local v3, "dialogButton":Landroid/widget/Button;
    new-instance v5, Lcom/skipping/TrainingActivity$8;

    invoke-direct {v5, p0, v2}, Lcom/skipping/TrainingActivity$8;-><init>(Lcom/skipping/TrainingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    const v5, 0x7f0a005a

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 777
    .local v4, "dialogButton1":Landroid/widget/Button;
    new-instance v5, Lcom/skipping/TrainingActivity$9;

    invoke-direct {v5, p0, v2}, Lcom/skipping/TrainingActivity$9;-><init>(Lcom/skipping/TrainingActivity;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 786
    return-void
.end method

.method public Start(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/skipping/TrainingActivity;->isStarted:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->ShowStop()V

    .line 284
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skipping/TrainingActivity;->isStarted:Z

    .line 271
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->buttonStart:Landroid/widget/Button;

    const v1, 0x7f050020

    invoke-virtual {p0, v1}, Lcom/skipping/TrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skipping/TrainingActivity;->mInitialized:Z

    .line 274
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/skipping/TrainingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/skipping/TrainingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 275
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 276
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 275
    iput-object v0, p0, Lcom/skipping/TrainingActivity;->mLinearAccelerometer:Landroid/hardware/Sensor;

    .line 277
    invoke-direct {p0}, Lcom/skipping/TrainingActivity;->startSensor()V

    .line 280
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->startRepeatingTask()V

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/skipping/TrainingActivity;->workout_start_time:J

    goto :goto_0
.end method

.method public doTimerTask()V
    .locals 17

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/skipping/TrainingActivity;->practice:Z

    if-eqz v2, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget v2, v0, Lcom/skipping/TrainingActivity;->nCounter:I

    rem-int/lit8 v14, v2, 0x3c

    .line 439
    .local v14, "seconds":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/skipping/TrainingActivity;->nCounter:I

    div-int/lit8 v11, v2, 0x3c

    .line 440
    .local v11, "minutes":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/skipping/TrainingActivity;->timeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    if-ge v11, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v2, 0xa

    if-ge v14, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/skipping/TrainingActivity;->nCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/skipping/TrainingActivity;->nCounter:I

    .line 527
    move-object/from16 v0, p0

    iget v2, v0, Lcom/skipping/TrainingActivity;->calories_workoute:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/skipping/TrainingActivity;->user_weight:F

    const v4, 0x400d1889

    mul-float/2addr v3, v4

    const v4, 0x3aa3d70a    # 0.00125f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/skipping/TrainingActivity;->calories_workoute:F

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/TrainingActivity;->caloriesTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/skipping/TrainingActivity;->calories_workoute:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    return-void

    .line 440
    :cond_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 443
    .end local v11    # "minutes":I
    .end local v14    # "seconds":I
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/skipping/TrainingActivity;->level_sec:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/skipping/TrainingActivity;->nCounter:I

    sub-int v13, v2, v3

    .line 444
    .local v13, "sec1":I
    rem-int/lit8 v14, v13, 0x3c

    .line 445
    .restart local v14    # "seconds":I
    div-int/lit8 v11, v13, 0x3c

    .line 446
    .restart local v11    # "minutes":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/skipping/TrainingActivity;->timeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    if-ge v11, v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v2, 0xa

    if-ge v14, v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    const/4 v2, 0x5

    if-ne v13, v2, :cond_9

    .line 452
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 453
    .local v1, "mPlayer":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_4

    .line 454
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 455
    const/4 v1, 0x0

    .line 457
    :cond_4
    if-nez v1, :cond_5

    .line 458
    new-instance v1, Landroid/media/MediaPlayer;

    .end local v1    # "mPlayer":Landroid/media/MediaPlayer;
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 460
    .restart local v1    # "mPlayer":Landroid/media/MediaPlayer;
    :cond_5
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 461
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 462
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 463
    new-instance v1, Landroid/media/MediaPlayer;

    .end local v1    # "mPlayer":Landroid/media/MediaPlayer;
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 465
    .restart local v1    # "mPlayer":Landroid/media/MediaPlayer;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/skipping/TrainingActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "end_exs.mp3"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 466
    .local v7, "descriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 467
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 469
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 471
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/skipping/TrainingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 472
    .local v10, "mAudioManager":Landroid/media/AudioManager;
    const/4 v2, 0x3

    invoke-virtual {v10, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v12

    .line 474
    .local v12, "originalVolume":I
    const/4 v2, 0x3

    invoke-virtual {v10, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v15, v2, v3

    .line 475
    .local v15, "setVolume":F
    const/4 v2, 0x3

    float-to-int v3, v15

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 479
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 480
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 481
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 484
    new-instance v2, Lcom/skipping/TrainingActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10, v12}, Lcom/skipping/TrainingActivity$4;-><init>(Lcom/skipping/TrainingActivity;Landroid/media/AudioManager;I)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v1    # "mPlayer":Landroid/media/MediaPlayer;
    .end local v7    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v10    # "mAudioManager":Landroid/media/AudioManager;
    .end local v12    # "originalVolume":I
    .end local v15    # "setVolume":F
    :goto_5
    const-string v2, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/skipping/TrainingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Vibrator;

    .line 497
    .local v16, "vibe":Landroid/os/Vibrator;
    const-wide/16 v2, 0x1388

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_2

    .line 446
    .end local v16    # "vibe":Landroid/os/Vibrator;
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    :cond_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_4

    .line 491
    :catch_0
    move-exception v8

    .line 492
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 498
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_9
    if-nez v13, :cond_0

    .line 500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/skipping/TrainingActivity;->workout_end_time:J

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/skipping/TrainingActivity;->SaveToBD()V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/skipping/TrainingActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 505
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/skipping/TrainingActivity;->isStarted:Z

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/TrainingActivity;->buttonStart:Landroid/widget/Button;

    const v3, 0x7f05001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/skipping/TrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/TrainingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_a

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/skipping/TrainingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 511
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/skipping/TrainingActivity;->stopRepeatingTask()V

    .line 512
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/skipping/TrainingActivity;->nCounter:I

    .line 513
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/skipping/TrainingActivity;->calories_workoute:F

    .line 515
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/skipping/TrainingActivity;->stepsCount:I

    .line 517
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AfterTrainingActivity;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    .local v9, "intent":Landroid/content/Intent;
    const-string v2, "workout_start_time"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/skipping/TrainingActivity;->workout_start_time:J

    invoke-virtual {v9, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 519
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/skipping/TrainingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method public getTimeFromLevel()V
    .locals 4

    .prologue
    .line 640
    iget-object v1, p0, Lcom/skipping/TrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v2, "selected_level"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 642
    .local v0, "selected_level":I
    invoke-static {v0}, Lcom/skipping/LevelActivity;->getLevel(I)[I

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/skipping/TrainingActivity;->level_sec:I

    .line 643
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 391
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v4, 0x7f030009

    invoke-virtual {p0, v4}, Lcom/skipping/TrainingActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 100
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 101
    const-string v4, "practice"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/skipping/TrainingActivity;->practice:Z

    .line 104
    :cond_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 105
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/skipping/TrainingActivity;->WidthScreen:I

    .line 107
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/skipping/TrainingActivity;->HeightScreen:I

    .line 110
    const v4, 0x7f0a0057

    invoke-virtual {p0, v4}, Lcom/skipping/TrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/skipping/TrainingActivity;->jumpTextView:Landroid/widget/TextView;

    .line 111
    const v4, 0x7f0a0055

    invoke-virtual {p0, v4}, Lcom/skipping/TrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/skipping/TrainingActivity;->timeTextView:Landroid/widget/TextView;

    .line 112
    const v4, 0x7f0a0056

    invoke-virtual {p0, v4}, Lcom/skipping/TrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/skipping/TrainingActivity;->caloriesTextView:Landroid/widget/TextView;

    .line 114
    const v4, 0x7f0a0053

    invoke-virtual {p0, v4}, Lcom/skipping/TrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/skipping/TrainingActivity;->TopTextView:Landroid/widget/TextView;

    .line 115
    iget-boolean v4, p0, Lcom/skipping/TrainingActivity;->practice:Z

    if-eqz v4, :cond_1

    .line 116
    iget-object v4, p0, Lcom/skipping/TrainingActivity;->TopTextView:Landroid/widget/TextView;

    const v5, 0x7f050013

    invoke-virtual {p0, v5}, Lcom/skipping/TrainingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_1
    const v4, 0x7f0a0058

    invoke-virtual {p0, v4}, Lcom/skipping/TrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/skipping/TrainingActivity;->buttonStart:Landroid/widget/Button;

    .line 120
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/skipping/TrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 122
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/skipping/TrainingActivity;->mHandler:Landroid/os/Handler;

    .line 125
    iget-object v4, p0, Lcom/skipping/TrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v5, "disable_ads"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    .local v0, "disable_ads":Z
    if-nez v0, :cond_2

    .line 128
    new-instance v4, Lcom/google/ads/AdView;

    sget-object v5, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    const-string v6, "ca-app-pub-8661822564276571/3559185041"

    invoke-direct {v4, p0, v5, v6}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/skipping/TrainingActivity;->adView:Lcom/google/ads/AdView;

    .line 132
    const v4, 0x7f0a0002

    invoke-virtual {p0, v4}, Lcom/skipping/TrainingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 135
    .local v2, "layout":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/skipping/TrainingActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    iget-object v4, p0, Lcom/skipping/TrainingActivity;->adView:Lcom/google/ads/AdView;

    new-instance v5, Lcom/google/ads/AdRequest;

    invoke-direct {v5}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 141
    .end local v2    # "layout":Landroid/widget/LinearLayout;
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->adView:Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 148
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 791
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 796
    iget-boolean v0, p0, Lcom/skipping/TrainingActivity;->isStarted:Z

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->ShowStop()V

    .line 802
    :goto_0
    const/4 v0, 0x1

    .line 804
    :goto_1
    return v0

    .line 799
    :cond_0
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->finish()V

    goto :goto_0

    .line 804
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 427
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 430
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 397
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 399
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/skipping/TrainingActivity;->isStarted:Z

    .line 401
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->getTimeFromLevel()V

    .line 403
    iget-boolean v2, p0, Lcom/skipping/TrainingActivity;->practice:Z

    if-eqz v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/skipping/TrainingActivity;->timeTextView:Landroid/widget/TextView;

    const-string v3, "00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :goto_0
    iget-object v2, p0, Lcom/skipping/TrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v3, "user_weight"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/skipping/TrainingActivity;->user_weight:F

    .line 416
    iget v2, p0, Lcom/skipping/TrainingActivity;->user_weight:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_4

    .line 417
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->ShowGetWeight()V

    .line 422
    :cond_0
    :goto_1
    return-void

    .line 406
    :cond_1
    iget v2, p0, Lcom/skipping/TrainingActivity;->level_sec:I

    rem-int/lit8 v1, v2, 0x3c

    .line 407
    .local v1, "seconds":I
    iget v2, p0, Lcom/skipping/TrainingActivity;->level_sec:I

    div-int/lit8 v0, v2, 0x3c

    .line 408
    .local v0, "minutes":I
    iget-object v3, p0, Lcom/skipping/TrainingActivity;->timeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, v7, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ge v1, v7, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    .line 418
    .end local v0    # "minutes":I
    .end local v1    # "seconds":I
    :cond_4
    iget-object v2, p0, Lcom/skipping/TrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v3, "put_pocket"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/skipping/TrainingActivity;->ShowPutPocket()V

    goto :goto_1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 297
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v12, v0

    .line 298
    .local v12, "x":D
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v14, v0

    .line 299
    .local v14, "y":D
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 301
    .local v16, "z":D
    const-wide v3, 0x3fe999999999999aL    # 0.8

    .line 302
    .local v3, "alpha":D
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v11, v0, [D

    fill-array-data v11, :array_0

    .line 305
    .local v11, "gravity":[D
    const/16 v18, 0x0

    const-wide v19, 0x3fe999999999999aL    # 0.8

    const/16 v21, 0x0

    aget-wide v21, v11, v21

    mul-double v19, v19, v21

    const-wide v21, 0x3fc9999999999998L    # 0.19999999999999996

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    add-double v19, v19, v21

    aput-wide v19, v11, v18

    .line 306
    const/16 v18, 0x1

    const-wide v19, 0x3fe999999999999aL    # 0.8

    const/16 v21, 0x1

    aget-wide v21, v11, v21

    mul-double v19, v19, v21

    const-wide v21, 0x3fc9999999999998L    # 0.19999999999999996

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    add-double v19, v19, v21

    aput-wide v19, v11, v18

    .line 307
    const/16 v18, 0x2

    const-wide v19, 0x3fe999999999999aL    # 0.8

    const/16 v21, 0x2

    aget-wide v21, v11, v21

    mul-double v19, v19, v21

    const-wide v21, 0x3fc9999999999998L    # 0.19999999999999996

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    add-double v19, v19, v21

    aput-wide v19, v11, v18

    .line 310
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    aget-wide v20, v11, v20

    sub-double v12, v18, v20

    .line 311
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    aget-wide v20, v11, v20

    sub-double v14, v18, v20

    .line 312
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const/16 v20, 0x2

    aget-wide v20, v11, v20

    sub-double v16, v18, v20

    .line 314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/skipping/TrainingActivity;->mInitialized:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 317
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/skipping/TrainingActivity;->mLastXValue:D

    .line 318
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/skipping/TrainingActivity;->mLastYValue:D

    .line 319
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/skipping/TrainingActivity;->mLastZValue:D

    .line 320
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skipping/TrainingActivity;->mInitialized:Z

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/skipping/TrainingActivity;->mLastTimeValue:J

    .line 386
    :goto_0
    return-void

    .line 331
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skipping/TrainingActivity;->mLastXValue:D

    move-wide/from16 v18, v0

    sub-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 332
    .local v5, "deltaX":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skipping/TrainingActivity;->mLastYValue:D

    move-wide/from16 v18, v0

    sub-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    .line 333
    .local v7, "deltaY":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skipping/TrainingActivity;->mLastZValue:D

    move-wide/from16 v18, v0

    sub-double v18, v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 344
    .local v9, "deltaZ":D
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    cmpg-double v18, v5, v18

    if-gez v18, :cond_2

    .line 345
    const-wide/16 v5, 0x0

    .line 346
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skipping/TrainingActivity;->stepTaken:Z

    .line 350
    :goto_1
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    cmpg-double v18, v7, v18

    if-gez v18, :cond_3

    .line 351
    const-wide/16 v7, 0x0

    .line 352
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skipping/TrainingActivity;->stepTaken:Z

    .line 356
    :goto_2
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    cmpg-double v18, v9, v18

    if-gez v18, :cond_4

    .line 357
    const-wide/16 v9, 0x0

    .line 358
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skipping/TrainingActivity;->stepTaken:Z

    .line 365
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/skipping/TrainingActivity;->stepTaken:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/skipping/TrainingActivity;->mNowTimeValue:J

    .line 368
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skipping/TrainingActivity;->mNowTimeValue:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skipping/TrainingActivity;->mLastTimeValue:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x10e

    cmp-long v18, v18, v20

    if-lez v18, :cond_1

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/skipping/TrainingActivity;->stepsCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/skipping/TrainingActivity;->stepsCount:I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/TrainingActivity;->jumpTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/skipping/TrainingActivity;->stepsCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skipping/TrainingActivity;->stepTaken:Z

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/skipping/TrainingActivity;->mLastTimeValue:J

    .line 381
    :cond_1
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/skipping/TrainingActivity;->mLastXValue:D

    .line 382
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/skipping/TrainingActivity;->mLastYValue:D

    .line 383
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/skipping/TrainingActivity;->mLastZValue:D

    goto/16 :goto_0

    .line 348
    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skipping/TrainingActivity;->stepTaken:Z

    goto/16 :goto_1

    .line 354
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skipping/TrainingActivity;->stepTaken:Z

    goto/16 :goto_2

    .line 360
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/skipping/TrainingActivity;->stepTaken:Z

    goto/16 :goto_3

    .line 302
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 153
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 154
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 159
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 160
    return-void
.end method

.method startRepeatingTask()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->mStatusChecker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 610
    return-void
.end method

.method stopRepeatingTask()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/skipping/TrainingActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/skipping/TrainingActivity;->mStatusChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skipping/TrainingActivity;->mHandler:Landroid/os/Handler;

    .line 618
    return-void
.end method
