.class Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;
.super Ljava/lang/Object;
.source "AdvancedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/AdvancedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "clicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/AdvancedActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/AdvancedActivity;Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;-><init>(Lcom/tutusw/phonespeedup/AdvancedActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/tutusw/phonespeedup/AdvancedActivity;->access$0(Lcom/tutusw/phonespeedup/AdvancedActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    invoke-static {v2}, Lcom/tutusw/phonespeedup/AdvancedActivity;->access$1(Lcom/tutusw/phonespeedup/AdvancedActivity;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    invoke-static {v2}, Lcom/tutusw/phonespeedup/AdvancedActivity;->access$2(Lcom/tutusw/phonespeedup/AdvancedActivity;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->advancedApply:Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object v1, v2

    if-ne v0, v1, :cond_4

    .line 179
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate_edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 180
    .local v3, "sampling_rate_final":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->up_threshold_edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 181
    .local v5, "up_threshold_final":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->ignore_nice_load_edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 183
    .local v6, "ignore_nice_load_final":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    const-string v7, "conservative"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->freq_step_edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 185
    .local v7, "freq_step_final":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->down_threshold_edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 186
    .local v8, "down_threshold_final":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    const/4 v2, 0x2

    move/from16 v0, v16

    move v1, v2

    if-lt v0, v1, :cond_1

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "freq_step"

    invoke-interface {v2, v9, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "down_threshold"

    .end local v7    # "freq_step_final":I
    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 201
    .end local v8    # "down_threshold_final":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "sampling_rate_long"

    invoke-interface {v2, v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "up_threshold"

    .end local v3    # "sampling_rate_final":J
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "ignore_nice_load"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    .end local v5    # "up_threshold_final":I
    .end local v6    # "ignore_nice_load_final":I
    .end local v16    # "i":I
    :cond_0
    :goto_2
    return-void

    .line 187
    .restart local v3    # "sampling_rate_final":J
    .restart local v5    # "up_threshold_final":I
    .restart local v6    # "ignore_nice_load_final":I
    .restart local v7    # "freq_step_final":I
    .restart local v8    # "down_threshold_final":I
    .restart local v16    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    invoke-static/range {v2 .. v8}, Lcom/tutusw/phonespeedup/AdvancedActivity;->access$3(Lcom/tutusw/phonespeedup/AdvancedActivity;JIIII)Z

    .line 186
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 194
    .end local v7    # "freq_step_final":I
    .end local v8    # "down_threshold_final":I
    .end local v16    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->powersave_bias_edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 195
    .local v14, "powersave_bias_final":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_3
    const/4 v2, 0x2

    move/from16 v0, v16

    move v1, v2

    if-lt v0, v1, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "powersave_bias"

    invoke-interface {v2, v7, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    .end local v3    # "sampling_rate_final":J
    .end local v5    # "up_threshold_final":I
    .end local v6    # "ignore_nice_load_final":I
    .end local v14    # "powersave_bias_final":I
    .end local v16    # "i":I
    :catch_0
    move-exception v2

    move-object v15, v2

    .line 209
    .local v15, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    const-string v3, "\u8bf7\u4f7f\u7528\u6574\u6570\u6570\u503c\u8fdb\u884c\u8bbe\u7f6e\u3002"

    invoke-static {v2, v3}, Lcom/tutusw/phonespeedup/AdvancedActivity;->access$5(Lcom/tutusw/phonespeedup/AdvancedActivity;Ljava/lang/String;)V

    goto :goto_2

    .line 196
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v3    # "sampling_rate_final":J
    .restart local v5    # "up_threshold_final":I
    .restart local v6    # "ignore_nice_load_final":I
    .restart local v14    # "powersave_bias_final":I
    .restart local v16    # "i":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v9, v0

    move-wide v10, v3

    move v12, v5

    move v13, v6

    invoke-static/range {v9 .. v14}, Lcom/tutusw/phonespeedup/AdvancedActivity;->access$4(Lcom/tutusw/phonespeedup/AdvancedActivity;JIII)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 212
    .end local v3    # "sampling_rate_final":J
    .end local v5    # "up_threshold_final":I
    .end local v6    # "ignore_nice_load_final":I
    .end local v14    # "powersave_bias_final":I
    .end local v16    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->advancedBoot:Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object v1, v2

    if-ne v0, v1, :cond_0

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "advancedBoot"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v4, v0

    iget-object v4, v4, Lcom/tutusw/phonespeedup/AdvancedActivity;->advancedBoot:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;->this$0:Lcom/tutusw/phonespeedup/AdvancedActivity;

    move-object v2, v0

    iget-object v2, v2, Lcom/tutusw/phonespeedup/AdvancedActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method
