.class final Lcom/creativemobi/engine/ca;
.super Ljava/lang/Object;
.source "RaceLobbyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/an;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/an;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/creativemobi/engine/ca;->a:Lcom/creativemobi/engine/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/creativemobi/engine/ca;->a:Lcom/creativemobi/engine/an;

    iget-object v0, v0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->showDialog(I)V

    .line 84
    return-void
.end method
