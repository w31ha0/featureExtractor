.class final Lcom/creativemobi/engine/bt;
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
    .line 126
    iput-object p1, p0, Lcom/creativemobi/engine/bt;->a:Lcom/creativemobi/engine/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/creativemobi/engine/cd;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    sput-boolean v3, Lcom/creativemobi/DragRacing/menus/MainMenu;->a:Z

    .line 130
    iget-object v0, p0, Lcom/creativemobi/engine/bt;->a:Lcom/creativemobi/engine/bg;

    iget-object v0, v0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ba;

    invoke-direct {v1}, Lcom/creativemobi/engine/ba;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 131
    invoke-static {v3}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(I)V

    .line 133
    return-void
.end method
