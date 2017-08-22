.class Lc/InAppBrowser$1$4;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/InAppBrowser$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/InAppBrowser$1;


# direct methods
.method constructor <init>(Lc/InAppBrowser$1;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lc/InAppBrowser$1$4;->a:Lc/InAppBrowser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 393
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 394
    iget-object v0, p0, Lc/InAppBrowser$1$4;->a:Lc/InAppBrowser$1;

    iget-object v0, v0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v1, p0, Lc/InAppBrowser$1$4;->a:Lc/InAppBrowser$1;

    iget-object v1, v1, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v1}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/InAppBrowser;->a(Lc/InAppBrowser;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
