.class public Lcom/skipping/NotificationActivity;
.super Landroid/app/Activity;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field FridayWorkout1Hour:I

.field FridayWorkout1Minute:I

.field FridayWorkout1OnOff:Z

.field FridayWorkout2Hour:I

.field FridayWorkout2Minute:I

.field FridayWorkout2OnOff:Z

.field Hour:I

.field Minute:I

.field MondayWorkout1Hour:I

.field MondayWorkout1Minute:I

.field MondayWorkout1OnOff:Z

.field MondayWorkout2Hour:I

.field MondayWorkout2Minute:I

.field MondayWorkout2OnOff:Z

.field SaturdayWorkout1Hour:I

.field SaturdayWorkout1Minute:I

.field SaturdayWorkout1OnOff:Z

.field SaturdayWorkout2Hour:I

.field SaturdayWorkout2Minute:I

.field SaturdayWorkout2OnOff:Z

.field SundayWorkout1Hour:I

.field SundayWorkout1Minute:I

.field SundayWorkout1OnOff:Z

.field SundayWorkout2Hour:I

.field SundayWorkout2Minute:I

.field SundayWorkout2OnOff:Z

.field ThursdayWorkout1Hour:I

.field ThursdayWorkout1Minute:I

.field ThursdayWorkout1OnOff:Z

.field ThursdayWorkout2Hour:I

.field ThursdayWorkout2Minute:I

.field ThursdayWorkout2OnOff:Z

.field TuesdayWorkout1Hour:I

.field TuesdayWorkout1Minute:I

.field TuesdayWorkout1OnOff:Z

.field TuesdayWorkout2Hour:I

.field TuesdayWorkout2Minute:I

.field TuesdayWorkout2OnOff:Z

.field WednesdayWorkout1Hour:I

.field WednesdayWorkout1Minute:I

.field WednesdayWorkout1OnOff:Z

.field WednesdayWorkout2Hour:I

.field WednesdayWorkout2Minute:I

.field WednesdayWorkout2OnOff:Z

.field private alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

.field anim:Landroid/view/animation/Animation;

.field button_friday_workout_1:Landroid/widget/Button;

.field button_friday_workout_2:Landroid/widget/Button;

.field button_monday_workout_1:Landroid/widget/Button;

.field button_monday_workout_2:Landroid/widget/Button;

.field button_saturday_workout_1:Landroid/widget/Button;

.field button_saturday_workout_2:Landroid/widget/Button;

.field button_sunday_workout_1:Landroid/widget/Button;

.field button_sunday_workout_2:Landroid/widget/Button;

.field button_thursday_workout_1:Landroid/widget/Button;

.field button_thursday_workout_2:Landroid/widget/Button;

.field button_tuesday_workout_1:Landroid/widget/Button;

.field button_tuesday_workout_2:Landroid/widget/Button;

.field button_wednesday_workout_1:Landroid/widget/Button;

.field button_wednesday_workout_2:Landroid/widget/Button;

.field friday_time_workout_1:Landroid/widget/Button;

.field friday_time_workout_2:Landroid/widget/Button;

.field private mSettings:Landroid/content/SharedPreferences;

.field monday_time_workout_1:Landroid/widget/Button;

.field monday_time_workout_2:Landroid/widget/Button;

.field saturday_time_workout_1:Landroid/widget/Button;

.field saturday_time_workout_2:Landroid/widget/Button;

.field sunday_time_workout_1:Landroid/widget/Button;

.field sunday_time_workout_2:Landroid/widget/Button;

.field temp_friday_workout_1:I

.field temp_friday_workout_2:I

.field temp_monday_workout_1:I

.field temp_monday_workout_2:I

.field temp_saturday_workout_1:I

.field temp_saturday_workout_2:I

.field temp_sunday_workout_1:I

.field temp_sunday_workout_2:I

.field temp_thursday_workout_1:I

.field temp_thursday_workout_2:I

.field temp_tuesday_workout_1:I

.field temp_tuesday_workout_2:I

.field temp_wednesday_workout_1:I

.field temp_wednesday_workout_2:I

.field thursday_time_workout_1:Landroid/widget/Button;

.field thursday_time_workout_2:Landroid/widget/Button;

.field timeChanged:Z

.field timeScrolled:Z

.field tuesday_time_workout_1:Landroid/widget/Button;

.field tuesday_time_workout_2:Landroid/widget/Button;

.field wednesday_time_workout_1:Landroid/widget/Button;

.field wednesday_time_workout_2:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_1:I

    .line 46
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_2:I

    .line 47
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_1:I

    .line 48
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_2:I

    .line 49
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_1:I

    .line 50
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_2:I

    .line 51
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_1:I

    .line 52
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_2:I

    .line 53
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_1:I

    .line 54
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_2:I

    .line 55
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_1:I

    .line 56
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_2:I

    .line 57
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_1:I

    .line 58
    iput v1, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_2:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 63
    iput-boolean v1, p0, Lcom/skipping/NotificationActivity;->timeChanged:Z

    .line 64
    iput-boolean v1, p0, Lcom/skipping/NotificationActivity;->timeScrolled:Z

    .line 65
    iput v1, p0, Lcom/skipping/NotificationActivity;->Hour:I

    .line 66
    iput v1, p0, Lcom/skipping/NotificationActivity;->Minute:I

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public Back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/skipping/NotificationActivity;->finish()V

    .line 281
    return-void
.end method

.method public Prefs(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/Activity_notification_prefs;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 286
    return-void
.end method

.method public friday_time_workout_1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 748
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1OnOff:Z

    if-eqz v0, :cond_0

    .line 749
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 754
    :goto_0
    return-void

    .line 751
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public friday_time_workout_2(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2OnOff:Z

    if-eqz v0, :cond_0

    .line 799
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 804
    :goto_0
    return-void

    .line 801
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public friday_workout_1(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 706
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1OnOff:Z

    if-eqz v2, :cond_1

    .line 707
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_friday_workout_1:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 709
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 710
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "FridayWorkout1OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 711
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 713
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1OnOff:Z

    .line 715
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_1:I

    .line 719
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 720
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 721
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 723
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 724
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout1FridayTimer(Landroid/content/Context;)V

    .line 746
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 727
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_friday_workout_1:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 729
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 730
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "FridayWorkout1OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 731
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1OnOff:Z

    .line 735
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_1:I

    .line 737
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 738
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 739
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 741
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1FridayTimer(Landroid/content/Context;II)V

    .line 743
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public friday_workout_2(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 756
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2OnOff:Z

    if-eqz v2, :cond_1

    .line 757
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_friday_workout_2:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 759
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 760
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "FridayWorkout2OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 761
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 763
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2OnOff:Z

    .line 765
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_2:I

    .line 769
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 770
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 771
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 773
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout2FridayTimer(Landroid/content/Context;)V

    .line 796
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 777
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_friday_workout_2:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 779
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 780
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "FridayWorkout2OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 781
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 783
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2OnOff:Z

    .line 785
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_2:I

    .line 787
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 788
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 789
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 791
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 792
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2FridayTimer(Landroid/content/Context;II)V

    .line 793
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public monday_time_workout_1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 340
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1OnOff:Z

    if-eqz v0, :cond_0

    .line 341
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public monday_time_workout_2(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 390
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2OnOff:Z

    if-eqz v0, :cond_0

    .line 391
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public monday_workout_1(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 292
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1OnOff:Z

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_monday_workout_1:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 295
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 296
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "MondayWorkout1OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1OnOff:Z

    .line 304
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_1:I

    .line 308
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 309
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 310
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout1MondayTimer(Landroid/content/Context;)V

    .line 338
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 316
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_monday_workout_1:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 318
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 319
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "MondayWorkout1OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 320
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1OnOff:Z

    .line 324
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_1:I

    .line 327
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 328
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 329
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1MondayTimer(Landroid/content/Context;II)V

    .line 334
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public monday_workout_2(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 347
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2OnOff:Z

    if-eqz v2, :cond_1

    .line 348
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_monday_workout_2:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 350
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 351
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "MondayWorkout2OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 354
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2OnOff:Z

    .line 357
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_2:I

    .line 361
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 362
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 363
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 365
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout2MondayTimer(Landroid/content/Context;)V

    .line 388
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 369
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_monday_workout_2:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 371
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 372
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "MondayWorkout2OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 373
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2OnOff:Z

    .line 377
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_2:I

    .line 379
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 380
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 381
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 383
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2MondayTimer(Landroid/content/Context;II)V

    .line 385
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/high16 v6, 0x7f040000

    const/4 v5, -0x1

    const v4, -0xffff01

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1336
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1OnOff:Z

    if-eqz v1, :cond_e

    .line 1337
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1338
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_1:I

    if-ne v1, v3, :cond_0

    .line 1339
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_1:I

    .line 1341
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1342
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1343
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1356
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2OnOff:Z

    if-eqz v1, :cond_f

    .line 1362
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1363
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_2:I

    if-ne v1, v3, :cond_1

    .line 1364
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_2:I

    .line 1366
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1367
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1368
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1383
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1OnOff:Z

    if-eqz v1, :cond_10

    .line 1390
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1391
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_1:I

    if-ne v1, v3, :cond_2

    .line 1392
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_1:I

    .line 1394
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1395
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1396
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1411
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2OnOff:Z

    if-eqz v1, :cond_11

    .line 1417
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1418
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_2:I

    if-ne v1, v3, :cond_3

    .line 1419
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_2:I

    .line 1421
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1422
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1423
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1438
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_3
    :goto_3
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1OnOff:Z

    if-eqz v1, :cond_12

    .line 1444
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1445
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_1:I

    if-ne v1, v3, :cond_4

    .line 1446
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_1:I

    .line 1448
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1449
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1450
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1464
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_4
    :goto_4
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2OnOff:Z

    if-eqz v1, :cond_13

    .line 1470
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1471
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_2:I

    if-ne v1, v3, :cond_5

    .line 1472
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_2:I

    .line 1474
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1475
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1476
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1491
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_5
    :goto_5
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1OnOff:Z

    if-eqz v1, :cond_14

    .line 1497
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1498
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_1:I

    if-ne v1, v3, :cond_6

    .line 1499
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_1:I

    .line 1501
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1502
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1503
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1517
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_6
    :goto_6
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2OnOff:Z

    if-eqz v1, :cond_15

    .line 1523
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1524
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_2:I

    if-ne v1, v3, :cond_7

    .line 1525
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_2:I

    .line 1527
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1528
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1529
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1544
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_7
    :goto_7
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1OnOff:Z

    if-eqz v1, :cond_16

    .line 1550
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1551
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_1:I

    if-ne v1, v3, :cond_8

    .line 1552
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_1:I

    .line 1554
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1555
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1556
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1570
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_8
    :goto_8
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2OnOff:Z

    if-eqz v1, :cond_17

    .line 1576
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1577
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_2:I

    if-ne v1, v3, :cond_9

    .line 1578
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_2:I

    .line 1580
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1581
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1582
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1597
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_9
    :goto_9
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1OnOff:Z

    if-eqz v1, :cond_18

    .line 1603
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1604
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_1:I

    if-ne v1, v3, :cond_a

    .line 1605
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_1:I

    .line 1607
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1608
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1609
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1623
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_a
    :goto_a
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2OnOff:Z

    if-eqz v1, :cond_19

    .line 1629
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1630
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_2:I

    if-ne v1, v3, :cond_b

    .line 1631
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_2:I

    .line 1633
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1634
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1635
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1650
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_b
    :goto_b
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1OnOff:Z

    if-eqz v1, :cond_1a

    .line 1656
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1657
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_1:I

    if-ne v1, v3, :cond_c

    .line 1658
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_1:I

    .line 1660
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1661
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1662
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1676
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_c
    :goto_c
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2OnOff:Z

    if-eqz v1, :cond_1b

    .line 1682
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 1683
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_2:I

    if-ne v1, v3, :cond_d

    .line 1684
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_2:I

    .line 1686
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1687
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1688
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1708
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_d
    :goto_d
    return-void

    .line 1346
    :cond_e
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1348
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_1:I

    if-ne v1, v3, :cond_0

    .line 1349
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_1:I

    .line 1351
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1352
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1353
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1371
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_f
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1373
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_2:I

    if-ne v1, v3, :cond_1

    .line 1374
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_monday_workout_2:I

    .line 1376
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1377
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1378
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 1399
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_10
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1401
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_1:I

    if-ne v1, v3, :cond_2

    .line 1402
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_1:I

    .line 1404
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1405
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1406
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 1426
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_11
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1428
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_2:I

    if-ne v1, v3, :cond_3

    .line 1429
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_2:I

    .line 1431
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1432
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1433
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    .line 1453
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_12
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1455
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_1:I

    if-ne v1, v3, :cond_4

    .line 1456
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_1:I

    .line 1458
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1459
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1460
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_4

    .line 1479
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_13
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1481
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_2:I

    if-ne v1, v3, :cond_5

    .line 1482
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_2:I

    .line 1484
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1485
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1486
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_5

    .line 1506
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_14
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1508
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_1:I

    if-ne v1, v3, :cond_6

    .line 1509
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_1:I

    .line 1511
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1512
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1513
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 1532
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_15
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1534
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_2:I

    if-ne v1, v3, :cond_7

    .line 1535
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_2:I

    .line 1537
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1538
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1539
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_7

    .line 1559
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_16
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1561
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_1:I

    if-ne v1, v3, :cond_8

    .line 1562
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_1:I

    .line 1564
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1565
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1566
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_8

    .line 1585
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_17
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1587
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_2:I

    if-ne v1, v3, :cond_9

    .line 1588
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_friday_workout_2:I

    .line 1590
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1591
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1592
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_9

    .line 1612
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_18
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1614
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_1:I

    if-ne v1, v3, :cond_a

    .line 1615
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_1:I

    .line 1617
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1618
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1619
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_a

    .line 1638
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_19
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1640
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_2:I

    if-ne v1, v3, :cond_b

    .line 1641
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_2:I

    .line 1643
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1644
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1645
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_b

    .line 1665
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_1a
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1667
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_1:I

    if-ne v1, v3, :cond_c

    .line 1668
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_1:I

    .line 1670
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1671
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1672
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_c

    .line 1691
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_1b
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1693
    iget v1, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_2:I

    if-ne v1, v3, :cond_d

    .line 1694
    iput v2, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_2:I

    .line 1696
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1697
    .restart local v0    # "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1698
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_d
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1715
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1722
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f02001a

    const v6, 0x7f020019

    const v5, -0xffff01

    const/16 v4, 0xa

    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->setContentView(I)V

    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 77
    new-instance v0, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v0}, Lcom/skipping/AlarmManagerBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    .line 80
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_1:Landroid/widget/Button;

    .line 81
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_1:Landroid/widget/Button;

    .line 82
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_1:Landroid/widget/Button;

    .line 83
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_1:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_1:Landroid/widget/Button;

    .line 85
    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_1:Landroid/widget/Button;

    .line 86
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_1:Landroid/widget/Button;

    .line 87
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_2:Landroid/widget/Button;

    .line 88
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_2:Landroid/widget/Button;

    .line 89
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_2:Landroid/widget/Button;

    .line 90
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_2:Landroid/widget/Button;

    .line 91
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_2:Landroid/widget/Button;

    .line 92
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_2:Landroid/widget/Button;

    .line 93
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_2:Landroid/widget/Button;

    .line 96
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_monday_workout_1:Landroid/widget/Button;

    .line 97
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_tuesday_workout_1:Landroid/widget/Button;

    .line 98
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_wednesday_workout_1:Landroid/widget/Button;

    .line 99
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_thursday_workout_1:Landroid/widget/Button;

    .line 100
    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_friday_workout_1:Landroid/widget/Button;

    .line 101
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_saturday_workout_1:Landroid/widget/Button;

    .line 102
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_sunday_workout_1:Landroid/widget/Button;

    .line 103
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_monday_workout_2:Landroid/widget/Button;

    .line 104
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_tuesday_workout_2:Landroid/widget/Button;

    .line 105
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_wednesday_workout_2:Landroid/widget/Button;

    .line 106
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_thursday_workout_2:Landroid/widget/Button;

    .line 107
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_friday_workout_2:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_saturday_workout_2:Landroid/widget/Button;

    .line 109
    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/NotificationActivity;->button_sunday_workout_2:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "MondayWorkout1OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1OnOff:Z

    .line 114
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "TuesdayWorkout1OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1OnOff:Z

    .line 115
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "WednesdayWorkout1OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1OnOff:Z

    .line 116
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "ThursdayWorkout1OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1OnOff:Z

    .line 117
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "FridayWorkout1OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1OnOff:Z

    .line 118
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SaturdayWorkout1OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1OnOff:Z

    .line 119
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SundayWorkout1OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1OnOff:Z

    .line 120
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "MondayWorkout2OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2OnOff:Z

    .line 121
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "TuesdayWorkout2OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2OnOff:Z

    .line 122
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "WednesdayWorkout2OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2OnOff:Z

    .line 123
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "ThursdayWorkout2OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2OnOff:Z

    .line 124
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "FridayWorkout2OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2OnOff:Z

    .line 125
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SaturdayWorkout2OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2OnOff:Z

    .line 126
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SundayWorkout2OnOff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2OnOff:Z

    .line 133
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "MondayWorkout1Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    .line 134
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "MondayWorkout1Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    .line 135
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "TuesdayWorkout1Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    .line 136
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "TuesdayWorkout1Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    .line 137
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "WednesdayWorkout1Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    .line 138
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "WednesdayWorkout1Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    .line 139
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "ThursdayWorkout1Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    .line 140
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "ThursdayWorkout1Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    .line 141
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "FridayWorkout1Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    .line 142
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "FridayWorkout1Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    .line 143
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SaturdayWorkout1Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    .line 144
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SaturdayWorkout1Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    .line 145
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SundayWorkout1Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    .line 146
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SundayWorkout1Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    .line 147
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "MondayWorkout2Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    .line 148
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "MondayWorkout2Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    .line 149
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "TuesdayWorkout2Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    .line 150
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "TuesdayWorkout2Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    .line 151
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "WednesdayWorkout2Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    .line 152
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "WednesdayWorkout2Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    .line 153
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "ThursdayWorkout2Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    .line 154
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "ThursdayWorkout2Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    .line 155
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "FridayWorkout2Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    .line 156
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "FridayWorkout2Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    .line 157
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SaturdayWorkout2Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    .line 158
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SaturdayWorkout2Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    .line 159
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SundayWorkout2Minute"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    .line 160
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "SundayWorkout2Hour"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    .line 163
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_1:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    if-ge v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    if-ge v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_2:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    if-ge v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    if-ge v0, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_1:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    if-ge v0, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    if-ge v0, v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_2:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    if-ge v0, v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    if-ge v0, v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_1:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    if-ge v0, v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    if-ge v0, v4, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_2:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    if-ge v0, v4, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    if-ge v0, v4, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_1:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    if-ge v0, v4, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    if-ge v0, v4, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_2:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    if-ge v0, v4, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    if-ge v0, v4, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_1:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    if-ge v0, v4, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    if-ge v0, v4, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_2:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    if-ge v0, v4, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    if-ge v0, v4, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_1:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    if-ge v0, v4, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    if-ge v0, v4, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_2:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    if-ge v0, v4, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    if-ge v0, v4, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_1:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    if-ge v0, v4, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    if-ge v0, v4, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_2:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    if-ge v0, v4, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    if-ge v0, v4, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1OnOff:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_monday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 182
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 185
    :goto_1c
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2OnOff:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_monday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 187
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->monday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 191
    :goto_1d
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1OnOff:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_tuesday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 193
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 197
    :goto_1e
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2OnOff:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_tuesday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 199
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 203
    :goto_1f
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1OnOff:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_wednesday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 205
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 209
    :goto_20
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2OnOff:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_wednesday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 211
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 215
    :goto_21
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1OnOff:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_thursday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 217
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 221
    :goto_22
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2OnOff:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_thursday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 223
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 227
    :goto_23
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1OnOff:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_friday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 229
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 233
    :goto_24
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2OnOff:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_friday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 235
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->friday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 239
    :goto_25
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1OnOff:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_saturday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 241
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 245
    :goto_26
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2OnOff:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_saturday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 247
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 251
    :goto_27
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1OnOff:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_sunday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 253
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 257
    :goto_28
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2OnOff:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_sunday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 259
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 265
    :goto_29
    return-void

    .line 163
    :cond_0
    iget v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1

    .line 164
    :cond_2
    iget v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    iget v0, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    .line 165
    :cond_4
    iget v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_4

    :cond_5
    iget v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_5

    .line 166
    :cond_6
    iget v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_6

    :cond_7
    iget v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_7

    .line 167
    :cond_8
    iget v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_8

    :cond_9
    iget v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_9

    .line 168
    :cond_a
    iget v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_a

    :cond_b
    iget v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_b

    .line 169
    :cond_c
    iget v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_c

    :cond_d
    iget v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_d

    .line 170
    :cond_e
    iget v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_e

    :cond_f
    iget v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_f

    .line 171
    :cond_10
    iget v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_10

    :cond_11
    iget v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_11

    .line 172
    :cond_12
    iget v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_12

    :cond_13
    iget v0, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_13

    .line 173
    :cond_14
    iget v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_14

    :cond_15
    iget v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_15

    .line 174
    :cond_16
    iget v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_16

    :cond_17
    iget v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_17

    .line 175
    :cond_18
    iget v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_18

    :cond_19
    iget v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_19

    .line 176
    :cond_1a
    iget v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1a

    :cond_1b
    iget v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_1b

    .line 183
    :cond_1c
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_monday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1c

    .line 188
    :cond_1d
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_monday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1d

    .line 194
    :cond_1e
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_tuesday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1e

    .line 200
    :cond_1f
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_tuesday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_1f

    .line 206
    :cond_20
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_wednesday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_20

    .line 212
    :cond_21
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_wednesday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_21

    .line 218
    :cond_22
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_thursday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_22

    .line 224
    :cond_23
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_thursday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_23

    .line 230
    :cond_24
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_friday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_24

    .line 236
    :cond_25
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_friday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_25

    .line 242
    :cond_26
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_saturday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_26

    .line 248
    :cond_27
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_saturday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_27

    .line 254
    :cond_28
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_sunday_workout_1:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_28

    .line 260
    :cond_29
    iget-object v0, p0, Lcom/skipping/NotificationActivity;->button_sunday_workout_2:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_29
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 269
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 270
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 275
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 276
    return-void
.end method

.method public saturday_time_workout_1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 850
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1OnOff:Z

    if-eqz v0, :cond_0

    .line 851
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 856
    :goto_0
    return-void

    .line 853
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public saturday_time_workout_2(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2OnOff:Z

    if-eqz v0, :cond_0

    .line 901
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 906
    :goto_0
    return-void

    .line 903
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public saturday_workout_1(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 808
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1OnOff:Z

    if-eqz v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_saturday_workout_1:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 811
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 812
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SaturdayWorkout1OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 813
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 815
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1OnOff:Z

    .line 817
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_1:I

    .line 821
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 822
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 823
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 825
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 826
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout1SaturdayTimer(Landroid/content/Context;)V

    .line 848
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 829
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_saturday_workout_1:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 831
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 832
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SaturdayWorkout1OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 833
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 835
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1OnOff:Z

    .line 837
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_1:I

    .line 839
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 840
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 841
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 843
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1SaturdayTimer(Landroid/content/Context;II)V

    .line 845
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public saturday_workout_2(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 858
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2OnOff:Z

    if-eqz v2, :cond_1

    .line 859
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_saturday_workout_2:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 861
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 862
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SaturdayWorkout2OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 863
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 865
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2OnOff:Z

    .line 867
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_2:I

    .line 871
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 872
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 873
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 875
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 876
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout2SaturdayTimer(Landroid/content/Context;)V

    .line 898
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 879
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_saturday_workout_2:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 881
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 882
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SaturdayWorkout2OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 883
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 885
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2OnOff:Z

    .line 887
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_saturday_workout_2:I

    .line 889
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 890
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 891
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->saturday_time_workout_2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 893
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 894
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2SaturdayTimer(Landroid/content/Context;II)V

    .line 895
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public sunday_time_workout_1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 953
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1OnOff:Z

    if-eqz v0, :cond_0

    .line 954
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 959
    :goto_0
    return-void

    .line 956
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public sunday_time_workout_2(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2OnOff:Z

    if-eqz v0, :cond_0

    .line 1004
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1009
    :goto_0
    return-void

    .line 1006
    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public sunday_workout_1(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 910
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1OnOff:Z

    if-eqz v2, :cond_1

    .line 911
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_sunday_workout_1:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 913
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 914
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SundayWorkout1OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 915
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 917
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1OnOff:Z

    .line 919
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_1:I

    .line 923
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 924
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 925
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 927
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 928
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout1SundayTimer(Landroid/content/Context;)V

    .line 951
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 931
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_sunday_workout_1:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 933
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 934
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SundayWorkout1OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 935
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 937
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1OnOff:Z

    .line 939
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_1:I

    .line 941
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 942
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 943
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 945
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 946
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1SundayTimer(Landroid/content/Context;II)V

    .line 947
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public sunday_workout_2(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 961
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2OnOff:Z

    if-eqz v2, :cond_1

    .line 962
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_sunday_workout_2:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 964
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 965
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SundayWorkout2OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 966
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 968
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2OnOff:Z

    .line 970
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_2:I

    .line 974
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 975
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 976
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 978
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 979
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout2SundayTimer(Landroid/content/Context;)V

    .line 1001
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 982
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_sunday_workout_2:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 984
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 985
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SundayWorkout2OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 986
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 988
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2OnOff:Z

    .line 990
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_sunday_workout_2:I

    .line 992
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 993
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 994
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->sunday_time_workout_2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 996
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 997
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2SundayTimer(Landroid/content/Context;II)V

    .line 998
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public thursday_time_workout_1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 646
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1OnOff:Z

    if-eqz v0, :cond_0

    .line 647
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 652
    :goto_0
    return-void

    .line 649
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public thursday_time_workout_2(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2OnOff:Z

    if-eqz v0, :cond_0

    .line 697
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 702
    :goto_0
    return-void

    .line 699
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public thursday_workout_1(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 604
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1OnOff:Z

    if-eqz v2, :cond_1

    .line 605
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_thursday_workout_1:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 607
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 608
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ThursdayWorkout1OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 611
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1OnOff:Z

    .line 613
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_1:I

    .line 617
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 618
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 619
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 621
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout1ThursdayTimer(Landroid/content/Context;)V

    .line 644
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 625
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_thursday_workout_1:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 627
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 628
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ThursdayWorkout1OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 629
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 631
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1OnOff:Z

    .line 633
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_1:I

    .line 635
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 636
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 637
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 639
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1ThursdayTimer(Landroid/content/Context;II)V

    .line 641
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public thursday_workout_2(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 654
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2OnOff:Z

    if-eqz v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_thursday_workout_2:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 657
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 658
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ThursdayWorkout2OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 659
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 661
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2OnOff:Z

    .line 663
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_2:I

    .line 667
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 668
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 669
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 671
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 672
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout2ThursdayTimer(Landroid/content/Context;)V

    .line 694
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 675
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_thursday_workout_2:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 677
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 678
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ThursdayWorkout2OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 679
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 681
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2OnOff:Z

    .line 683
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_thursday_workout_2:I

    .line 685
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 686
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 687
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->thursday_time_workout_2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 689
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 690
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2ThursdayTimer(Landroid/content/Context;II)V

    .line 691
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public time_Dialog(IZ)V
    .locals 12
    .param p1, "day"    # I
    .param p2, "Workout1"    # Z

    .prologue
    .line 1023
    :try_start_0
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1024
    .local v1, "dialog":Landroid/app/Dialog;
    const v8, 0x7f030015

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 1026
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1030
    const v8, 0x7f0a0003

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1031
    .local v0, "day_text":Landroid/widget/TextView;
    const/4 v8, 0x1

    if-ne p1, v8, :cond_2

    .line 1032
    const v8, 0x7f05003f

    invoke-virtual {p0, v8}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    :cond_0
    :goto_0
    const v8, 0x7f0a0063

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lwheel_lib/WheelView;

    .line 1049
    .local v5, "hours":Lwheel_lib/WheelView;
    new-instance v8, Lwheel_lib/adapters/NumericWheelAdapter;

    const/4 v9, 0x0

    const/16 v10, 0x17

    invoke-direct {v8, p0, v9, v10}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    .line 1051
    const v8, 0x7f0a0064

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lwheel_lib/WheelView;

    .line 1052
    .local v6, "mins":Lwheel_lib/WheelView;
    new-instance v8, Lwheel_lib/adapters/NumericWheelAdapter;

    const/4 v9, 0x0

    const/16 v10, 0x3b

    const-string v11, "%02d"

    invoke-direct {v8, p0, v9, v10, v11}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setViewAdapter(Lwheel_lib/adapters/WheelViewAdapter;)V

    .line 1053
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCyclic(Z)V

    .line 1056
    const/4 v8, 0x1

    if-ne p1, v8, :cond_9

    .line 1057
    if-eqz p2, :cond_8

    .line 1058
    iget v8, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1059
    iget v8, p0, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1117
    :cond_1
    :goto_1
    new-instance v7, Lcom/skipping/NotificationActivity$1;

    invoke-direct {v7, p0, v5, v6}, Lcom/skipping/NotificationActivity$1;-><init>(Lcom/skipping/NotificationActivity;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V

    .line 1132
    .local v7, "scrollListener":Lwheel_lib/OnWheelScrollListener;
    invoke-virtual {v5, v7}, Lwheel_lib/WheelView;->addScrollingListener(Lwheel_lib/OnWheelScrollListener;)V

    .line 1133
    invoke-virtual {v6, v7}, Lwheel_lib/WheelView;->addScrollingListener(Lwheel_lib/OnWheelScrollListener;)V

    .line 1136
    const/high16 v8, 0x7f0a0000

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1137
    .local v2, "dialogButton":Landroid/widget/Button;
    new-instance v8, Lcom/skipping/NotificationActivity$2;

    invoke-direct {v8, p0, p1, p2, v1}, Lcom/skipping/NotificationActivity$2;-><init>(Lcom/skipping/NotificationActivity;IZLandroid/app/Dialog;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    const v8, 0x7f0a005a

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1304
    .local v3, "dialogButton1":Landroid/widget/Button;
    new-instance v8, Lcom/skipping/NotificationActivity$3;

    invoke-direct {v8, p0, v1}, Lcom/skipping/NotificationActivity$3;-><init>(Lcom/skipping/NotificationActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1309
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1318
    .end local v0    # "day_text":Landroid/widget/TextView;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "dialogButton":Landroid/widget/Button;
    .end local v3    # "dialogButton1":Landroid/widget/Button;
    .end local v5    # "hours":Lwheel_lib/WheelView;
    .end local v6    # "mins":Lwheel_lib/WheelView;
    .end local v7    # "scrollListener":Lwheel_lib/OnWheelScrollListener;
    :goto_2
    return-void

    .line 1033
    .restart local v0    # "day_text":Landroid/widget/TextView;
    .restart local v1    # "dialog":Landroid/app/Dialog;
    :cond_2
    const/4 v8, 0x2

    if-ne p1, v8, :cond_3

    .line 1034
    const v8, 0x7f050040

    invoke-virtual {p0, v8}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1310
    .end local v0    # "day_text":Landroid/widget/TextView;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :catch_0
    move-exception v4

    .line 1311
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "Error"

    const-string v9, "Cannot launch"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1035
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "day_text":Landroid/widget/TextView;
    .restart local v1    # "dialog":Landroid/app/Dialog;
    :cond_3
    const/4 v8, 0x3

    if-ne p1, v8, :cond_4

    .line 1036
    const v8, 0x7f050041

    :try_start_1
    invoke-virtual {p0, v8}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1037
    :cond_4
    const/4 v8, 0x4

    if-ne p1, v8, :cond_5

    .line 1038
    const v8, 0x7f050042

    invoke-virtual {p0, v8}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1039
    :cond_5
    const/4 v8, 0x5

    if-ne p1, v8, :cond_6

    .line 1040
    const v8, 0x7f050043

    invoke-virtual {p0, v8}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1041
    :cond_6
    const/4 v8, 0x6

    if-ne p1, v8, :cond_7

    .line 1042
    const v8, 0x7f050044

    invoke-virtual {p0, v8}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1043
    :cond_7
    const/4 v8, 0x7

    if-ne p1, v8, :cond_0

    .line 1044
    const v8, 0x7f050045

    invoke-virtual {p0, v8}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1061
    .restart local v5    # "hours":Lwheel_lib/WheelView;
    .restart local v6    # "mins":Lwheel_lib/WheelView;
    :cond_8
    iget v8, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1062
    iget v8, p0, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1064
    :cond_9
    const/4 v8, 0x2

    if-ne p1, v8, :cond_b

    .line 1065
    if-eqz p2, :cond_a

    .line 1066
    iget v8, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1067
    iget v8, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1069
    :cond_a
    iget v8, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1070
    iget v8, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1072
    :cond_b
    const/4 v8, 0x3

    if-ne p1, v8, :cond_d

    .line 1073
    if-eqz p2, :cond_c

    .line 1074
    iget v8, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1075
    iget v8, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1077
    :cond_c
    iget v8, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1078
    iget v8, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1080
    :cond_d
    const/4 v8, 0x4

    if-ne p1, v8, :cond_f

    .line 1081
    if-eqz p2, :cond_e

    .line 1082
    iget v8, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1083
    iget v8, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1085
    :cond_e
    iget v8, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1086
    iget v8, p0, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1088
    :cond_f
    const/4 v8, 0x5

    if-ne p1, v8, :cond_11

    .line 1089
    if-eqz p2, :cond_10

    .line 1090
    iget v8, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1091
    iget v8, p0, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1093
    :cond_10
    iget v8, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1094
    iget v8, p0, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1096
    :cond_11
    const/4 v8, 0x6

    if-ne p1, v8, :cond_13

    .line 1097
    if-eqz p2, :cond_12

    .line 1098
    iget v8, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1099
    iget v8, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1101
    :cond_12
    iget v8, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1102
    iget v8, p0, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1104
    :cond_13
    const/4 v8, 0x7

    if-ne p1, v8, :cond_1

    .line 1105
    if-eqz p2, :cond_14

    .line 1106
    iget v8, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1107
    iget v8, p0, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 1109
    :cond_14
    iget v8, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    invoke-virtual {v5, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V

    .line 1110
    iget v8, p0, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    invoke-virtual {v6, v8}, Lwheel_lib/WheelView;->setCurrentItem(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public tuesday_time_workout_1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 442
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1OnOff:Z

    if-eqz v0, :cond_0

    .line 443
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 448
    :goto_0
    return-void

    .line 445
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public tuesday_time_workout_2(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2OnOff:Z

    if-eqz v0, :cond_0

    .line 493
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 498
    :goto_0
    return-void

    .line 495
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public tuesday_workout_1(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 400
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1OnOff:Z

    if-eqz v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_tuesday_workout_1:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 403
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 404
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "TuesdayWorkout1OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1OnOff:Z

    .line 409
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_1:I

    .line 413
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 414
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 415
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout1TuesdayTimer(Landroid/content/Context;)V

    .line 440
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 421
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_tuesday_workout_1:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 423
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 424
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "TuesdayWorkout1OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1OnOff:Z

    .line 429
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_1:I

    .line 431
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 432
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 433
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 435
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1TuesdayTimer(Landroid/content/Context;II)V

    .line 437
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public tuesday_workout_2(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 450
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2OnOff:Z

    if-eqz v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_tuesday_workout_2:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 453
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 454
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "TuesdayWorkout2OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 457
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2OnOff:Z

    .line 459
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_2:I

    .line 463
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 464
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 465
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 467
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout2TuesdayTimer(Landroid/content/Context;)V

    .line 490
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 471
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_tuesday_workout_2:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 473
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 474
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "TuesdayWorkout2OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 475
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2OnOff:Z

    .line 479
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_tuesday_workout_2:I

    .line 481
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 482
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 483
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->tuesday_time_workout_2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 485
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2TuesdayTimer(Landroid/content/Context;II)V

    .line 487
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public wednesday_time_workout_1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 544
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1OnOff:Z

    if-eqz v0, :cond_0

    .line 545
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 550
    :goto_0
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public wednesday_time_workout_2(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2OnOff:Z

    if-eqz v0, :cond_0

    .line 595
    const v0, 0x7f05004a

    invoke-virtual {p0, v0}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 600
    :goto_0
    return-void

    .line 597
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V

    goto :goto_0
.end method

.method public wednesday_workout_1(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 502
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1OnOff:Z

    if-eqz v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_wednesday_workout_1:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 505
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 506
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WednesdayWorkout1OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 509
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1OnOff:Z

    .line 511
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_1:I

    .line 515
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 516
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 517
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_1:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 519
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout1WednesdayTimer(Landroid/content/Context;)V

    .line 542
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 523
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_wednesday_workout_1:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 525
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 526
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WednesdayWorkout1OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 527
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 529
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1OnOff:Z

    .line 531
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_1:I

    .line 533
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 534
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 535
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_1:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 537
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1WednesdayTimer(Landroid/content/Context;II)V

    .line 539
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public wednesday_workout_2(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 552
    iget-boolean v2, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2OnOff:Z

    if-eqz v2, :cond_1

    .line 553
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_wednesday_workout_2:Landroid/widget/Button;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 555
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 556
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WednesdayWorkout2OnOff"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 557
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 559
    iput-boolean v4, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2OnOff:Z

    .line 561
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_2:I

    .line 565
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 566
    .local v0, "anim1":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 567
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_2:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 569
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-virtual {v2, p0}, Lcom/skipping/AlarmManagerBroadcastReceiver;->CancelWorkout2WednesdayTimer(Landroid/content/Context;)V

    .line 592
    .end local v0    # "anim1":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 573
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->button_wednesday_workout_2:Landroid/widget/Button;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 575
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 576
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WednesdayWorkout2OnOff"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 577
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 579
    iput-boolean v5, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2OnOff:Z

    .line 581
    iput v5, p0, Lcom/skipping/NotificationActivity;->temp_wednesday_workout_2:I

    .line 583
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    .line 584
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 585
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->wednesday_time_workout_2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/skipping/NotificationActivity;->anim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 587
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    if-eqz v2, :cond_0

    .line 588
    iget-object v2, p0, Lcom/skipping/NotificationActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    iget v3, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    iget v4, p0, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    invoke-virtual {v2, p0, v3, v4}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2WednesdayTimer(Landroid/content/Context;II)V

    .line 589
    const v2, 0x7f050049

    invoke-virtual {p0, v2}, Lcom/skipping/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
