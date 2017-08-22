.class final Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;
.super Ljava/lang/Object;
.source "TWMAdActivity.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;


# direct methods
.method private constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    return-object v0
.end method


# virtual methods
.method public checkFloatAdPosition()I
    .locals 1

    .prologue
    .line 412
    const/4 v0, -0x1

    return v0
.end method

.method public closeWebView(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public disableCloseButton()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b$1;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$b;)V

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method
