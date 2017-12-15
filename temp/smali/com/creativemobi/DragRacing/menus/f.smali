.class final Lcom/creativemobi/DragRacing/menus/f;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/menus/MainMenu;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/menus/MainMenu;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/creativemobi/DragRacing/menus/f;->a:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/f;->a:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->dismissDialog(I)V

    .line 428
    return-void
.end method
