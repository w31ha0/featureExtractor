.class final Lcom/creativemobi/engine/q;
.super Ljava/lang/Object;
.source "RaceOnlineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/ab;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/ab;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/creativemobi/engine/q;->a:Lcom/creativemobi/engine/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/creativemobi/engine/q;->a:Lcom/creativemobi/engine/ab;

    iget-object v0, v0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->showDialog(I)V

    .line 120
    return-void
.end method
