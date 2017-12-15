.class final Lcom/creativemobi/DragRacing/menus/i;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/menus/e;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/menus/e;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/creativemobi/DragRacing/menus/i;->a:Lcom/creativemobi/DragRacing/menus/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/i;->a:Lcom/creativemobi/DragRacing/menus/e;

    iget-object v0, v0, Lcom/creativemobi/DragRacing/menus/e;->a:Landroid/app/Dialog;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 590
    return-void
.end method
