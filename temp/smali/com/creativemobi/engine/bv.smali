.class final Lcom/creativemobi/engine/bv;
.super Ljava/lang/Object;
.source "MainMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/bg;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/bg;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/creativemobi/engine/bv;->a:Lcom/creativemobi/engine/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    .line 95
    return-void
.end method
