.class Lcom/novel/reader/SettingActivity$13;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/SettingActivity;->setFinishDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/SettingActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 325
    const-string v0, "TextSize"

    iget-object v1, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v1}, Lcom/novel/reader/SettingActivity;->access$1400(Lcom/novel/reader/SettingActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v0, v1, v2}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    .line 326
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v0}, Lcom/novel/reader/SettingActivity;->access$1500(Lcom/novel/reader/SettingActivity;)V

    .line 327
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v0}, Lcom/novel/reader/SettingActivity;->access$1600(Lcom/novel/reader/SettingActivity;)V

    .line 328
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    iget-object v1, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v1}, Lcom/novel/reader/SettingActivity;->access$1700(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    const-string v2, "TextLanguage"

    invoke-static {v0, v1, v2}, Lcom/novel/reader/SettingActivity;->access$1800(Lcom/novel/reader/SettingActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    iget-object v1, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v1}, Lcom/novel/reader/SettingActivity;->access$1900(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    const-string v2, "ReadingDirections"

    invoke-static {v0, v1, v2}, Lcom/novel/reader/SettingActivity;->access$1800(Lcom/novel/reader/SettingActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    iget-object v1, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v1}, Lcom/novel/reader/SettingActivity;->access$2000(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    const-string v2, "ClickToNextPage"

    invoke-static {v0, v1, v2}, Lcom/novel/reader/SettingActivity;->access$1800(Lcom/novel/reader/SettingActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    iget-object v1, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v1}, Lcom/novel/reader/SettingActivity;->access$2100(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    const-string v2, "StopSleeping"

    invoke-static {v0, v1, v2}, Lcom/novel/reader/SettingActivity;->access$1800(Lcom/novel/reader/SettingActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    iget-object v1, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v1}, Lcom/novel/reader/SettingActivity;->access$2200(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    const-string v2, "ArticleAdType"

    invoke-static {v0, v1, v2}, Lcom/novel/reader/SettingActivity;->access$1800(Lcom/novel/reader/SettingActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    iget-object v1, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-static {v1}, Lcom/novel/reader/SettingActivity;->access$2300(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;

    move-result-object v1

    const-string v2, "AudioClickToNextPage"

    invoke-static {v0, v1, v2}, Lcom/novel/reader/SettingActivity;->access$1800(Lcom/novel/reader/SettingActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/novel/reader/SettingActivity$13;->this$0:Lcom/novel/reader/SettingActivity;

    invoke-virtual {v0}, Lcom/novel/reader/SettingActivity;->finish()V

    .line 336
    return-void
.end method
