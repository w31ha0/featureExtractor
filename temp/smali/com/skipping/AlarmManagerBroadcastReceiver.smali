.class public Lcom/skipping/AlarmManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public CancelWorkout1FridayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 692
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab09

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 694
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 695
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 696
    return-void
.end method

.method public CancelWorkout1MondayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 640
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab01

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 642
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 643
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 644
    return-void
.end method

.method public CancelWorkout1SaturdayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 705
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab0b

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 707
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 708
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 709
    return-void
.end method

.method public CancelWorkout1SundayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 718
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 719
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab0d

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 720
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 721
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 722
    return-void
.end method

.method public CancelWorkout1ThursdayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 679
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 680
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab07

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 681
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 682
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 683
    return-void
.end method

.method public CancelWorkout1TuesdayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 653
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab03

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 655
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 656
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 657
    return-void
.end method

.method public CancelWorkout1WednesdayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 666
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 667
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab05

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 668
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 669
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 670
    return-void
.end method

.method public CancelWorkout2FridayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 698
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 699
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab0a

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 700
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 701
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 702
    return-void
.end method

.method public CancelWorkout2MondayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 646
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab02    # 18.0835f

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 648
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 649
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 650
    return-void
.end method

.method public CancelWorkout2SaturdayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 711
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 712
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab0c

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 713
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 714
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 715
    return-void
.end method

.method public CancelWorkout2SundayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 724
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 725
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab0e

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 726
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 727
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 728
    return-void
.end method

.method public CancelWorkout2ThursdayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 685
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab08

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 687
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 688
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 689
    return-void
.end method

.method public CancelWorkout2TuesdayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 659
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 660
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab04

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 661
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 662
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 663
    return-void
.end method

.method public CancelWorkout2WednesdayTimer(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 672
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 673
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x4190ab06

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 674
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 675
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 676
    return-void
.end method

.method public Workout1FridayTimer(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 521
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 522
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 523
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 524
    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 525
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 527
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 528
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 531
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 532
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 534
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab09

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 535
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 536
    return-void
.end method

.method public Workout1MondayTimer(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 360
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 361
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 362
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 363
    const/4 v2, 0x7

    const/4 v3, 0x2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 364
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 366
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 367
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 370
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 371
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab01

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 374
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 378
    return-void
.end method

.method public Workout1SaturdayTimer(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x0

    .line 559
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 560
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 561
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 562
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 563
    invoke-virtual {v7, v4, v4}, Ljava/util/Calendar;->set(II)V

    .line 564
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 566
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 567
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 570
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 571
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab0b

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 574
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 575
    return-void
.end method

.method public Workout1SundayTimer(Landroid/content/Context;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 598
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 599
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 600
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 601
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 602
    const/4 v2, 0x7

    invoke-virtual {v7, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 603
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 605
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 606
    const/4 v2, 0x3

    invoke-virtual {v7, v2, v9}, Ljava/util/Calendar;->add(II)V

    .line 609
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 610
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 612
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab0d

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 613
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 614
    return-void
.end method

.method public Workout1ThursdayTimer(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 481
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 482
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 483
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 484
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 485
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 486
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 488
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 489
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 492
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 493
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab07

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 496
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 497
    return-void
.end method

.method public Workout1TuesdayTimer(Landroid/content/Context;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x0

    .line 403
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 404
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 405
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 406
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 407
    const/4 v2, 0x7

    invoke-virtual {v7, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 408
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 410
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 411
    const/4 v2, 0x1

    invoke-virtual {v7, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 414
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 415
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab03

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 418
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 419
    return-void
.end method

.method public Workout1WednesdayTimer(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 443
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 444
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 445
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 446
    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 447
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 449
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 450
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 453
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 454
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab05

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 457
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 458
    return-void
.end method

.method public Workout2FridayTimer(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 539
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 540
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 541
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 542
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 543
    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 544
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 546
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 547
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 550
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 551
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab0a

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 554
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 555
    return-void
.end method

.method public Workout2MondayTimer(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 382
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 383
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 384
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 385
    const/4 v2, 0x7

    const/4 v3, 0x2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 386
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 388
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 389
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 392
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 393
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab02    # 18.0835f

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 396
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 399
    return-void
.end method

.method public Workout2SaturdayTimer(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x0

    .line 578
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 579
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 580
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 581
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 582
    invoke-virtual {v7, v4, v4}, Ljava/util/Calendar;->set(II)V

    .line 583
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 585
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 586
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 589
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 590
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab0c

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 593
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 594
    return-void
.end method

.method public Workout2SundayTimer(Landroid/content/Context;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 617
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 618
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 619
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 620
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 621
    const/4 v2, 0x7

    invoke-virtual {v7, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 622
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 624
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 625
    const/4 v2, 0x3

    invoke-virtual {v7, v2, v9}, Ljava/util/Calendar;->add(II)V

    .line 628
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 629
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 631
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab0e

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 632
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 633
    return-void
.end method

.method public Workout2ThursdayTimer(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 501
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 502
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 503
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 504
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 505
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 507
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 508
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 511
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 512
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab08

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 515
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 516
    return-void
.end method

.method public Workout2TuesdayTimer(Landroid/content/Context;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x0

    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 423
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 424
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 425
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 426
    const/4 v2, 0x7

    invoke-virtual {v7, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 427
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 429
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 430
    const/4 v2, 0x1

    invoke-virtual {v7, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 433
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 434
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab04

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 437
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 438
    return-void
.end method

.method public Workout2WednesdayTimer(Landroid/content/Context;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Hour"    # I
    .param p3, "Minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 461
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 462
    .local v7, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 463
    const/16 v2, 0xb

    invoke-virtual {v7, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 464
    const/16 v2, 0xc

    invoke-virtual {v7, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 465
    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 466
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 468
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 469
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 472
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 473
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .local v8, "intent":Landroid/content/Intent;
    const v2, 0x4190ab06

    invoke-static {p1, v2, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 476
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 477
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 48
    .local v14, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "turn_on_screen"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 53
    .local v19, "turn_on_screen":Z
    if-eqz v19, :cond_0

    .line 55
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 56
    const v3, 0x1000000a

    const-string v4, "TAG"

    .line 55
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    .line 57
    .local v18, "screenLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 138
    .end local v18    # "screenLock":Landroid/os/PowerManager$WakeLock;
    :cond_0
    const-string v2, "reminder_notification"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 139
    .local v15, "reminder_notification":Z
    const-string v2, "reminder_sound"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 140
    .local v16, "reminder_sound":Z
    const-string v2, "reminder_vibration"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 143
    .local v17, "reminder_vibration":Z
    if-eqz v15, :cond_1

    .line 150
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 156
    const v3, 0x7f05000f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 157
    const v3, 0x7f05004b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 158
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    .line 160
    .local v10, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/skipping/MainActivity;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v9, "intent1":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 162
    .local v13, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v10, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 163
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 164
    .local v11, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v2, 0x0

    invoke-virtual {v10}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 170
    .end local v9    # "intent1":Landroid/content/Intent;
    .end local v10    # "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v11    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v13    # "pi":Landroid/app/PendingIntent;
    :cond_1
    if-eqz v16, :cond_5

    .line 177
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 180
    .local v1, "mPlayer":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 182
    const/4 v1, 0x0

    .line 185
    :cond_2
    if-nez v1, :cond_3

    .line 186
    new-instance v1, Landroid/media/MediaPlayer;

    .end local v1    # "mPlayer":Landroid/media/MediaPlayer;
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 189
    .restart local v1    # "mPlayer":Landroid/media/MediaPlayer;
    :cond_3
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 191
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 192
    new-instance v1, Landroid/media/MediaPlayer;

    .end local v1    # "mPlayer":Landroid/media/MediaPlayer;
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 206
    .restart local v1    # "mPlayer":Landroid/media/MediaPlayer;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "sound_1.mp3"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 208
    .local v7, "descriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 210
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 215
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 232
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 233
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 234
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v1    # "mPlayer":Landroid/media/MediaPlayer;
    .end local v7    # "descriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_5
    :goto_0
    if-eqz v17, :cond_6

    .line 266
    const-string v2, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Vibrator;

    .line 268
    .local v20, "vibro":Landroid/os/Vibrator;
    const/4 v2, 0x6

    new-array v12, v2, [J

    const/4 v2, 0x1

    const-wide/16 v3, 0x2bc

    aput-wide v3, v12, v2

    const/4 v2, 0x2

    const-wide/16 v3, 0xc8

    aput-wide v3, v12, v2

    const/4 v2, 0x3

    const-wide/16 v3, 0x2bc

    aput-wide v3, v12, v2

    const/4 v2, 0x4

    const-wide/16 v3, 0xc8

    aput-wide v3, v12, v2

    const/4 v2, 0x5

    const-wide/16 v3, 0x2bc

    aput-wide v3, v12, v2

    .line 269
    .local v12, "pattern1":[J
    const/4 v2, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 329
    .end local v12    # "pattern1":[J
    .end local v20    # "vibro":Landroid/os/Vibrator;
    :cond_6
    return-void

    .line 249
    :catch_0
    move-exception v8

    .line 250
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
