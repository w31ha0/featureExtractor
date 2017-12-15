.class final Lcom/creativemobi/DragRacing/menus/j;
.super Ljava/lang/Object;
.source "MainMenu.java"

# interfaces
.implements Lcom/tapjoy/g;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/creativemobi/DragRacing/menus/h;


# direct methods
.method constructor <init>(Lcom/creativemobi/DragRacing/menus/h;I)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/creativemobi/DragRacing/menus/j;->b:Lcom/creativemobi/DragRacing/menus/h;

    iput p2, p0, Lcom/creativemobi/DragRacing/menus/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 177
    const-string v0, "TapJoy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/DragRacing/menus/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/j;->b:Lcom/creativemobi/DragRacing/menus/h;

    iget-object v0, v0, Lcom/creativemobi/DragRacing/menus/h;->a:Lcom/creativemobi/DragRacing/menus/MainMenu;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/DragRacing/menus/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RP!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/creativemobi/DragRacing/menus/j;->b:Lcom/creativemobi/DragRacing/menus/h;

    iget-object v0, v0, Lcom/creativemobi/DragRacing/menus/h;->a:Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-static {v0}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Lcom/creativemobi/DragRacing/menus/MainMenu;)Lcom/creativemobi/engine/bp;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/DragRacing/menus/j;->a:I

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/bp;->f(I)V

    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->a:Z

    .line 181
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 172
    const-string v0, "TapJoy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to spend points: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method
