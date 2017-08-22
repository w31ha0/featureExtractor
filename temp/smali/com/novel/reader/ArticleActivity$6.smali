.class Lcom/novel/reader/ArticleActivity$6;
.super Ljava/lang/Object;
.source "ArticleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/ArticleActivity;->showModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/ArticleActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/ArticleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/ArticleActivity;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 509
    packed-switch p2, :pswitch_data_0

    .line 529
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 530
    return-void

    .line 511
    :pswitch_0
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$1100(Lcom/novel/reader/ArticleActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v2, "SunModeSetting"

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2, v3}, Lcom/novel/reader/util/Setting;->getBackgroundModeBackgroundColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 512
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$700(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "SunModeSetting"

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2, v3}, Lcom/novel/reader/util/Setting;->getBackgroundModeTextColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    const-string v2, "SunModeSetting"

    invoke-static {v1, v2}, Lcom/novel/reader/ArticleActivity;->access$1202(Lcom/novel/reader/ArticleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 514
    const-string v1, "ModeSetting"

    const-string v2, "SunModeSetting"

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1, v2, v3}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 515
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$1300(Lcom/novel/reader/ArticleActivity;)V

    goto :goto_0

    .line 518
    :pswitch_1
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$1100(Lcom/novel/reader/ArticleActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v2, "MoonModeSetting"

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2, v3}, Lcom/novel/reader/util/Setting;->getBackgroundModeBackgroundColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 519
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$700(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "MoonModeSetting"

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v2, v3}, Lcom/novel/reader/util/Setting;->getBackgroundModeTextColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    const-string v2, "MoonModeSetting"

    invoke-static {v1, v2}, Lcom/novel/reader/ArticleActivity;->access$1202(Lcom/novel/reader/ArticleActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    const-string v1, "ModeSetting"

    const-string v2, "MoonModeSetting"

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1, v2, v3}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 522
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$1300(Lcom/novel/reader/ArticleActivity;)V

    goto :goto_0

    .line 525
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    const-class v2, Lcom/novel/reader/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$6;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-virtual {v1, v0}, Lcom/novel/reader/ArticleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
