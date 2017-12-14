.class Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/ProfileEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Clicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;-><init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->buttonClose:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->finish()V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->saveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 222
    const/4 v8, 0x0

    .line 224
    .local v8, "warning":I
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->row_id:I

    if-ltz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget v1, v1, Lcom/tutusw/phonespeedup/ProfileEditActivity;->row_id:I

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/DBHelper;->deleteById(I)V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    .line 230
    .local v7, "param":I
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionPosition:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 231
    mul-int/lit8 v7, v7, 0xa

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->checkWarning:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    const/4 v8, 0x1

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/ProfileEditActivity;->prioritySeek:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 238
    const/4 v2, 0x1

    .line 239
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 240
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v4, v4, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v5, v5, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    aget v4, v4, v5

    .line 241
    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v5, v5, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    iget-object v6, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v6, v6, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    aget v5, v5, v6

    .line 242
    iget-object v6, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v6, v6, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governors:[Ljava/lang/String;

    iget-object v9, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v9, v9, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governorSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    aget-object v6, v6, v9

    .line 245
    const/4 v9, 0x0

    .line 237
    invoke-virtual/range {v0 .. v9}, Lcom/tutusw/phonespeedup/DBHelper;->insert(IIIIILjava/lang/String;III)V

    .line 247
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "profileFailsafeInterval"

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshInterval:[I

    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 248
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->finish()V

    goto/16 :goto_0

    .line 252
    .end local v7    # "param":I
    .end local v8    # "warning":I
    :cond_5
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->deleteButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget v1, v1, Lcom/tutusw/phonespeedup/ProfileEditActivity;->row_id:I

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/DBHelper;->deleteById(I)V

    .line 254
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->finish()V

    goto/16 :goto_0
.end method
