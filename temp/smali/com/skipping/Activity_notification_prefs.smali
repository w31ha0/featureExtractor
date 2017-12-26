.class public Lcom/skipping/Activity_notification_prefs;
.super Landroid/app/Activity;
.source "Activity_notification_prefs.java"


# instance fields
.field private mSettings:Landroid/content/SharedPreferences;

.field reminder_notification:Z

.field reminder_sound:Z

.field reminder_sound_btn:Landroid/widget/Button;

.field reminder_vibration:Z

.field reminder_vibration_btn:Landroid/widget/Button;

.field show_notification_btn:Landroid/widget/Button;

.field turn_on_screen:Z

.field turn_on_screen_btn:Landroid/widget/Button;

.field volume_from_phone:Z

.field volume_from_phone_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public Back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/skipping/Activity_notification_prefs;->finish()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f02001a

    const v3, 0x7f020019

    const/4 v2, 0x1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/skipping/Activity_notification_prefs;->setContentView(I)V

    .line 26
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    .line 29
    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/skipping/Activity_notification_prefs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/Activity_notification_prefs;->show_notification_btn:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/skipping/Activity_notification_prefs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_sound_btn:Landroid/widget/Button;

    .line 31
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/skipping/Activity_notification_prefs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_vibration_btn:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/skipping/Activity_notification_prefs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/skipping/Activity_notification_prefs;->turn_on_screen_btn:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "reminder_notification"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_notification:Z

    .line 35
    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "reminder_sound"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_sound:Z

    .line 36
    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "reminder_vibration"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_vibration:Z

    .line 37
    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    const-string v1, "turn_on_screen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/skipping/Activity_notification_prefs;->turn_on_screen:Z

    .line 43
    iget-boolean v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_notification:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->show_notification_btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 46
    :goto_0
    iget-boolean v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_sound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_sound_btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 49
    :goto_1
    iget-boolean v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_vibration:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_vibration_btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 52
    :goto_2
    iget-boolean v0, p0, Lcom/skipping/Activity_notification_prefs;->turn_on_screen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->turn_on_screen_btn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 57
    :goto_3
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->show_notification_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_sound_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->reminder_vibration_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/skipping/Activity_notification_prefs;->turn_on_screen_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public reminder_sound(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    iget-boolean v1, p0, Lcom/skipping/Activity_notification_prefs;->reminder_sound:Z

    if-eqz v1, :cond_0

    .line 95
    iput-boolean v3, p0, Lcom/skipping/Activity_notification_prefs;->reminder_sound:Z

    .line 97
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->reminder_sound_btn:Landroid/widget/Button;

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 99
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_sound"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    :goto_0
    return-void

    .line 104
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iput-boolean v4, p0, Lcom/skipping/Activity_notification_prefs;->reminder_sound:Z

    .line 106
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->reminder_sound_btn:Landroid/widget/Button;

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 108
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_sound"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public reminder_vibration(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    iget-boolean v1, p0, Lcom/skipping/Activity_notification_prefs;->reminder_vibration:Z

    if-eqz v1, :cond_0

    .line 121
    iput-boolean v3, p0, Lcom/skipping/Activity_notification_prefs;->reminder_vibration:Z

    .line 123
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->reminder_vibration_btn:Landroid/widget/Button;

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 125
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_vibration"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    :goto_0
    return-void

    .line 130
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iput-boolean v4, p0, Lcom/skipping/Activity_notification_prefs;->reminder_vibration:Z

    .line 132
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->reminder_vibration_btn:Landroid/widget/Button;

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 134
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_vibration"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public show_notification(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    iget-boolean v1, p0, Lcom/skipping/Activity_notification_prefs;->reminder_notification:Z

    if-eqz v1, :cond_0

    .line 70
    iput-boolean v3, p0, Lcom/skipping/Activity_notification_prefs;->reminder_notification:Z

    .line 72
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->show_notification_btn:Landroid/widget/Button;

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 74
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_notification"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    :goto_0
    return-void

    .line 79
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iput-boolean v4, p0, Lcom/skipping/Activity_notification_prefs;->reminder_notification:Z

    .line 81
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->show_notification_btn:Landroid/widget/Button;

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 83
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminder_notification"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public turn_on_screen(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    iget-boolean v1, p0, Lcom/skipping/Activity_notification_prefs;->turn_on_screen:Z

    if-eqz v1, :cond_0

    .line 144
    iput-boolean v3, p0, Lcom/skipping/Activity_notification_prefs;->turn_on_screen:Z

    .line 146
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->turn_on_screen_btn:Landroid/widget/Button;

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 148
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "turn_on_screen"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    :goto_0
    return-void

    .line 152
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iput-boolean v4, p0, Lcom/skipping/Activity_notification_prefs;->turn_on_screen:Z

    .line 154
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->turn_on_screen_btn:Landroid/widget/Button;

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 156
    iget-object v1, p0, Lcom/skipping/Activity_notification_prefs;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "turn_on_screen"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
