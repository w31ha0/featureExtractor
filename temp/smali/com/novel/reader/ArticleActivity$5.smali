.class Lcom/novel/reader/ArticleActivity$5;
.super Ljava/lang/Object;
.source "ArticleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/ArticleActivity;->showFontSizeDialog()V
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
    .line 472
    iput-object p1, p0, Lcom/novel/reader/ArticleActivity$5;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 476
    packed-switch p2, :pswitch_data_0

    .line 494
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 495
    return-void

    .line 478
    :pswitch_0
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$5;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$700(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 479
    const-string v1, "TextSize"

    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$5;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1, v2, v3}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    .line 482
    :pswitch_1
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$5;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$700(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 483
    const-string v1, "TextSize"

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$5;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1, v2, v3}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$5;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1}, Lcom/novel/reader/ArticleActivity;->access$700(Lcom/novel/reader/ArticleActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 487
    const-string v1, "TextSize"

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/novel/reader/ArticleActivity$5;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-static {v1, v2, v3}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    .line 490
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$5;->this$0:Lcom/novel/reader/ArticleActivity;

    const-class v2, Lcom/novel/reader/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/novel/reader/ArticleActivity$5;->this$0:Lcom/novel/reader/ArticleActivity;

    invoke-virtual {v1, v0}, Lcom/novel/reader/ArticleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
