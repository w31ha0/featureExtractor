.class final Lcom/creativemobi/DragRacing/menus/b;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/creativemobi/DragRacing/menus/MainMenu;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/creativemobi/DragRacing/menus/b;->b:Lcom/creativemobi/DragRacing/menus/MainMenu;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/menus/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 516
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/b;->b:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Lcom/creativemobi/DragRacing/menus/MainMenu;)Lcom/creativemobi/engine/bp;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/bp;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 517
    return-void
.end method
