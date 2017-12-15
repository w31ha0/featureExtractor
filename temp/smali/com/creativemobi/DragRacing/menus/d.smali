.class final Lcom/creativemobi/DragRacing/menus/d;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    .prologue
    .line 665
    iput-boolean p1, p0, Lcom/creativemobi/DragRacing/menus/d;->a:Z

    iput p2, p0, Lcom/creativemobi/DragRacing/menus/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 667
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->d()Lcom/google/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->d()Lcom/google/ads/AdView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/creativemobi/DragRacing/menus/d;->a:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/creativemobi/DragRacing/menus/d;->b:I

    if-nez v1, :cond_3

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 670
    :cond_0
    iget-boolean v0, p0, Lcom/creativemobi/DragRacing/menus/d;->a:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/creativemobi/DragRacing/menus/d;->b:I

    if-ne v0, v5, :cond_4

    sget-wide v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 671
    invoke-static {}, Lcom/tapjoy/r;->a()Lcom/tapjoy/r;

    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->d:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v0}, Lcom/tapjoy/r;->a(Lcom/tapjoy/m;)V

    .line 672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    sput-wide v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->c:J

    .line 675
    :cond_1
    :goto_1
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->e()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/creativemobi/DragRacing/menus/d;->a:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/creativemobi/DragRacing/menus/d;->b:I

    if-ne v1, v5, :cond_5

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_2
    return-void

    :cond_3
    move v1, v6

    .line 668
    goto :goto_0

    .line 674
    :cond_4
    iget-boolean v0, p0, Lcom/creativemobi/DragRacing/menus/d;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->c:J

    goto :goto_1

    :cond_5
    move v1, v6

    .line 675
    goto :goto_2
.end method
