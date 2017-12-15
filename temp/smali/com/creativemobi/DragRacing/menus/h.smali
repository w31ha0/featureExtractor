.class final Lcom/creativemobi/DragRacing/menus/h;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Lcom/tapjoy/t;


# instance fields
.field final synthetic a:Lcom/creativemobi/DragRacing/menus/MainMenu;

.field private synthetic b:Z


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/menus/MainMenu;Z)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/creativemobi/DragRacing/menus/h;->a:Lcom/creativemobi/DragRacing/menus/MainMenu;

    iput-boolean p2, p0, Lcom/creativemobi/DragRacing/menus/h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 163
    if-gtz p1, :cond_1

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->a:Z

    .line 166
    iget-boolean v0, p0, Lcom/creativemobi/DragRacing/menus/h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/h;->a:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "No new bonuses to collect"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {}, Lcom/tapjoy/r;->a()Lcom/tapjoy/r;

    new-instance v0, Lcom/creativemobi/DragRacing/menus/j;

    invoke-direct {v0, p0, p1}, Lcom/creativemobi/DragRacing/menus/j;-><init>(Lcom/creativemobi/DragRacing/menus/h;I)V

    invoke-static {p1, v0}, Lcom/tapjoy/r;->a(ILcom/tapjoy/g;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 157
    const-string v0, "TapJoy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get points: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-boolean v0, p0, Lcom/creativemobi/DragRacing/menus/h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/h;->a:Lcom/creativemobi/DragRacing/menus/MainMenu;

    const-string v1, "Unable to retrieve bonuses, please check your connection and try again later"

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method
