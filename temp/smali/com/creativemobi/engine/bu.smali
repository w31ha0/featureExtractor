.class final Lcom/creativemobi/engine/bu;
.super Ljava/lang/Object;
.source "MainMenuView.java"

# interfaces
.implements Lcom/creativemobi/engine/br;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/bg;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/bg;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/creativemobi/engine/bu;->a:Lcom/creativemobi/engine/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/creativemobi/engine/cd;)V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/creativemobi/engine/bu;->a:Lcom/creativemobi/engine/bg;

    iget-object v0, v0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.facebook.com/DragRacingGame"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method
