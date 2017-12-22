.class public Lcom/netflix/mediaclient/android/widget/PromptListener;
.super Ljava/lang/Object;
.source "PromptListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private promptDialogView:Landroid/view/View;

.field private promptEditTextControlId:I

.field private promptValue:Ljava/lang/String;

.field private result:Lcom/netflix/mediaclient/android/widget/PromptResult;


# direct methods
.method public constructor <init>(Landroid/view/View;ILjava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/android/widget/PromptResult;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Dialog view is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptDialogView:Landroid/view/View;

    .line 53
    iput p4, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptEditTextControlId:I

    .line 54
    iput-object p6, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->result:Lcom/netflix/mediaclient/android/widget/PromptResult;

    .line 56
    if-nez p5, :cond_1

    .line 57
    const-string/jumbo p5, ""

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptDialogView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 61
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptDialogView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    if-eqz v0, :cond_4

    .line 67
    if-nez p3, :cond_3

    .line 68
    const-string/jumbo p3, ""

    .line 70
    :cond_3
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_4
    return-void
.end method

.method private getPromptText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptDialogView:Landroid/view/View;

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptEditTextControlId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getPromptValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptValue:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 80
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->result:Lcom/netflix/mediaclient/android/widget/PromptResult;

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/PromptListener;->getPromptText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/android/widget/PromptResult;->confirm(Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->result:Lcom/netflix/mediaclient/android/widget/PromptResult;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/PromptResult;->cancel()V

    goto :goto_0
.end method
