.class public Lcom/rainbow/FMaj/LkyDlg;
.super Landroid/app/Dialog;
.source "LkyDlg.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/rainbow/FMaj/LkyDlg;->setCancelable(Z)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/rainbow/FMaj/LkyDlg;->setCanceledOnTouchOutside(Z)V

    .line 14
    return-void
.end method


# virtual methods
.method public Msg(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/rainbow/FMaj/LkyDlg;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p0}, Lcom/rainbow/FMaj/LkyDlg;->show()V

    .line 27
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/rainbow/FMaj/LkyDlg;->dismiss()V

    .line 20
    const/4 v0, 0x1

    return v0
.end method
