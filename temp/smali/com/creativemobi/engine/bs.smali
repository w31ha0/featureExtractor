.class final Lcom/creativemobi/engine/bs;
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
    .line 139
    iput-object p1, p0, Lcom/creativemobi/engine/bs;->a:Lcom/creativemobi/engine/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/creativemobi/engine/cd;)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/creativemobi/engine/bs;->a:Lcom/creativemobi/engine/bg;

    iget-object v0, v0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/bk;

    invoke-direct {v1}, Lcom/creativemobi/engine/bk;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 143
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(I)V

    .line 144
    return-void
.end method
