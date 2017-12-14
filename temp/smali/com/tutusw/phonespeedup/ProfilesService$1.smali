.class Lcom/tutusw/phonespeedup/ProfilesService$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfilesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/ProfilesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/ProfilesService;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/ProfilesService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->action:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->action:Ljava/lang/String;

    const-string v1, "Speedup.intent.action.refreshservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/ProfilesService;->access$0(Lcom/tutusw/phonespeedup/ProfilesService;)V

    .line 68
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput-boolean v4, v0, Lcom/tutusw/phonespeedup/ProfilesService;->normalProfile:Z

    .line 73
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    :goto_2
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-boolean v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->normalProfile:Z

    if-eqz v0, :cond_11

    .line 141
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentId:I

    .line 142
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->settings:Landroid/content/SharedPreferences;

    const-string v2, "max"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentMax:I

    .line 143
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->settings:Landroid/content/SharedPreferences;

    const-string v2, "min"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentMin:I

    .line 144
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->settings:Landroid/content/SharedPreferences;

    const-string v2, "stringGovernor"

    const-string v3, "ondemand"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentGovernor:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->currentGovernor:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/ProfilesService;->access$3(Lcom/tutusw/phonespeedup/ProfilesService;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->currentMax:I

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v2, v2, Lcom/tutusw/phonespeedup/ProfilesService;->currentMin:I

    invoke-static {v0, v1, v2}, Lcom/tutusw/phonespeedup/ProfilesService;->access$4(Lcom/tutusw/phonespeedup/ProfilesService;II)V

    .line 148
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 176
    :goto_3
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-boolean v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->notify:Z

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->nh:Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->currentId:I

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v2, v2, Lcom/tutusw/phonespeedup/ProfilesService;->currentMax:I

    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v3, v3, Lcom/tutusw/phonespeedup/ProfilesService;->currentMin:I

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v4, v4, Lcom/tutusw/phonespeedup/ProfilesService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->show(IIILjava/lang/String;)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "Speedup.intent.action.updatewidget"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/ProfilesService;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->action:Ljava/lang/String;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput-boolean v4, v0, Lcom/tutusw/phonespeedup/ProfilesService;->screenOff:Z

    .line 54
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput v3, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentIntent:I

    goto/16 :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->action:Ljava/lang/String;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput-boolean v3, v0, Lcom/tutusw/phonespeedup/ProfilesService;->screenOff:Z

    .line 58
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput v4, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentIntent:I

    goto/16 :goto_0

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->action:Ljava/lang/String;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    const-string v1, "status"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryStatus:I

    .line 62
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    const-string v1, "plugged"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryPlugged:I

    .line 63
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    const-string v1, "level"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryLevel:I

    .line 64
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    const-string v1, "temperature"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryTemp:I

    .line 65
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput v5, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentIntent:I

    goto/16 :goto_0

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    .line 77
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    if-nez v0, :cond_7

    .line 78
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryStatus:I

    if-eq v0, v4, :cond_6

    .line 79
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryStatus:I

    if-eq v0, v5, :cond_6

    .line 80
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryStatus:I

    if-ne v0, v6, :cond_10

    .line 81
    :cond_6
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput-boolean v3, v0, Lcom/tutusw/phonespeedup/ProfilesService;->normalProfile:Z

    goto/16 :goto_2

    .line 85
    :cond_7
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    if-ne v0, v4, :cond_9

    .line 86
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryPlugged:I

    if-eq v0, v4, :cond_8

    .line 87
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryStatus:I

    if-ne v0, v6, :cond_10

    .line 88
    :cond_8
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryPlugged:I

    if-eq v0, v5, :cond_10

    .line 89
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput-boolean v3, v0, Lcom/tutusw/phonespeedup/ProfilesService;->normalProfile:Z

    goto/16 :goto_2

    .line 93
    :cond_9
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    if-ne v0, v5, :cond_b

    .line 94
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryPlugged:I

    if-eq v0, v5, :cond_a

    .line 95
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryStatus:I

    if-ne v0, v6, :cond_10

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryPlugged:I

    if-eq v0, v4, :cond_10

    .line 97
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput-boolean v3, v0, Lcom/tutusw/phonespeedup/ProfilesService;->normalProfile:Z

    goto/16 :goto_2

    .line 101
    :cond_b
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 102
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->batteryLevel:I

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 103
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput-boolean v3, v0, Lcom/tutusw/phonespeedup/ProfilesService;->normalProfile:Z

    goto/16 :goto_2

    .line 108
    :cond_c
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    if-ne v0, v6, :cond_d

    .line 109
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->batteryTemp:I

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->temp:I

    .line 110
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->temp:I

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-le v0, v1, :cond_10

    .line 111
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput-boolean v3, v0, Lcom/tutusw/phonespeedup/ProfilesService;->normalProfile:Z

    goto/16 :goto_2

    .line 115
    :cond_d
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    .line 116
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    invoke-static {v1}, Lcom/tutusw/phonespeedup/ProfilesService;->access$1(Lcom/tutusw/phonespeedup/ProfilesService;)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->temp:I

    .line 117
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->failsafeTemp:I

    .line 119
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-boolean v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->timerEnabled:Z

    if-nez v0, :cond_e

    .line 120
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/ProfilesService;->access$2(Lcom/tutusw/phonespeedup/ProfilesService;)V

    .line 123
    :cond_e
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->temp:I

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->failsafeTemp:I

    if-le v0, v1, :cond_10

    .line 124
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput-boolean v3, v0, Lcom/tutusw/phonespeedup/ProfilesService;->normalProfile:Z

    goto/16 :goto_2

    .line 128
    :cond_f
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 129
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-boolean v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->screenOff:Z

    if-eqz v0, :cond_10

    .line 130
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iput-boolean v3, v0, Lcom/tutusw/phonespeedup/ProfilesService;->normalProfile:Z

    goto/16 :goto_2

    .line 134
    :cond_10
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 152
    :cond_11
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentId:I

    .line 153
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentMax:I

    .line 154
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentMin:I

    .line 155
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->currentGovernor:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->currentGovernor:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/ProfilesService;->access$3(Lcom/tutusw/phonespeedup/ProfilesService;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->currentMax:I

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v2, v2, Lcom/tutusw/phonespeedup/ProfilesService;->currentMin:I

    invoke-static {v0, v1, v2}, Lcom/tutusw/phonespeedup/ProfilesService;->access$4(Lcom/tutusw/phonespeedup/ProfilesService;II)V

    .line 160
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    if-eq v0, v6, :cond_12

    .line 161
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursorCheck:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 162
    :cond_12
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_14

    .line 166
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->nh:Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;

    if-nez v0, :cond_13

    .line 167
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    new-instance v1, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    invoke-direct {v1, v2}, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;-><init>(Lcom/tutusw/phonespeedup/ProfilesService;)V

    iput-object v1, v0, Lcom/tutusw/phonespeedup/ProfilesService;->nh:Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;

    .line 169
    :cond_13
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->nh:Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->temp:I

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;->showWarning(II)V

    goto/16 :goto_3

    .line 172
    :cond_14
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$1;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_3
.end method
