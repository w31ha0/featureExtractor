.class Lcom/wordloco/wordchallenge/view/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$Callback;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/ShareDialog;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/ShareDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/an;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 296
    invoke-static {p2}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    .line 297
    return-void
.end method
