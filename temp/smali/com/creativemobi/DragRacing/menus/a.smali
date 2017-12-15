.class final Lcom/creativemobi/DragRacing/menus/a;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/creativemobi/DragRacing/menus/MainMenu;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/creativemobi/DragRacing/menus/a;->b:Lcom/creativemobi/DragRacing/menus/MainMenu;

    iput-object p2, p0, Lcom/creativemobi/DragRacing/menus/a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 689
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->f()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 690
    :cond_0
    sget v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/a;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    :cond_1
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->f()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/DragRacing/menus/a;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/creativemobi/DragRacing/menus/a;->b:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v2}, Lcom/creativemobi/DragRacing/menus/MainMenu;->c(Lcom/creativemobi/DragRacing/menus/MainMenu;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/a;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Landroid/view/View;)Landroid/view/View;

    .line 693
    return-void
.end method
