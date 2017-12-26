.class Lcom/skipping/NotificationActivity$2;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/NotificationActivity;

.field private final synthetic val$Workout1:Z

.field private final synthetic val$day:I

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/skipping/NotificationActivity;IZLandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iput p2, p0, Lcom/skipping/NotificationActivity$2;->val$day:I

    iput-boolean p3, p0, Lcom/skipping/NotificationActivity$2;->val$Workout1:Z

    iput-object p4, p0, Lcom/skipping/NotificationActivity$2;->val$dialog:Landroid/app/Dialog;

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xa

    .line 1142
    iget v1, p0, Lcom/skipping/NotificationActivity$2;->val$day:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 1143
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity$2;->val$Workout1:Z

    if-eqz v1, :cond_3

    .line 1144
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    .line 1145
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    .line 1147
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1148
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "MondayWorkout1Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1149
    const-string v1, "MondayWorkout1Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1152
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->monday_time_workout_1:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    if-ge v1, v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    if-ge v1, v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1298
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1300
    return-void

    .line 1152
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->MondayWorkout1Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->MondayWorkout1Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 1154
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    .line 1155
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    .line 1157
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1158
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "MondayWorkout2Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1159
    const-string v1, "MondayWorkout2Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1162
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->monday_time_workout_2:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    if-ge v1, v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    if-ge v1, v5, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->MondayWorkout2Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->MondayWorkout2Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    .line 1164
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    iget v1, p0, Lcom/skipping/NotificationActivity$2;->val$day:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 1165
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity$2;->val$Workout1:Z

    if-eqz v1, :cond_9

    .line 1166
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    .line 1167
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    .line 1169
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1170
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TuesdayWorkout1Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1171
    const-string v1, "TuesdayWorkout1Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1174
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->tuesday_time_workout_1:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    if-ge v1, v5, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    if-ge v1, v5, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout1Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    .line 1176
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_9
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    .line 1177
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    .line 1179
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1180
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TuesdayWorkout2Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1181
    const-string v1, "TuesdayWorkout2Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1184
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->tuesday_time_workout_2:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    if-ge v1, v5, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    if-ge v1, v5, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->TuesdayWorkout2Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8

    .line 1186
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_c
    iget v1, p0, Lcom/skipping/NotificationActivity$2;->val$day:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    .line 1187
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity$2;->val$Workout1:Z

    if-eqz v1, :cond_f

    .line 1188
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    .line 1189
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    .line 1191
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1192
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "WednesdayWorkout1Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1193
    const-string v1, "WednesdayWorkout1Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1196
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->wednesday_time_workout_1:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    if-ge v1, v5, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    if-ge v1, v5, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout1Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    .line 1198
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_f
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    .line 1199
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    .line 1201
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1202
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "WednesdayWorkout2Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1203
    const-string v1, "WednesdayWorkout2Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1206
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->wednesday_time_workout_2:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    if-ge v1, v5, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    if-ge v1, v5, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    :cond_11
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->WednesdayWorkout2Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_c

    .line 1208
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_12
    iget v1, p0, Lcom/skipping/NotificationActivity$2;->val$day:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_18

    .line 1209
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity$2;->val$Workout1:Z

    if-eqz v1, :cond_15

    .line 1210
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    .line 1211
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    .line 1213
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1214
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ThursdayWorkout1Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1215
    const-string v1, "ThursdayWorkout1Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1218
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->thursday_time_workout_1:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    if-ge v1, v5, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    if-ge v1, v5, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_13
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_d

    :cond_14
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout1Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_e

    .line 1220
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_15
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    .line 1221
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    .line 1223
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1224
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ThursdayWorkout2Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1225
    const-string v1, "ThursdayWorkout2Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1228
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->thursday_time_workout_2:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    if-ge v1, v5, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    if-ge v1, v5, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_16
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_f

    :cond_17
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->ThursdayWorkout2Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10

    .line 1230
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_18
    iget v1, p0, Lcom/skipping/NotificationActivity$2;->val$day:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1e

    .line 1231
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity$2;->val$Workout1:Z

    if-eqz v1, :cond_1b

    .line 1232
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    .line 1233
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    .line 1235
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1236
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "FridayWorkout1Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1237
    const-string v1, "FridayWorkout1Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1238
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1240
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->friday_time_workout_1:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    if-ge v1, v5, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    if-ge v1, v5, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_19
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->FridayWorkout1Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_11

    :cond_1a
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->FridayWorkout1Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_12

    .line 1242
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1b
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    .line 1243
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    .line 1245
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1246
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "FridayWorkout2Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1247
    const-string v1, "FridayWorkout2Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1250
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->friday_time_workout_2:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    if-ge v1, v5, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    if-ge v1, v5, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1c
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->FridayWorkout2Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_13

    :cond_1d
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->FridayWorkout2Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_14

    .line 1252
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1e
    iget v1, p0, Lcom/skipping/NotificationActivity$2;->val$day:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_24

    .line 1253
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity$2;->val$Workout1:Z

    if-eqz v1, :cond_21

    .line 1254
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    .line 1255
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    .line 1257
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1258
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "SaturdayWorkout1Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1259
    const-string v1, "SaturdayWorkout1Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1260
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1262
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->saturday_time_workout_1:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    if-ge v1, v5, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    if-ge v1, v5, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1f
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_15

    :cond_20
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout1Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_16

    .line 1264
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_21
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    .line 1265
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    .line 1267
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1268
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "SaturdayWorkout2Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1269
    const-string v1, "SaturdayWorkout2Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1272
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->saturday_time_workout_2:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    if-ge v1, v5, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    if-ge v1, v5, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_22
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_17

    :cond_23
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SaturdayWorkout2Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_18

    .line 1274
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_24
    iget v1, p0, Lcom/skipping/NotificationActivity$2;->val$day:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1275
    iget-boolean v1, p0, Lcom/skipping/NotificationActivity$2;->val$Workout1:Z

    if-eqz v1, :cond_27

    .line 1276
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    .line 1277
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    .line 1279
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1280
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "SundayWorkout1Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1281
    const-string v1, "SundayWorkout1Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1284
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->sunday_time_workout_1:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    if-ge v1, v5, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    if-ge v1, v5, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_25
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SundayWorkout1Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_19

    :cond_26
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SundayWorkout1Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1a

    .line 1286
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_27
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Minute:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    .line 1287
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->Hour:I

    iput v2, v1, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    .line 1289
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    invoke-static {v1}, Lcom/skipping/NotificationActivity;->access$0(Lcom/skipping/NotificationActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1290
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "SundayWorkout2Minute"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1291
    const-string v1, "SundayWorkout2Hour"

    iget-object v2, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v2, v2, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1294
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v2, v1, Lcom/skipping/NotificationActivity;->sunday_time_workout_2:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    if-ge v1, v5, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    if-ge v1, v5, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v4, v4, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_28
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SundayWorkout2Hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1b

    :cond_29
    iget-object v1, p0, Lcom/skipping/NotificationActivity$2;->this$0:Lcom/skipping/NotificationActivity;

    iget v1, v1, Lcom/skipping/NotificationActivity;->SundayWorkout2Minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1c
.end method
